###
    X-Wing Card Browser
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
    Advanced search by Patrick Mischke
    https://github.com/patschke
###
exportObj = exports ? this

# Assumes cards.js has been loaded

TYPES = [ 'pilots', 'upgrades', 'ships' ]

byName = (a, b) ->
    if a.display_name
        a_name = a.display_name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '')
    else
        a_name = a.name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '')
    if b.display_name
        b_name = b.display_name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '')
    else
        b_name = b.name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '')
    if a_name < b_name
        -1
    else if b_name < a_name
        1
    else
        0

byPoints = (a, b) ->
    if a.data.points < b.data.points
        -1
    else if b.data.points < a.data.points
        1
    else
        byName a, b

String::capitalize = ->
    this.charAt(0).toUpperCase() + this.slice(1)

class exportObj.CardBrowser
    constructor: (args) ->
        # args
        @container = $ args.container

        # internals
        @currently_selected = null
        @language = exportObj.currentLanguage ? 'English'

        @prepareData()

        @setupUI()
        @setupHandlers()

        # @renderList @sort_selector.val()

    setupUI: () ->
        @container.append $.trim """
            <div class="container-fluid xwing-card-browser">
                <div class="row">
                    <div class="col-md-4">
                        <div class="card card-search-container">
                        <h5 class="card-title translated" defaultText="Card Search"></h5>
                            <div class="advanced-search-container">
                                <div class = "card search-container general-search-container">
                                    <h6 class="card-subtitle mb-3 text-muted version">General</h6>
                                    <label class = "text-search advanced-search-label">
                                    <strong class="translated" defaultText="Textsearch:"></strong>
                                        <input type="search" placeholder="#{exportObj.translate('ui', "Placeholder Textsearch Browser")}" class = "card-search-text">
                                    </label>
                                    <div class= "advanced-search-faction-selection-container">
                                        <label class = "advanced-search-label select-available-slots">
                                            <strong class="translated" defaultText="Factions:"></strong>
                                            <select class="advanced-search-selection faction-selection" multiple="1" data-placeholder="#{exportObj.translate('ui', "All factions")}"></select>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-point-selection-container">
                                        <strong class="translated" defaultText="Point costs:"></strong>
                                        <label class = "advanced-search-label set-minimum-points">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-point-cost advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-points">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-point-cost advanced-search-number-input" value="200" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-collection-container">
                                        <strong class="translated" defaultText="Owned copies:"></strong>
                                        <label class = "advanced-search-label set-minimum-owned-copies">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-owned-copies advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-owened-copies">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-owned-copies advanced-search-number-input" value="100" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-misc-container">
                                        <strong class="translated" defaultText="Misc:"></strong>
                                        <label class = "advanced-search-label toggle-unique">
                                            <input type="checkbox" class="unique-checkbox advanced-search-checkbox" /> <span class="translated" defaultText="Is unique"></span>
                                        </label>
                                        <label class = "advanced-search-label toggle-non-unique">
                                            <input type="checkbox" class="non-unique-checkbox advanced-search-checkbox" /> <span class="translated" defaultText="Is not unique"></span>
                                        </label>
                                        <label class = "advanced-search-label toggle-hyperspace">
                                            <input type="checkbox" class="hyperspace-checkbox advanced-search-checkbox" />  <span class="translated" defaultText="Hyperspace legal"></span>
                                        </label>
                                    </div>
                                </div>
                                <div class = "card search-container ship-search-container">
                                    <h6 class="card-subtitle mb-3 text-muted version translated" defaultText="Ships and Pilots"></h6>
                                    <div class = "advanced-search-slot-available-container">
                                        <label class = "advanced-search-label select-available-slots">
                                            <strong class="translated" defaultText="Slots:"></strong>
                                            <select class="advanced-search-selection slot-available-selection" multiple="1" data-placeholder="#{exportObj.translate('ui', "noXYselected", "slots")}"></select>
                                        </label>
                                        <br />
                                        <label class = "advanced-search-label toggle-unique">
                                            <input type="checkbox" class="duplicate-slots-checkbox advanced-search-checkbox" /> #{exportObj.translate('ui', "Has multiple of the chosen slots")}
                                        </label>
                                    </div>
                                    <div class = "advanced-search-actions-available-container">
                                        <label class = "advanced-search-label select-available-actions">
                                            <strong class="translated" defaultText="Actions:"></strong>
                                            <select class="advanced-search-selection action-available-selection" multiple="1" data-placeholder="#{exportObj.translate('ui', "noXYselected", "actions")}"></select>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-linkedactions-available-container">
                                        <label class = "advanced-search-label select-available-linkedactions">
                                            <strong class="translated" defaultText="Linked actions:"></strong>
                                            <select class="advanced-search-selection linkedaction-available-selection" multiple="1" data-placeholder="#{exportObj.translate('ui', "noXYselected", "actions")}"></select>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-ini-container">
                                        <strong class="translated" defaultText="Initiative:"></strong>
                                        <label class = "advanced-search-label set-minimum-ini">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-ini advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-ini">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-ini advanced-search-number-input" value="6" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-hull-container">
                                        <strong class="translated" defaultText="Hull:"></strong>
                                        <label class = "advanced-search-label set-minimum-hull">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-hull advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-hull">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-hull advanced-search-number-input" value="12" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-shields-container">
                                        <strong class="translated" defaultText="Shields:"></strong>
                                        <label class = "advanced-search-label set-minimum-shields">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-shields advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-shields">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-shields advanced-search-number-input" value="6" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-agility-container">
                                        <strong class="translated" defaultText="Agility:"></strong>
                                        <label class = "advanced-search-label set-minimum-agility">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-agility advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-agility">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-agility advanced-search-number-input" value="3" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-base-size-container">
                                        <strong class="translated" defaultText="Base size:"></strong>
                                        <label class = "advanced-search-label toggle-small-base">
                                            <input type="checkbox" class="small-base-checkbox advanced-search-checkbox" checked="checked"/> <span class="translated" defaultText="Small"></span>
                                        </label>
                                        <label class = "advanced-search-label toggle-medium-base">
                                            <input type="checkbox" class="medium-base-checkbox advanced-search-checkbox" checked="checked"/> <span class="translated" defaultText="Medium"></span>
                                        </label>
                                        <label class = "advanced-search-label toggle-large-base">
                                            <input type="checkbox" class="large-base-checkbox advanced-search-checkbox" checked="checked"/> <span class="translated" defaultText="Large"></span>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attack-container">
                                        <strong><i class="xwing-miniatures-font xwing-miniatures-font-frontarc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attack">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-attack advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attack">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-attack advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackt-container">
                                        <strong><i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackt">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-attackt advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackt">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-attackt advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackdt-container">
                                        <strong><i class="xwing-miniatures-font xwing-miniatures-font-doubleturretarc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackdt">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-attackdt advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackdt">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-attackdt advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackf-container">
                                        <strong><i class="xwing-miniatures-font xwing-miniatures-font-fullfrontarc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackf">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-attackf advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackf">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-attackf advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackb-container">
                                        <strong><i class="xwing-miniatures-font xwing-miniatures-font-reararc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackb">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-attackb advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackb">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-attackb advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackbull-container">
                                        <strong><i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackbull">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-attackbull advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackbull">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-attackbull advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                </div>
                                <div class = "card search-container other-stuff-search-container">
                                    <h6 class="card-subtitle mb-3 text-muted version translated" defaultText="Other Stuff"></h6>
                                    <div class = "advanced-search-slot-used-container">
                                        <label class = "advanced-search-label select-used-slots">
                                            <strong class="translated" defaultText="Used slot:"></strong>
                                            <select class="advanced-search-selection slot-used-selection" multiple="1" data-placeholder="#{exportObj.translate('ui', "noXYselected", "slots")}"></select>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-slot-used-second-slot-container">
                                        <label class = "advanced-search-label select-used-second-slots">
                                            <strong class="translated" defaultText="Used double-slot:"></strong>
                                            <select class="advanced-search-selection slot-used-second-selection" multiple="1" data-placeholder="#{exportObj.translate('ui', "noXYselected", "slots")}"></select>
                                        </label>
                                        <br />
                                        <label class = "advanced-search-label has-a-second-slot">
                                            <input type="checkbox" class="advanced-search-checkbox has-a-second-slot-checkbox" /> <span class="translated" defaultText="Only upgrades requiring multiple slots"></span>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-charge-container">
                                        <strong class="translated" defaultText="Charges:"></strong>
                                        <label class = "advanced-search-label set-minimum-charge">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-charge advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-charge">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-charge advanced-search-number-input" value="5" /> 
                                        </label>
                                        <br />
                                        <label class = "advanced-search-label has-recurring-charge">
                                            <input type="checkbox" class="advanced-search-checkbox has-recurring-charge-checkbox" checked="checked"/> <span class="translated" defaultText="Recurring"></span>
                                        </label>
                                        <label class = "advanced-search-label has-not-recurring-charge">
                                            <input type="checkbox" class="advanced-search-checkbox has-not-recurring-charge-checkbox" checked="checked"/> <span class="translated" defaultText="Not recurring"></span>
                                        </label>
                                    <div class = "advanced-search-force-container">
                                        <strong class="translated" defaultText="Force:"></strong>
                                        <label class = "advanced-search-label set-minimum-force">
                                            <span class="translated" defaultText="from"></span> <input type="number" class="minimum-force advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-force">
                                            <span class="translated" defaultText="to"></span> <input type="number" class="maximum-force advanced-search-number-input" value="3" /> 
                                        </label>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 card-selecting-area">
                        <span class="translate sort-cards-by" defaultText="Sort cards by"></span>: <select class="sort-by">
                            <option value="name" class="translated" defaultText="Name"></option>
                            <option value="source" class="translated" defaultText="Source"></option>
                            <option value="type-by-points" class="translated" defaultText="Type (by Points)"></option>
                            <option value="type-by-name" selected="1" class="translated" defaultText="Type (by Name)"></option>
                        </select>
                        <div class="card-selector-container">

                        </div>
                        <br>
                        <div class="card-viewer-conditions-container">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card card-viewer-placeholder info-well">
                            <p class="translate select-a-card" defaultText="Select a card"></p>
                        </div>
                        <div class="card card-viewer-container">
                        </div>
                    </div>
                </div>
            </div>
        """

        @card_selector_container = $ @container.find('.xwing-card-browser .card-selector-container')
        @card_viewer_container = $ @container.find('.xwing-card-browser .card-viewer-container')
        @card_viewer_container.append $.trim exportObj.builders[0].createInfoContainerUI()
        @card_viewer_container.hide()
        @card_viewer_conditions_container = $ @container.find('.xwing-card-browser .card-viewer-conditions-container')
        @card_viewer_container.hide()
        @card_viewer_placeholder = $ @container.find('.xwing-card-browser .card-viewer-placeholder')
        @advanced_search_container = $ @container.find('.xwing-card-browser .advanced-search-container')

        @sort_selector = $ @container.find('select.sort-by')
        @sort_selector.select2
            minimumResultsForSearch: -1

        # TODO: Make added inputs easy accessible

        @card_search_text = ($ @container.find('.xwing-card-browser .card-search-text'))[0]
        @faction_selection = ($ @container.find('.xwing-card-browser select.faction-selection'))
        for faction, pilot of exportObj.pilotsByFactionXWS
            opt = $ document.createElement('OPTION')
            opt.val faction
            opt.text exportObj.translate('faction', faction)
            @faction_selection.append opt
        factionless_option = $ document.createElement('OPTION')
        factionless_option.val "Factionless"
        factionless_option.text exportObj.translate('faction',"Factionless")
        @faction_selection.append factionless_option
        @faction_selection.select2
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        
        @minimum_point_costs = ($ @container.find('.xwing-card-browser .minimum-point-cost'))[0]
        @maximum_point_costs = ($ @container.find('.xwing-card-browser .maximum-point-cost'))[0]
        @hyperspace_checkbox = ($ @container.find('.xwing-card-browser .hyperspace-checkbox'))[0]
        @unique_checkbox = ($ @container.find('.xwing-card-browser .unique-checkbox'))[0]
        @non_unique_checkbox = ($ @container.find('.xwing-card-browser .non-unique-checkbox'))[0]
        @base_size_checkboxes = 
            large: ($ @container.find('.xwing-card-browser .large-base-checkbox'))[0]
            medium: ($ @container.find('.xwing-card-browser .medium-base-checkbox'))[0]
            small: ($ @container.find('.xwing-card-browser .small-base-checkbox'))[0]
        @slot_available_selection = ($ @container.find('.xwing-card-browser select.slot-available-selection'))
        for slot of exportObj.upgradesBySlotCanonicalName
            opt = $ document.createElement('OPTION')
            opt.val slot
            opt.text exportObj.translate('slot', slot)
            @slot_available_selection.append opt
        @slot_available_selection.select2
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        @duplicateslots = ($ @container.find('.xwing-card-browser .duplicate-slots-checkbox'))[0]
        @action_available_selection = ($ @container.find('.xwing-card-browser select.action-available-selection'))
        # ToDo: This does not seem like the correct place to have a list of all actions. Don't we have that elsewhere?!
        for action in ["Evade","Focus","Lock","Boost","Barrel Roll","Calculate","Reinforce","Rotate Arc","Coordinate","Slam","Reload","Jam"].sort()
            opt = $ document.createElement('OPTION')
            opt.text exportObj.translate('action', action)
            opt.val action
            @action_available_selection.append opt
        @action_available_selection.select2
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        @linkedaction_available_selection = ($ @container.find('.xwing-card-browser select.linkedaction-available-selection'))
        for linkedaction in ["Evade","Focus","Lock","Boost","Barrel Roll","Calculate","Reinforce","Rotate Arc","Coordinate","Slam","Reload","Jam"].sort()
            opt = $ document.createElement('OPTION')
            opt.text exportObj.translate('action', linkedaction)
            opt.val linkedaction
            @linkedaction_available_selection.append opt
        @linkedaction_available_selection.select2
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        @slot_used_selection = ($ @container.find('.xwing-card-browser select.slot-used-selection'))
        for slot of exportObj.upgradesBySlotCanonicalName
            opt = $ document.createElement('OPTION')
            opt.text exportObj.translate('slot', slot)
            opt.val slot
            @slot_used_selection.append opt
        @slot_used_selection.select2
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        @slot_used_second_selection = ($ @container.find('.xwing-card-browser select.slot-used-second-selection'))
        for slot of exportObj.upgradesBySlotCanonicalName
            opt = $ document.createElement('OPTION')
            opt.text exportObj.translate('slot', slot)
            opt.val slot
            @slot_used_second_selection.append opt
        @slot_used_second_selection.select2
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        @minimum_charge = ($ @container.find('.xwing-card-browser .minimum-charge'))[0]
        @maximum_charge = ($ @container.find('.xwing-card-browser .maximum-charge'))[0]
        @minimum_ini = ($ @container.find('.xwing-card-browser .minimum-ini'))[0]
        @maximum_ini = ($ @container.find('.xwing-card-browser .maximum-ini'))[0]
        @minimum_force = ($ @container.find('.xwing-card-browser .minimum-force'))[0]
        @maximum_force = ($ @container.find('.xwing-card-browser .maximum-force'))[0]
        @minimum_hull = ($ @container.find('.xwing-card-browser .minimum-hull'))[0]
        @maximum_hull = ($ @container.find('.xwing-card-browser .maximum-hull'))[0]
        @minimum_shields = ($ @container.find('.xwing-card-browser .minimum-shields'))[0]
        @maximum_shields = ($ @container.find('.xwing-card-browser .maximum-shields'))[0]
        @minimum_agility = ($ @container.find('.xwing-card-browser .minimum-agility'))[0]
        @maximum_agility = ($ @container.find('.xwing-card-browser .maximum-agility'))[0]
        @minimum_attack = ($ @container.find('.xwing-card-browser .minimum-attack'))[0]
        @maximum_attack = ($ @container.find('.xwing-card-browser .maximum-attack'))[0]
        @minimum_attackt = ($ @container.find('.xwing-card-browser .minimum-attackt'))[0]
        @maximum_attackt = ($ @container.find('.xwing-card-browser .maximum-attackt'))[0]
        @minimum_attackdt = ($ @container.find('.xwing-card-browser .minimum-attackdt'))[0]
        @maximum_attackdt = ($ @container.find('.xwing-card-browser .maximum-attackdt'))[0]
        @minimum_attackf = ($ @container.find('.xwing-card-browser .minimum-attackf'))[0]
        @maximum_attackf = ($ @container.find('.xwing-card-browser .maximum-attackf'))[0]
        @minimum_attackb = ($ @container.find('.xwing-card-browser .minimum-attackb'))[0]
        @maximum_attackb = ($ @container.find('.xwing-card-browser .maximum-attackb'))[0]
        @minimum_attackbull = ($ @container.find('.xwing-card-browser .minimum-attackbull'))[0]
        @maximum_attackbull = ($ @container.find('.xwing-card-browser .maximum-attackbull'))[0]
        @hassecondslot = ($ @container.find('.xwing-card-browser .has-a-second-slot-checkbox'))[0]
        @recurring_charge = ($ @container.find('.xwing-card-browser .has-recurring-charge-checkbox'))[0]
        @not_recurring_charge = ($ @container.find('.xwing-card-browser .has-not-recurring-charge-checkbox'))[0]
        @minimum_owned_copies = ($ @container.find('.xwing-card-browser .minimum-owned-copies'))[0]
        @maximum_owned_copies = ($ @container.find('.xwing-card-browser .maximum-owned-copies'))[0]

        exportObj.translateUIElements(@container)



    setupHandlers: () ->
        @sort_selector.change (e) =>
            @renderList @sort_selector.val()
        
        #apparently @renderList takes a long time to load, so moving the loading to on button press
        $("#browserTab").on 'click', (e) =>
            @renderList @sort_selector.val()

        $(window).on 'xwing:afterLanguageLoad', (e, language, cb=$.noop) =>
            #if @language != language
            @language = language
            @prepareData()
            
        .on 'xwing-collection:created', (e, collection) =>
            @collection = collection
        .on 'xwing-collection:destroyed', (e, collection) =>
            @collection = null

        @card_search_text.oninput = => @renderList @sort_selector.val()
        # TODO: Add a call to @renderList for added inputs, to start the actual search
        
        @faction_selection[0].onchange = => @renderList @sort_selector.val()
        for basesize, checkbox of @base_size_checkboxes
            checkbox.onclick = => @renderList @sort_selector.val()            
        @minimum_point_costs.oninput = => @renderList @sort_selector.val()
        @maximum_point_costs.oninput = => @renderList @sort_selector.val()
        @hyperspace_checkbox.onclick = => @renderList @sort_selector.val()
        @unique_checkbox.onclick = => @renderList @sort_selector.val()
        @non_unique_checkbox.onclick = => @renderList @sort_selector.val()
        @slot_available_selection[0].onchange = => @renderList @sort_selector.val()
        @duplicateslots.onclick = => @renderList @sort_selector.val()
        @action_available_selection[0].onchange = => @renderList @sort_selector.val()
        @linkedaction_available_selection[0].onchange = => @renderList @sort_selector.val()
        @slot_used_selection[0].onchange = => @renderList @sort_selector.val()
        @slot_used_second_selection[0].onchange = => @renderList @sort_selector.val()
        @not_recurring_charge.onclick = => @renderList @sort_selector.val()
        @recurring_charge.onclick = => @renderList @sort_selector.val()
        @hassecondslot.onclick = => @renderList @sort_selector.val()
        @minimum_charge.oninput = => @renderList @sort_selector.val()
        @maximum_charge.oninput = => @renderList @sort_selector.val()
        @minimum_ini.oninput = => @renderList @sort_selector.val()
        @maximum_ini.oninput = => @renderList @sort_selector.val()
        @minimum_hull.oninput = => @renderList @sort_selector.val()
        @maximum_hull.oninput = => @renderList @sort_selector.val()
        @minimum_force.oninput = => @renderList @sort_selector.val()
        @maximum_force.oninput = => @renderList @sort_selector.val()
        @minimum_shields.oninput = => @renderList @sort_selector.val()
        @maximum_shields.oninput = => @renderList @sort_selector.val()
        @minimum_agility.oninput = => @renderList @sort_selector.val()
        @maximum_agility.oninput = => @renderList @sort_selector.val()
        @minimum_attack.oninput = => @renderList @sort_selector.val()
        @maximum_attack.oninput = => @renderList @sort_selector.val()
        @minimum_attackt.oninput = => @renderList @sort_selector.val()
        @maximum_attackt.oninput = => @renderList @sort_selector.val()
        @minimum_attackdt.oninput = => @renderList @sort_selector.val()
        @maximum_attackdt.oninput = => @renderList @sort_selector.val()
        @minimum_attackf.oninput = => @renderList @sort_selector.val()
        @maximum_attackf.oninput = => @renderList @sort_selector.val()
        @minimum_attackb.oninput = => @renderList @sort_selector.val()
        @maximum_attackb.oninput = => @renderList @sort_selector.val()
        @minimum_attackbull.oninput = => @renderList @sort_selector.val()
        @maximum_attackbull.oninput = => @renderList @sort_selector.val()
        @minimum_owned_copies.oninput = => @renderList @sort_selector.val()
        @maximum_owned_copies.oninput = => @renderList @sort_selector.val()



    prepareData: () ->
        @all_cards = []

        for type in TYPES
            if type == 'upgrades'
                @all_cards = @all_cards.concat ( { name: card_data.name, display_name: card_data.display_name, type: exportObj.translate('ui', 'upgradeHeader', card_data.slot), data: card_data, orig_type: card_data.slot } for card_name, card_data of exportObj[type] )
            else
                @all_cards = @all_cards.concat ( { name: card_data.name, display_name: card_data.display_name, type: exportObj.translate('singular', type), data: card_data, orig_type: exportObj.translate('singular', type) } for card_name, card_data of exportObj[type] )

        @types = (exportObj.translate('types', type) for type in [ 'Pilot', 'Ship' ])
        for card_name, card_data of exportObj.upgrades
            upgrade_text = exportObj.translate 'ui', 'upgradeHeader', card_data.slot
            @types.push upgrade_text if upgrade_text not in @types

        @all_cards.sort byName

        @sources = []
        for card in @all_cards
            for source in card.data.sources
                @sources.push(source) if source not in @sources

        sorted_types = @types.sort()
        sorted_sources = @sources.sort()

        @cards_by_type_name = {}
        for type in sorted_types
            @cards_by_type_name[type] = ( card for card in @all_cards when card.type == type ).sort byName
            # TODO: Functionality should not rely on translations. Here the translated type is used. Replace with orig_type and just display translation. Don't use it internally...

        @cards_by_type_points = {}
        for type in sorted_types
            @cards_by_type_points[type] = ( card for card in @all_cards when card.type == type ).sort byPoints

        @cards_by_source = {}
        for source in sorted_sources
            @cards_by_source[source] = ( card for card in @all_cards when source in card.data.sources ).sort byName


    renderList: (sort_by='name') ->
        # sort_by is one of `name`, `type-by-name`, `source`, `type-by-points`
        #
        # Renders multiselect to container
        # Selects previously selected card if there is one
        
        if @card_selector?
            @card_selector.empty()
        else
            @card_selector = $ document.createElement('SELECT')
            @card_selector.addClass 'card-selector'
            @card_selector.attr 'size', 25
            @card_selector_container.append @card_selector

        switch sort_by
            when 'type-by-name'
                for type in @types
                    optgroup = $ document.createElement('OPTGROUP')
                    optgroup.attr 'label', type

                    card_added = false
                    for card in @cards_by_type_name[type]
                        if @checkSearchCriteria card
                            @addCardTo optgroup, card
                            card_added = true
                    if card_added
                        @card_selector.append optgroup

            when 'type-by-points'
                for type in @types
                    optgroup = $ document.createElement('OPTGROUP')
                    optgroup.attr 'label', type
                    
                    card_added = false
                    for card in @cards_by_type_points[type]
                        if @checkSearchCriteria card
                            @addCardTo optgroup, card
                            card_added = true
                    if card_added
                        @card_selector.append optgroup
            when 'source'
                for source in @sources
                    optgroup = $ document.createElement('OPTGROUP')
                    optgroup.attr 'label', exportObj.translate('sources', source)
                    
                    card_added = false
                    for card in @cards_by_source[source]
                        if @checkSearchCriteria card
                            @addCardTo optgroup, card
                            card_added = true
                    if card_added
                        @card_selector.append optgroup
            else
                for card in @all_cards
                    if @checkSearchCriteria card
                        @addCardTo @card_selector, card

        @card_selector.change (e) =>
            @renderCard $(@card_selector.find(':selected'))

    renderCard: (card) ->
        # Renders card to card container
        display_name = card.data 'display_name'
        name = card.data 'name'
        # type = card.data 'type'
        data = card.data 'card'
        orig_type = card.data 'orig_type'

        if not (orig_type in ['Pilot', 'Ship', 'Quickbuild'])
            add_opts = {addon_type: orig_type}
            orig_type = 'Addon'

        exportObj.builders[0].showTooltip(orig_type, data, add_opts ? {}, @card_viewer_container) # we use the render method from the squad builder, cause it works.

        @card_viewer_container.show()

        # Conditions
        if data?.applies_condition?
            conditions = new Set()
            if data.applies_condition instanceof Array
                for condition in data.applies_condition
                    conditions.add(exportObj.conditionsByCanonicalName[condition])
            else
                conditions.add(exportObj.conditionsByCanonicalName[data.applies_condition])
            @card_viewer_conditions_container.text ''
            conditions.forEach (condition) =>
                condition_container = $ document.createElement('div')
                condition_container.addClass 'conditions-container d-flex flex-wrap'
                condition_container.append conditionToHTML(condition)
                @card_viewer_conditions_container.append condition_container
            @card_viewer_conditions_container.show()
        else
            @card_viewer_conditions_container.hide()

        @card_viewer_placeholder.hide()

    addCardTo: (container, card) ->
        option = $ document.createElement('OPTION')
        option.text "#{if card.display_name then card.display_name else card.name} (#{if card.data.points? then card.data.points else '*'})"
        option.data 'name', card.name
        option.data 'display_name', card.display_name
        option.data 'type', card.type
        option.data 'card', card.data
        option.data 'orig_type', card.orig_type
        if @getCollectionNumber(card) == 0
            option[0].classList.add('result-not-in-collection')
        $(container).append option

    getCollectionNumber: (card) ->
        # returns number of copies of the given card in the collection, or -1 if no collection loaded
        if not (exportObj.builders[0].collection? and exportObj.builders[0].collection.counts?)
            return -1
        owned_copies = 0
        switch card.orig_type
            when 'Pilot'
                owned_copies = exportObj.builders[0].collection.counts.pilot?[card.name] ? 0
            when 'Ship'
                owned_copies = exportObj.builders[0].collection.counts.ship?[card.name] ? 0
            else # type is e.g. astromech
                owned_copies = exportObj.builders[0].collection.counts.upgrade?[card.name] ? 0
        owned_copies


    checkSearchCriteria: (card) ->
        # check for text search
        search_text = @card_search_text.value.toLowerCase()
        text_search = card.name.toLowerCase().indexOf(search_text) > -1 or (card.data.text and card.data.text.toLowerCase().indexOf(search_text)) > -1 or (card.display_name and card.display_name.toLowerCase().indexOf(search_text) > -1)
        
        if not text_search
            return false unless card.data.ship
            ship = card.data.ship
            if ship instanceof Array
                text_in_ship = false
                for s in ship
                    if s.toLowerCase().indexOf(search_text) > -1 or (exportObj.ships[s].display_name and exportObj.ships[s].display_name.toLowerCase().indexOf(search_text) > -1)
                        text_in_ship = true
                        break
                return false unless text_in_ship
            else
                return false unless ship.toLowerCase().indexOf(search_text) > -1 or (exportObj.ships[ship].display_name and exportObj.ships[ship].display_name.toLowerCase().indexOf(search_text) > -1)
    
        all_factions = (faction for faction, pilot of exportObj.pilotsByFactionXWS)
        selected_factions = @faction_selection.val()
        if selected_factions.length > 0
            if "Factionless" in selected_factions
                selected_factions.push undefined
            return false unless card.data.faction in selected_factions or card.orig_type == 'Ship' or card.data.faction instanceof Array
            if card.data.faction instanceof Array
               faction_matches = false
               for faction in card.data.faction
                   if faction in selected_factions
                       faction_matches = true
                       break
               return false unless faction_matches
            if card.orig_type == 'Ship'
               faction_matches = false
               for faction in card.data.factions
                   if faction in selected_factions
                       faction_matches = true
                       break
               return false unless faction_matches
        else
            selected_factions = all_factions

        # check if hyperspace only matches
        if @hyperspace_checkbox.checked
            # check all factions specified by the card (which might be a single faction or an array of factions), or all selected factions if card does not specify any
            for faction in (if card.data.faction? then (if Array.isArray(card.data.faction) then card.data.faction else [card.data.faction]) else selected_factions)
                continue unless faction in selected_factions # e.g. ships should only be displayed if a legal faction is selected
                hyperspace_legal = hyperspace_legal or exportObj.hyperspaceCheck(card.data, faction, card.orig_type == 'Ship' )
            return false unless hyperspace_legal

        # check for slot requirements
        required_slots = @slot_available_selection.val()
        if required_slots.length > 0
            slots = card.data.slots
            if card.orig_type == 'Ship'
                slots = []
                for faction in selected_factions
                    if faction != undefined
                        for name, pilots of exportObj.pilotsByFactionCanonicalName[faction]
                            for pilot in pilots # there are sometimes multiple pilots with the same name, so we have another array layer here
                                if pilot.ship == card.data.name 
                                    slots.push.apply(slots, pilot.slots)
            
            for slot in required_slots
                # special case for hardpoints
                if not(((slot == "Torpedo") or (slot == "Missile") or (slot == "Cannon")) and (slots? and ("HardpointShip" in slots)))
                    return false unless slots? and slot in slots
                # check for duplciates
                if @duplicateslots.checked
                    hasDuplicates = slots.filter (x, i, self) ->
                        (self.indexOf(x) == i && i != self.lastIndexOf(x)) and (x == slot)
                    return false if hasDuplicates.length == 0

        # check for action requirements
        required_actions = @action_available_selection.val()
        required_linked_actions = @linkedaction_available_selection.val()
        if (required_actions.length > 0) or (required_linked_actions.length > 0)
            actions = card.data.actions ? []
            actions = actions.concat (card.data.actionsred ? [])
            if card.orig_type == 'Pilot'
                actions = card.data.ship_override?.actions ? exportObj.ships[card.data.ship].actions
                actions = actions.concat (card.data.ship_override?.actionsred ? exportObj.ships[card.data.ship].actionsred)
        for action in required_actions ? []
            return false unless actions? and ((action in actions) or (("F-" + action) in actions))
        for action in required_linked_actions ? []
            return false unless actions? and ((("R> " + action) in actions) or (("> " + action) in actions))

        # check if point costs matches
        if @minimum_point_costs.value > 0 or @maximum_point_costs.value < 200
            return false unless (card.data.points >= @minimum_point_costs.value and card.data.points <= @maximum_point_costs.value) or (card.data.points == "*" or not card.data.points?)
            if card.data.pointsarray?
                matching_points = false
                for points in card.data.pointsarray
                    if points >= @minimum_point_costs.value and points <= @maximum_point_costs.value
                        matching_points = true
                        break
                return false unless matching_points
            if card.orig_type == 'Ship' # check if pilot matching points exist
                matching_points = false
                for faction in selected_factions
                    for name, pilots of exportObj.pilotsByFactionCanonicalName[faction]
                        for pilot in pilots
                            if pilot.ship == card.data.name
                                if pilot.points >= @minimum_point_costs.value and pilot.points <= @maximum_point_costs.value
                                    matching_points = true
                                    break
                        break if matching_points
                    break if matching_points            
                return false unless matching_points

        # check if used slot matches
        used_slots = @slot_used_selection.val()
        if used_slots.length > 0
            return false unless card.data.slot?
            matches = false
            for slot in used_slots
                if card.data.slot == slot
                    matches = true
                    break
            return false unless matches

        # check if used second slot matches
        used_second_slots = @slot_used_second_selection.val()
        if used_second_slots.length > 0
            return false unless card.data.also_occupies_upgrades?
            matches = false
            for slot in used_second_slots
                for adds in card.data.also_occupies_upgrades
                    if adds == slot
                        matches = true
                        break
            return false unless matches

        # check if has a second slot
        return false if not card.data.also_occupies_upgrades? and @hassecondslot.checked
            
        # check for uniqueness
        return false unless not @unique_checkbox.checked or card.data.unique
        return false unless not @non_unique_checkbox.checked or not card.data.unique
        
        # check charge stuff
        return false unless (card.data.charge? and card.data.charge <= @maximum_charge.value and card.data.charge >= @minimum_charge.value) or (@minimum_charge.value <= 0 and not card.data.charge?)
        return false if card.data.recurring and not @recurring_charge.checked
        return false if card.data.charge and not card.data.recurring and not @not_recurring_charge.checked

        # check collection status
        if exportObj.builders[0].collection?.counts? # ignore collection stuff, if no collection available
            owned_copies = @getCollectionNumber(card)
            return false unless owned_copies >= @minimum_owned_copies.value and owned_copies <= @maximum_owned_copies.value

        # check for ini
        if card.data.skill?
            return false unless card.data.skill >= @minimum_ini.value and card.data.skill <= @maximum_ini.value
        else 
            # if the card has no ini value (is not a pilot) return false, if the ini criteria has been set (is not 0 to 6)
            return false unless @minimum_ini.value <= 0 and @maximum_ini.value >= 6

        # check for base size
        if not (@base_size_checkboxes['small'].checked and @base_size_checkboxes['medium'].checked and @base_size_checkboxes['large'].checked)
            size_matches = false
            if card.orig_type == 'Ship'
                size_matches = size_matches or card.data.medium and @base_size_checkboxes['medium'].checked
                size_matches = size_matches or card.data.large and @base_size_checkboxes['large'].checked
                size_matches = size_matches or not card.data.medium and not card.data.large and @base_size_checkboxes['small'].checked
            else if card.orig_type == 'Pilot'
                ship = exportObj.ships[card.data.ship]
                size_matches = size_matches or ship.medium and @base_size_checkboxes['medium'].checked
                size_matches = size_matches or ship.large and @base_size_checkboxes['large'].checked
                size_matches = size_matches or not ship.medium and not ship.large and @base_size_checkboxes['small'].checked
            return false unless size_matches

        # check for hull
        if @minimum_hull.value != "0" or @maximum_hull.value != "12"
            return false unless (card.data.hull? and card.data.hull >= @minimum_hull.value and card.data.hull <= @maximum_hull.value) or (card.orig_type == 'Pilot' and exportObj.ships[card.data.ship].hull >= @minimum_hull.value and exportObj.ships[card.data.ship].hull <= @maximum_hull.value )
       
        # check for shields
        if @minimum_shields.value != "0" or @maximum_shields.value != "6"
            return false unless (card.data.shields? and card.data.shields >= @minimum_shields.value and card.data.shields <= @maximum_shields.value) or (card.orig_type == 'Pilot' and exportObj.ships[card.data.ship].shields >= @minimum_shields.value and exportObj.ships[card.data.ship].shields <= @maximum_shields.value )
        
        # check for agility
        if @minimum_agility.value != "0" or @maximum_agility.value != "3"
            return false unless (card.data.agility? and card.data.agility >= @minimum_agility.value and card.data.agility <= @maximum_agility.value) or (card.orig_type == 'Pilot' and exportObj.ships[card.data.ship].agility >= @minimum_agility.value and exportObj.ships[card.data.ship].agility <= @maximum_agility.value )
                 
        # check for attack
        if @minimum_attack.value != "0" or @maximum_attack.value != "5"
            return false unless (card.data.attack? and card.data.attack >= @minimum_attack.value and card.data.attack <= @maximum_attack.value) or (card.orig_type == 'Pilot' and ((exportObj.ships[card.data.ship].attack? and exportObj.ships[card.data.ship].attack >= @minimum_attack.value and exportObj.ships[card.data.ship].attack <= @maximum_attack.value ) or (not exportObj.ships[card.data.ship].attack? and @minimum_attack.value <= 0))) or (card.orig_type == 'Ship' and not card.data.attack? and @minimum_attack.value <= 0)
        
        # check for attackt
        if @minimum_attackt.value != "0" or @maximum_attackt.value != "5"
            return false unless (card.data.attackt? and card.data.attackt >= @minimum_attackt.value and card.data.attackt <= @maximum_attackt.value) or (card.orig_type == 'Pilot' and ((exportObj.ships[card.data.ship].attackt? and exportObj.ships[card.data.ship].attackt >= @minimum_attackt.value and exportObj.ships[card.data.ship].attackt <= @maximum_attackt.value ) or (not exportObj.ships[card.data.ship].attackt? and @minimum_attackt.value <= 0))) or (card.orig_type == 'Ship' and not card.data.attackt? and @minimum_attackt.value <= 0)
         
        # check for attackdt
        if @minimum_attackdt.value != "0" or @maximum_attackdt.value != "5"
            return false unless (card.data.attackdt? and card.data.attackdt >= @minimum_attackdt.value and card.data.attackdt <= @maximum_attackdt.value) or (card.orig_type == 'Pilot' and ((exportObj.ships[card.data.ship].attackdt? and exportObj.ships[card.data.ship].attackdt >= @minimum_attackdt.value and exportObj.ships[card.data.ship].attackdt <= @maximum_attackdt.value ) or (not exportObj.ships[card.data.ship].attackdt? and @minimum_attackdt.value <= 0))) or (card.orig_type == 'Ship' and not card.data.attackdt? and @minimum_attackdt.value <= 0)
        
        # check for attackf
        if @minimum_attackf.value != "0" or @maximum_attackf.value != "5"
            return false unless (card.data.attackf? and card.data.attackf >= @minimum_attackf.value and card.data.attackf <= @maximum_attackf.value) or (card.orig_type == 'Pilot' and ((exportObj.ships[card.data.ship].attackf? and exportObj.ships[card.data.ship].attackf >= @minimum_attackf.value and exportObj.ships[card.data.ship].attackf <= @maximum_attackf.value ) or (not exportObj.ships[card.data.ship].attackf? and @minimum_attackf.value <= 0))) or (card.orig_type == 'Ship' and not card.data.attackf? and @minimum_attackf.value <= 0)
         
        # check for attackb
        if @minimum_attackb.value != "0" or @maximum_attackb.value != "5"
            return false unless (card.data.attackb? and card.data.attackb >= @minimum_attackb.value and card.data.attackb <= @maximum_attackb.value) or (card.orig_type == 'Pilot' and ((exportObj.ships[card.data.ship].attackb? and exportObj.ships[card.data.ship].attackb >= @minimum_attackb.value and exportObj.ships[card.data.ship].attackb <= @maximum_attackb.value ) or (not exportObj.ships[card.data.ship].attackb? and @minimum_attackb.value <= 0))) or (card.orig_type == 'Ship' and not card.data.attackb? and @minimum_attackb.value <= 0)
         
        # check for attackbull
        if @minimum_attackbull.value != "0" or @maximum_attackbull.value != "5"
            return false unless (card.data.attackbull? and card.data.attackbull >= @minimum_attackbull.value and card.data.attackbull <= @maximum_attackbull.value) or (card.orig_type == 'Pilot' and ((exportObj.ships[card.data.ship].attackbull? and exportObj.ships[card.data.ship].attackbull >= @minimum_attackbull.value and exportObj.ships[card.data.ship].attackbull <= @maximum_attackbull.value ) or (not exportObj.ships[card.data.ship].attackbull? and @minimum_attackbull.value <= 0))) or (card.orig_type == 'Ship' and not card.data.attackbull? and @minimum_attackbull.value <= 0)
         
        # check for force
        if @minimum_force.value != "0" or @maximum_force.value != "3"
            return false unless (card.data.force? and card.data.force >= @minimum_force.value and card.data.force <= @maximum_force.value) or (card.orig_type == 'Pilot' and exportObj.ships[card.data.ship].force >= @minimum_force.value and exportObj.ships[card.data.ship].force <= @maximum_force.value ) or (!card.data.force? and @minimum_force.value == "0")
            
        #TODO: Add logic of addiditional search criteria here. Have a look at card.data, to see what data is available. Add search inputs at the todo marks above. 

        return true
