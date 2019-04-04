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
        @language = 'English'

        @prepareData()

        @setupUI()
        @setupHandlers()

        @sort_selector.change()

    setupUI: () ->
        @container.append $.trim """
            <div class="container-fluid xwing-card-browser">
                <div class="row-fluid">
                    <div class="span4">
                        <div class="well card-search-container">
                        <h3>Card Search</h3>
                            <div class="advanced-search-container">
                                <div class = "well search-container general-search-container">
                                    <h4>General</h4>
                                    <lable class = "text-search advanced-search-label">
                                    <strong>Textsearch: </strong>
                                        <input type="search" placeholder="Search for name, text or ship" class = "card-search-text">
                                    </label>
                                    <div class= "advanced-search-faction-selection-container">
                                        <label class = "advanced-search-label select-available-slots">
                                            <strong>Factions: </strong>
                                            <select class="advanced-search-selection faction-selection" multiple="1" data-placeholder="All factions"></select>
                                            <span class="advanced-search-tooltip" tooltip="A card is considered factionless, if it can be used by more than one faction."> &#9432 </span>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-point-selection-container">
                                        <strong>Point costs:</strong>
                                        <label class = "advanced-search-label set-minimum-points">
                                            from <input type="number" class="minimum-point-cost advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-points">
                                            to <input type="number" class="maximum-point-cost advanced-search-number-input" value="200" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-collection-container">
                                        <strong>Owned copies:</strong>
                                        <label class = "advanced-search-label set-minimum-owned-copies">
                                            from <input type="number" class="minimum-owned-copies advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-owened-copies">
                                            to <input type="number" class="maximum-owned-copies advanced-search-number-input" value="100" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-misc-container">
                                        <strong>Misc:</strong>
                                        <label class = "advanced-search-label toggle-unique">
                                            <input type="checkbox" class="unique-checkbox advanced-search-checkbox" /> Is unique
                                        </label>
                                        <label class = "advanced-search-label toggle-non-unique">
                                            <input type="checkbox" class="non-unique-checkbox advanced-search-checkbox" /> Is not unique
                                        </label>
                                        <label class = "advanced-search-label toggle-hyperspace">
                                            <input type="checkbox" class="hyperspace-checkbox advanced-search-checkbox" /> Hyperspace legal
                                        </label>
                                    </div>
                                </div>
                                <div class = "well search-container ship-search-container">
                                    <h4>Ships and Pilots</h4>
                                    <div class = "advanced-search-slot-available-container">
                                        <label class = "advanced-search-label select-available-slots">
                                            <strong>Available slots: </strong>
                                            <select class="advanced-search-selection slot-available-selection" multiple="1" data-placeholder="No slots selected"></select>
                                            <span class="advanced-search-tooltip" tooltip="Search for pilots and ships having all selected slots available."> &#9432 </span>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-ini-container">
                                        <strong>Initiative:</strong>
                                        <label class = "advanced-search-label set-minimum-ini">
                                            from <input type="number" class="minimum-ini advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-ini">
                                            to <input type="number" class="maximum-ini advanced-search-number-input" value="6" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-hull-container">
                                        <strong>Hull:</strong>
                                        <label class = "advanced-search-label set-minimum-hull">
                                            from <input type="number" class="minimum-hull advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-hull">
                                            to <input type="number" class="maximum-hull advanced-search-number-input" value="12" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-shields-container">
                                        <strong>Shields:</strong>
                                        <label class = "advanced-search-label set-minimum-shields">
                                            from <input type="number" class="minimum-shields advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-shields">
                                            to <input type="number" class="maximum-shields advanced-search-number-input" value="6" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-agility-container">
                                        <strong>Agility:</strong>
                                        <label class = "advanced-search-label set-minimum-agility">
                                            from <input type="number" class="minimum-agility advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-agility">
                                            to <input type="number" class="maximum-agility advanced-search-number-input" value="3" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-base-size-container">
                                        <strong>Base size:</strong>
                                        <label class = "advanced-search-label toggle-small-base">
                                            <input type="checkbox" class="small-base-checkbox advanced-search-checkbox" checked="checked"/> Small
                                        </label>
                                        <label class = "advanced-search-label toggle-medium-base">
                                            <input type="checkbox" class="medium-base-checkbox advanced-search-checkbox" checked="checked"/> Medium
                                        </label>
                                        <label class = "advanced-search-label toggle-large-base">
                                            <input type="checkbox" class="large-base-checkbox advanced-search-checkbox" checked="checked"/> Large
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attack-container">
                                        <strong>Attack  <i class="xwing-miniatures-font xwing-miniatures-font-frontarc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attack">
                                            from <input type="number" class="minimum-attack advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attack">
                                            to <input type="number" class="maximum-attack advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackt-container">
                                        <strong>Attack  <i class="xwing-miniatures-font xwing-miniatures-font-singleturretarc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackt">
                                            from <input type="number" class="minimum-attackt advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackt">
                                            to <input type="number" class="maximum-attackt advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackdt-container">
                                        <strong>Attack <i class="xwing-miniatures-font xwing-miniatures-font-doubleturretarc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackdt">
                                            from <input type="number" class="minimum-attackdt advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackdt">
                                            to <input type="number" class="maximum-attackdt advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackf-container">
                                        <strong>Attack <i class="xwing-miniatures-font xwing-miniatures-font-fullfrontarc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackf">
                                            from <input type="number" class="minimum-attackf advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackf">
                                            to <input type="number" class="maximum-attackf advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackb-container">
                                        <strong>Attack <i class="xwing-miniatures-font xwing-miniatures-font-reararc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackb">
                                            from <input type="number" class="minimum-attackb advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackb">
                                            to <input type="number" class="maximum-attackb advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                    <div class = "advanced-search-attackbull-container">
                                        <strong>Attack <i class="xwing-miniatures-font xwing-miniatures-font-bullseyearc"></i>:</strong>
                                        <label class = "advanced-search-label set-minimum-attackbull">
                                            from <input type="number" class="minimum-attackbull advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-attackbull">
                                            to <input type="number" class="maximum-attackbull advanced-search-number-input" value="5" /> 
                                        </label>
                                    </div>
                                </div>
                                <div class = "well search-container other-stuff-search-container">
                                    <h4>Other Stuff</h4>
                                    <div class = "advanced-search-slot-used-container">
                                        <label class = "advanced-search-label select-used-slots">
                                            <strong>Used slot: </strong>
                                            <select class="advanced-search-selection slot-used-selection" multiple="1" data-placeholder="No slots selected"></select>
                                            <span class="advanced-search-tooltip" tooltip="Search for upgrades using any of the selected slots."> &#9432 </span>
                                        </label>
                                    </div>
                                    <div class = "advanced-search-charge-container">
                                        <strong>Charges:</strong>
                                        <label class = "advanced-search-label set-minimum-charge">
                                            from <input type="number" class="minimum-charge advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-charge">
                                            to <input type="number" class="maximum-charge advanced-search-number-input" value="5" /> 
                                        </label>
                                        <label class = "advanced-search-label has-recurring-charge">
                                            <input type="checkbox" class="advanced-search-checkbox has-recurring-charge-checkbox" checked="checked"/> recurring
                                        </label>
                                        <label class = "advanced-search-label has-not-recurring-charge">
                                            <input type="checkbox" class="advanced-search-checkbox has-not-recurring-charge-checkbox" checked="checked"/> not recurring
                                        </label>
                                    <div class = "advanced-search-force-container">
                                        <strong>Force:</strong>
                                        <label class = "advanced-search-label set-minimum-force">
                                            from <input type="number" class="minimum-force advanced-search-number-input" value="0" /> 
                                        </label>
                                        <label class = "advanced-search-label set-maximum-force">
                                            to <input type="number" class="maximum-force advanced-search-number-input" value="3" /> 
                                        </label>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="span4 card-selecting-area">
                        <span class="translate sort-cards-by">Sort cards by</span>: <select class="sort-by">
                            <option value="name">Name</option>
                            <option value="source">Source</option>
                            <option value="type-by-points">Type (by Points)</option>
                            <option value="type-by-name" selected="1">Type (by Name)</option>
                        </select>
                        <div class="card-selector-container">

                        </div>
                    </div>
                    <div class="span4">
                        <div class="well card-viewer-placeholder info-well">
                            <p class="translate select-a-card">Select a card from the list at the left.</p>
                        </div>
                        <div class="well card-viewer-container info-well">
                            <span class="info-name"></span>
                            <br />
                            <span class="info-type"></span>
                            <br />
                            <span class="info-sources"></span>
                            <br />
                            <span class="info-collection"></span>
                            <table>
                                <tbody>
                                    <tr class="info-skill">
                                        <td class="info-header">Skill</td>
                                        <td class="info-data info-skill"></td>
                                    </tr>
                                    <tr class="info-energy">
                                        <td class="info-header"><i class="xwing-miniatures-font header-energy xwing-miniatures-font-energy"></i></td>
                                        <td class="info-data info-energy"></td>
                                    </tr>
                                    <tr class="info-attack">
                                        <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-frontarc"></i></td>
                                        <td class="info-data info-attack"></td>
                                    </tr>
                                    <tr class="info-attack-fullfront">
                                        <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-fullfrontarc"></i></td>
                                        <td class="info-data info-attack"></td>
                                    </tr>
                                    <tr class="info-attack-bullseye">
                                        <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-bullseyearc"></i></td>
                                        <td class="info-data info-attack"></td>
                                    </tr>
                                    <tr class="info-attack-back">
                                        <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-reararc"></i></td>
                                        <td class="info-data info-attack"></td>
                                    </tr>
                                    <tr class="info-attack-turret">
                                        <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-singleturretarc"></i></td>
                                        <td class="info-data info-attack"></td>
                                    </tr>
                                    <tr class="info-attack-doubleturret">
                                        <td class="info-header"><i class="xwing-miniatures-font header-attack xwing-miniatures-font-doubleturretarc"></i></td>
                                        <td class="info-data info-attack"></td>
                                    </tr>
                                    <tr class="info-agility">
                                        <td class="info-header"><i class="xwing-miniatures-font header-agility xwing-miniatures-font-agility"></i></td>
                                        <td class="info-data info-agility"></td>
                                    </tr>
                                    <tr class="info-hull">
                                        <td class="info-header"><i class="xwing-miniatures-font header-hull xwing-miniatures-font-hull"></i></td>
                                        <td class="info-data info-hull"></td>
                                    </tr>
                                    <tr class="info-shields">
                                        <td class="info-header"><i class="xwing-miniatures-font header-shield xwing-miniatures-font-shield"></i></td>
                                        <td class="info-data info-shields"></td>
                                    </tr>
                                    <tr class="info-force">
                                        <td class="info-header"><i class="xwing-miniatures-font header-force xwing-miniatures-font-forcecharge"></i></td>
                                        <td class="info-data info-force"></td>
                                    </tr>
                                    <tr class="info-charge">
                                        <td class="info-header"><i class="xwing-miniatures-font header-charge xwing-miniatures-font-charge"></i></td>
                                        <td class="info-data info-charge"></td>
                                    </tr>
                                    <tr class="info-range">
                                        <td class="info-header">Range</td>
                                        <td class="info-data info-range"></td>
                                    </tr>
                                    <tr class="info-actions">
                                        <td class="info-header">Actions</td>
                                        <td class="info-data"></td>
                                    </tr>
                                    <tr class="info-actions-red">
                                        <td></td>
                                        <td class="info-data-red"></td>
                                    </tr>
                                    <tr class="info-upgrades">
                                        <td class="info-header">Upgrades</td>
                                        <td class="info-data"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <p class="info-text" />
                            <p class="info-maneuvers" />
                        </div>
                    </div>
                </div>
            </div>
        """

        @card_selector_container = $ @container.find('.xwing-card-browser .card-selector-container')
        @card_viewer_container = $ @container.find('.xwing-card-browser .card-viewer-container')
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
            opt.text faction
            @faction_selection.append opt
        factionless_option = $ document.createElement('OPTION')
        factionless_option.text "Factionless"
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
            opt.text slot
            @slot_available_selection.append opt
        @slot_available_selection.select2
            minimumResultsForSearch: if $.isMobile() then -1 else 0
        @slot_used_selection = ($ @container.find('.xwing-card-browser select.slot-used-selection'))
        for slot of exportObj.upgradesBySlotCanonicalName
            opt = $ document.createElement('OPTION')
            opt.text slot
            @slot_used_selection.append opt
        @slot_used_selection.select2
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
        @recurring_charge = ($ @container.find('.xwing-card-browser .has-recurring-charge-checkbox'))[0]
        @not_recurring_charge = ($ @container.find('.xwing-card-browser .has-not-recurring-charge-checkbox'))[0]
        @minimum_owned_copies = ($ @container.find('.xwing-card-browser .minimum-owned-copies'))[0]
        @maximum_owned_copies = ($ @container.find('.xwing-card-browser .maximum-owned-copies'))[0]



    setupHandlers: () ->
        @sort_selector.change (e) =>
            @renderList @sort_selector.val()

        $(window).on 'xwing:afterLanguageLoad', (e, language, cb=$.noop) =>
            @language = language
            @prepareData()
            @renderList @sort_selector.val()
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
        @slot_used_selection[0].onchange = => @renderList @sort_selector.val()
        @recurring_charge.onclick = => @renderList @sort_selector.val()
        @not_recurring_charge.onclick = => @renderList @sort_selector.val()
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
                @all_cards = @all_cards.concat ( { name: card_data.name, display_name: card_data.display_name, type: exportObj.translate(@language, 'ui', 'upgradeHeader', card_data.slot), data: card_data, orig_type: card_data.slot } for card_name, card_data of exportObj[type] )
            else
                @all_cards = @all_cards.concat ( { name: card_data.name, display_name: card_data.display_name, type: exportObj.translate(@language, 'singular', type), data: card_data, orig_type: exportObj.translate('English', 'singular', type) } for card_name, card_data of exportObj[type] )

        @types = (exportObj.translate(@language, 'types', type) for type in [ 'Pilot', 'Ship' ])
        for card_name, card_data of exportObj.upgrades
            upgrade_text = exportObj.translate @language, 'ui', 'upgradeHeader', card_data.slot
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
        @card_selector.remove() if @card_selector?
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
                    optgroup.attr 'label', source
                    
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
    
        # prevent the three virtual hardpoint cards from beeing displayed
        return false unless card.data.slot != "Hardpoint"

        
        all_factions = (faction for faction, pilot of exportObj.pilotsByFactionXWS)
        selected_factions = @faction_selection.val()
        if selected_factions
            if "Factionless" in selected_factions
                selected_factions.push undefined
            return false unless card.data.faction in selected_factions or card.orig_type == 'Ship'
            if card.orig_type == 'Ship'
               faction_matches = false
               for faction in card.data.factions
                   if faction in selected_factions
                       faction_matches = true
                       break
               return false unless faction_matches


        # check if hyperspace only matches
        if @hyperspace_checkbox.checked
            for faction in selected_factions ? all_factions
                hyperspace_legal = hyperspace_legal or exportObj.hyperspaceCheck(card.data, faction, card.orig_type == 'Ship' )
            return false unless hyperspace_legal


        # check for slot requirements
        required_slots = @slot_available_selection.val()
        if required_slots
            slots = card.data.slots
            if card.orig_type == 'Ship'
                slots = []
                for faction in selected_factions ? all_factions
                    if faction != undefined
                        for name, pilots of exportObj.pilotsByFactionCanonicalName[faction]
                            for pilot in pilots # there are sometimes multiple pilots with the same name, so we have another array layer here
                                if pilot.ship == card.data.name
                                    slots.push.apply(slots, pilot.slots)
            for slot in required_slots
               return false unless slots? and slot in slots

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
                for faction in selected_factions ? all_factions
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
        if used_slots
            return false unless card.data.slot?
            matches = false
            for slot in used_slots
                if card.data.slot == slot
                    matches = true
                    break
            return false unless matches

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