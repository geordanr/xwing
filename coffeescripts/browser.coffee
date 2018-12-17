###
    X-Wing Card Browser
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
###
exportObj = exports ? this

# Assumes cards.js has been loaded

TYPES = [ 'pilots', 'upgrades' ]

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
                    <div class="span12">
                        <span class="translate sort-cards-by">Sort cards by</span>: <select class="sort-by">
                            <option value="name">Name</option>
                            <option value="source">Source</option>
                            <option value="type-by-points">Type (by Points)</option>
                            <option value="type-by-name" selected="1">Type (by Name)</option>
                        </select>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span4 card-selector-container">

                    </div>
                    <div class="span8">
                        <div class="well card-search-container">
                            <input type="search" placeholder="Search for name, text or ship" class = "card-search-text">"""+ #TODO: Add more search input options here. 
                            """
                            <button class="btn btn-primary show-advanced-search">
                                Advanced Search
                            </button>
                            <div class="advanced-search-container">
                                <div class= "advanced-search-faction-selection-container">
                                    <strong>Faction:</strong>
                                    <label class = "toggle-rebel-search advanced-search-label">
                                        <input type="checkbox" class="rebel-checkbox advanced-search-checkbox" checked="checked" /> Rebel
                                    </label>
                                    <label class = "toggle-imperial-search advanced-search-label">
                                        <input type="checkbox" class="imperial-checkbox advanced-search-checkbox" checked="checked" /> Imperial
                                    </label>
                                    <label class = "toggle-scum-search advanced-search-label">
                                        <input type="checkbox" class="scum-checkbox advanced-search-checkbox" checked="checked" /> Scum
                                    </label>
                                    <label class = "toggle-fo-search advanced-search-label">
                                        <input type="checkbox" class="fo-checkbox advanced-search-checkbox" checked="checked" /> First Order
                                    </label>
                                    <label class = "toggle-resistance-search advanced-search-label">
                                        <input type="checkbox" class="resistance-checkbox advanced-search-checkbox" checked="checked" /> Resistance
                                    </label>
                                    <label class = "toggle-separatist-search advanced-search-label">
                                        <input type="checkbox" class="separatist-checkbox advanced-search-checkbox" checked="checked" /> Separatist
                                    </label>
                                    <label class = "toggle-republic-search advanced-search-label">
                                        <input type="checkbox" class="republic-checkbox advanced-search-checkbox" checked="checked" /> Republic
                                    </label>
                                    <label class = "toggle-factionless-search advanced-search-label">
                                        <input type="checkbox" class="factionless-checkbox advanced-search-checkbox" checked="checked" /> Factionless
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
                                    <label class = "advanced-search-label toggle-variable-cost-search">
                                        <input type="checkbox" class="variable-point-cost-checkbox advanced-search-checkbox" checked="checked" /> Variable point cost
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
                                <div class = "advanced-search-slot-available-container">
                                    <label class = "advanced-search-label select-available-slots">
                                        <strong>Available slots: </strong>
                                        <select class="advanced-search-selection slot-available-selection" multiple="1" data-placeholder="No slots selected"></select>
                                        <span class="advanced-search-tooltip" tooltip="Search for pilots having all selected slots available."> &#9432 </span>
                                    </label>
                                </div>
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
                                </div>
                                <div class = "advanced-search-misc-container">
                                    <strong>Misc:</strong>
                                    <label class = "advanced-search-label toggle-unique">
                                        <input type="checkbox" class="unique-checkbox advanced-search-checkbox" /> Is unique
                                    </label>
                                    <label class = "advanced-search-label toggle-second-edition">
                                        <input type="checkbox" class="second-edition-checkbox advanced-search-checkbox" /> Second-Edition only
                                        <span class="advanced-search-tooltip" tooltip="Check to exclude cards only obtainable from conversion kits."> &#9432 </span>
                                    </label>
                                </div>
                            </div>
                        </div>
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
                        </div>
                    </div>
                </div>
            </div>
        """

        @card_selector_container = $ @container.find('.xwing-card-browser .card-selector-container')
        @card_viewer_container = $ @container.find('.xwing-card-browser .card-viewer-container')
        @card_viewer_container.hide()
        @card_viewer_placeholder = $ @container.find('.xwing-card-browser .card-viewer-placeholder')
        @advanced_search_button = ($ @container.find('.xwing-card-browser .show-advanced-search'))[0]
        @advanced_search_container = $ @container.find('.xwing-card-browser .advanced-search-container')
        @advanced_search_container.hide()
        @advanced_search_active = false

        @sort_selector = $ @container.find('select.sort-by')
        @sort_selector.select2
            minimumResultsForSearch: -1

        # TODO: Make added inputs easy accessible

        @card_search_text = ($ @container.find('.xwing-card-browser .card-search-text'))[0]
        @faction_selectors = {}
        @faction_selectors["Rebel Alliance"] = ($ @container.find('.xwing-card-browser .rebel-checkbox'))[0]
        @faction_selectors["Scum and Villainy"] = ($ @container.find('.xwing-card-browser .scum-checkbox'))[0]
        @faction_selectors["Galactic Empire"] = ($ @container.find('.xwing-card-browser .imperial-checkbox'))[0]
        @faction_selectors["Resistance"] = ($ @container.find('.xwing-card-browser .resistance-checkbox'))[0]
        @faction_selectors["First Order"] = ($ @container.find('.xwing-card-browser .fo-checkbox'))[0]
        @faction_selectors["Separatist Alliance"] = ($ @container.find('.xwing-card-browser .separatist-checkbox'))[0]
        @faction_selectors["Galactic Republic"] = ($ @container.find('.xwing-card-browser .republic-checkbox'))[0]
        @faction_selectors[undefined] = ($ @container.find('.xwing-card-browser .factionless-checkbox'))[0]
        @minimum_point_costs = ($ @container.find('.xwing-card-browser .minimum-point-cost'))[0]
        @maximum_point_costs = ($ @container.find('.xwing-card-browser .maximum-point-cost'))[0]
        @variable_point_costs = ($ @container.find('.xwing-card-browser .variable-point-cost-checkbox'))[0]
        @second_edition_checkbox = ($ @container.find('.xwing-card-browser .second-edition-checkbox'))[0]
        @unique_checkbox = ($ @container.find('.xwing-card-browser .unique-checkbox'))[0]
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

        @card_search_text.oninput = => @renderList @sort_selector.val()
        # TODO: Add a call to @renderList for added inputs, to start the actual search

        @advanced_search_button.onclick = @toggleAdvancedSearch

        for faction, checkbox of @faction_selectors
            checkbox.onclick = => @renderList @sort_selector.val()
            
        @minimum_point_costs.oninput = => @renderList @sort_selector.val()
        @maximum_point_costs.oninput = => @renderList @sort_selector.val()
        @variable_point_costs.onclick = => @renderList @sort_selector.val()
        @second_edition_checkbox.onclick = => @renderList @sort_selector.val()
        @unique_checkbox.onclick = => @renderList @sort_selector.val()
        @slot_available_selection[0].onchange = => @renderList @sort_selector.val()
        @slot_used_selection[0].onchange = => @renderList @sort_selector.val()
        @recurring_charge.onclick = => @renderList @sort_selector.val()
        @not_recurring_charge.onclick = => @renderList @sort_selector.val()
        @minimum_charge.oninput = => @renderList @sort_selector.val()
        @maximum_charge.oninput = => @renderList @sort_selector.val()
        @minimum_owned_copies.oninput = => @renderList @sort_selector.val()
        @maximum_owned_copies.oninput = => @renderList @sort_selector.val()


    toggleAdvancedSearch: () =>
        if @advanced_search_active
            @advanced_search_container.hide()
        else 
            @advanced_search_container.show()
        @advanced_search_active = not @advanced_search_active
        @renderList @sort_selector.val()

    prepareData: () ->
        @all_cards = []

        for type in TYPES
            if type == 'upgrades'
                @all_cards = @all_cards.concat ( { name: card_data.name, display_name: card_data.display_name, type: exportObj.translate(@language, 'ui', 'upgradeHeader', card_data.slot), data: card_data, orig_type: card_data.slot } for card_name, card_data of exportObj[type] )
            else
                @all_cards = @all_cards.concat ( { name: card_data.name, display_name: card_data.display_name, type: exportObj.translate(@language, 'singular', type), data: card_data, orig_type: exportObj.translate('English', 'singular', type) } for card_name, card_data of exportObj[type] )

        @types = (exportObj.translate(@language, 'types', type) for type in [ 'Pilot' ])
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
        type = card.data 'type'
        data = card.data 'card'
        orig_type = card.data 'orig_type'

        @card_viewer_container.find('.info-name').html """#{if data.unique then "&middot;&nbsp;" else ""}#{if display_name then display_name else name} (#{data.points})#{if data.limited? then " (#{exportObj.translate(@language, 'ui', 'limited')})" else ""}#{if data.epic? then " (#{exportObj.translate(@language, 'ui', 'epic')})" else ""}#{if exportObj.isReleased(data) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
        @card_viewer_container.find('p.info-text').html data.text ? ''
        @card_viewer_container.find('.info-sources').text (exportObj.translate(@language, 'sources', source) for source in data.sources).sort().join(', ')
        switch orig_type
            when 'Pilot'
                ship = exportObj.ships[data.ship]
                @card_viewer_container.find('.info-type').text "#{data.ship} Pilot (#{data.faction})"
                if exportObj.builders[0].collection?.counts?
                    ship_count = exportObj.builders[0].collection.counts?.ship?[data.ship] ? 0
                    pilot_count = exportObj.builders[0].collection.counts?.pilot?[data.name] ? 0
                    @card_viewer_container.find('.info-collection').text """You have #{ship_count} ship model#{if ship_count > 1 then 's' else ''} and #{pilot_count} pilot card#{if pilot_count > 1 then 's' else ''} in your collection."""
                else
                    @card_viewer_container.find('.info-collection').text ''
                @card_viewer_container.find('tr.info-skill td.info-data').text data.skill
                @card_viewer_container.find('tr.info-skill').show()

                @card_viewer_container.find('tr.info-attack td.info-data').text(data.ship_override?.attack ? ship.attack)
                @card_viewer_container.find('tr.info-attack-bullseye td.info-data').text(ship.attackbull)
                @card_viewer_container.find('tr.info-attack-fullfront td.info-data').text(ship.attackf)
                @card_viewer_container.find('tr.info-attack-back td.info-data').text(ship.attackb)
                @card_viewer_container.find('tr.info-attack-turret td.info-data').text(ship.attackt)
                @card_viewer_container.find('tr.info-attack-doubleturret td.info-data').text(ship.attackdt)

                @card_viewer_container.find('tr.info-attack').toggle(ship.attack?)
                @card_viewer_container.find('tr.info-attack-bullseye').toggle(ship.attackbull?)
                @card_viewer_container.find('tr.info-attack-fullfront').toggle(ship.attackf?)
                @card_viewer_container.find('tr.info-attack-back').toggle(ship.attackb?)
                @card_viewer_container.find('tr.info-attack-turret').toggle(ship.attackt?)
                @card_viewer_container.find('tr.info-attack-doubleturret').toggle(ship.attackdt?)
                
                
                
                for cls in @card_viewer_container.find('tr.info-attack td.info-header i.xwing-miniatures-font')[0].classList
                    @card_viewer_container.find('tr.info-attack td.info-header i.xwing-miniatures-font').removeClass(cls) if cls.startsWith('xwing-miniatures-font-attack')
                @card_viewer_container.find('tr.info-attack td.info-header i.xwing-miniatures-font').addClass(ship.attack_icon ? 'xwing-miniatures-font-attack')

                @card_viewer_container.find('tr.info-energy td.info-data').text(data.ship_override?.energy ? ship.energy)
                @card_viewer_container.find('tr.info-energy').toggle(data.ship_override?.energy? or ship.energy?)
                @card_viewer_container.find('tr.info-range').hide()
                @card_viewer_container.find('tr.info-agility td.info-data').text(data.ship_override?.agility ? ship.agility)
                @card_viewer_container.find('tr.info-agility').show()
                @card_viewer_container.find('tr.info-hull td.info-data').text(data.ship_override?.hull ? ship.hull)
                @card_viewer_container.find('tr.info-hull').show()
                @card_viewer_container.find('tr.info-shields td.info-data').text(data.ship_override?.shields ? ship.shields)
                @card_viewer_container.find('tr.info-shields').show()

                if data.force?
                    @card_viewer_container.find('tr.info-force td.info-data').html (data.force + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>') 
                    @card_viewer_container.find('tr.info-force td.info-header').show()
                    @card_viewer_container.find('tr.info-force').show()
                else
                    @card_viewer_container.find('tr.info-force').hide() 

                if data.charge?
                    if data.recurring?
                        @card_viewer_container.find('tr.info-charge td.info-data').html (data.charge + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                    else
                        @card_viewer_container.find('tr.info-charge td.info-data').text data.charge
                    @card_viewer_container.find('tr.info-charge').show()
                else
                    @card_viewer_container.find('tr.info-charge').hide()

                @card_viewer_container.find('tr.info-actions td.info-data').html (((exportObj.translate(@language, 'action', action) for action in exportObj.ships[data.ship].actions).join(', ')).replace(/, <r><i class="xwing-miniatures-font xwing-miniatures-font-linked">/g,' <r><i class="xwing-miniatures-font xwing-miniatures-font-linked">')).replace(/, <i class="xwing-miniatures-font xwing-miniatures-font-linked">/g,' <i class="xwing-miniatures-font xwing-miniatures-font-linked">') #super ghetto double replace for linked actions
                @card_viewer_container.find('tr.info-actions').show()

                if ships[data.ship].actionsred?
                    @card_viewer_container.find('tr.info-actions-red td.info-data').html (exportObj.translate(@language, 'action', action) for action in exportObj.ships[data.ship].actionsred).join(' ')
                    @card_viewer_container.find('tr.info-actions-red').show()
                else
                    @card_viewer_container.find('tr.info-actions-red').hide()

                @card_viewer_container.find('tr.info-upgrades').show()
                @card_viewer_container.find('tr.info-upgrades td.info-data').html((exportObj.translate(@language, 'sloticon', slot) for slot in data.slots).join(' ') or 'None')
            else
                @card_viewer_container.find('.info-type').text type
                @card_viewer_container.find('.info-type').append " &ndash; #{data.faction} only" if data.faction?
                if exportObj.builders[0].collection?.counts?
                    addon_count = exportObj.builders[0].collection.counts.upgrade[data.name] ? 0
                    @card_viewer_container.find('.info-collection').text """You have #{addon_count} in your collection."""
                else
                    @card_viewer_container.find('.info-collection').text ''
                @card_viewer_container.find('tr.info-ship').hide()
                @card_viewer_container.find('tr.info-skill').hide()
                if data.energy?
                    @card_viewer_container.find('tr.info-energy td.info-data').text data.energy
                    @card_viewer_container.find('tr.info-energy').show()
                else
                    @card_viewer_container.find('tr.info-energy').hide()
                if data.attack?
                    @card_viewer_container.find('tr.info-attack td.info-data').text data.attack
                    @card_viewer_container.find('tr.info-attack').show()
                else
                    @card_viewer_container.find('tr.info-attack').hide()
                if data.attackbull?
                    @card_viewer_container.find('tr.info-attack-bullseye td.info-data').text data.attackbull
                    @card_viewer_container.find('tr.info-attack-bullseye').show()
                else
                    @card_viewer_container.find('tr.info-attack-bullseye').hide()
                if data.attackt?
                    @card_viewer_container.find('tr.info-attack-turret td.info-data').text data.attackt
                    @card_viewer_container.find('tr.info-attack-turret').show()
                else
                    @card_viewer_container.find('tr.info-attack-turret').hide()
                if data.range?
                    @card_viewer_container.find('tr.info-range td.info-data').text data.range
                    @card_viewer_container.find('tr.info-range').show()
                else
                    @card_viewer_container.find('tr.info-range').hide()

                if data.force?
                    @card_viewer_container.find('tr.info-force td.info-data').html (data.force + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>') 
                    @card_viewer_container.find('tr.info-force td.info-header').show()
                    @card_viewer_container.find('tr.info-force').show()
                else
                    @card_viewer_container.find('tr.info-force').hide() 

                if data.charge?
                    if data.recurring?
                        @card_viewer_container.find('tr.info-charge td.info-data').html (data.charge + '<i class="xwing-miniatures-font xwing-miniatures-font-recurring"></i>')
                    else
                        @card_viewer_container.find('tr.info-charge td.info-data').text data.charge
                    @card_viewer_container.find('tr.info-charge').show()
                else
                    @card_viewer_container.find('tr.info-charge').hide()
                    
                    
                @card_viewer_container.find('tr.info-attack-fullfront').hide()
                @card_viewer_container.find('tr.info-attack-back').hide()
                @card_viewer_container.find('tr.info-attack-doubleturret').hide()
                @card_viewer_container.find('tr.info-agility').hide()
                @card_viewer_container.find('tr.info-hull').hide()
                @card_viewer_container.find('tr.info-shields').hide()
                @card_viewer_container.find('tr.info-actions').hide()
                @card_viewer_container.find('tr.info-actions-red').hide()
                @card_viewer_container.find('tr.info-upgrades').hide()

        @card_viewer_container.show()
        @card_viewer_placeholder.hide()

    addCardTo: (container, card) ->
        option = $ document.createElement('OPTION')
        option.text "#{if card.display_name then card.display_name else card.name} (#{card.data.points})"
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

        # check if advanced search is enabled
        return true unless @advanced_search_active

        # check if faction matches
        return false unless @faction_selectors[card.data.faction].checked

        # check if second-edition only matches
        return false unless exportObj.secondEditionCheck(card.data) or not @second_edition_checkbox.checked

        # check for slot requirements
        required_slots = @slot_available_selection.val()
        if required_slots
            for slot in required_slots
               return false unless card.data.slots? and slot in card.data.slots

        # check if point costs matches
        return false unless (card.data.points >= @minimum_point_costs.value and card.data.points <= @maximum_point_costs.value) or (@variable_point_costs.checked and card.data.points == "*")

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

        # check charge stuff
        return false unless (card.data.charge? and card.data.charge <= @maximum_charge.value and card.data.charge >= @minimum_charge.value) or (@minimum_charge.value <= 0 and not card.data.charge?)
        return false if card.data.recurring and not @recurring_charge.checked
        return false if card.data.charge and not card.data.recurring and not @not_recurring_charge.checked

        # check collection status
        if exportObj.builders[0].collection?.counts? # ignore collection stuff, if no collection available
            owned_copies = @getCollectionNumber(card)
            return false unless owned_copies >= @minimum_owned_copies.value and owned_copies <= @maximum_owned_copies.value

        #TODO: Add logic of addiditional search criteria here. Have a look at card.data, to see what data is available. Add search inputs at the todo marks above. 

        return true