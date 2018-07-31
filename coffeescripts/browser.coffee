###
    X-Wing Card Browser
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
###
exportObj = exports ? this

# Assumes cards.js has been loaded

TYPES = [ 'pilots', 'upgrades', 'modifications', 'titles' ]

byName = (a, b) ->
    a_name = a.name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '')
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
                        <div class="well card-viewer-placeholder info-well">
                            <p class="translate select-a-card">Select a card from the list at the left.</p>
                        </div>
                        <div class="well card-viewer-container info-well">
                            <span class="info-name"></span>
                            <br />
                            <span class="info-type"></span>
                            <br />
                            <span class="info-sources"></span>
                            <table>
                                <tbody>
                                    <tr class="info-skill">
                                        <td class="info-header">Skill</td>
                                        <td class="info-data info-skill"></td>
                                    </tr>
                                    <tr class="info-energy">
                                        <td class="info-header"><i class="xwing-miniatures-font xwing-miniatures-font-energy"></i></td>
                                        <td class="info-data info-energy"></td>
                                    </tr>
                                    <tr class="info-attack">
                                        <td class="info-header"><i class="xwing-miniatures-font xwing-miniatures-font-attack"></i></td>
                                        <td class="info-data info-attack"></td>
                                    <tr class="info-attack-back">
                                        <td class="info-header"><i class="xwing-miniatures-font xwing-miniatures-font-attack"></i></td>
                                        <td class="info-data info-attack"></td>
                                    <tr class="info-attack-turret">
                                        <td class="info-header"><i class="xwing-miniatures-font xwing-miniatures-font-attack"></i></td>
                                        <td class="info-data info-attack"></td>
                                    <tr class="info-attack-doubleturret">
                                        <td class="info-header"><i class="xwing-miniatures-font xwing-miniatures-font-attack"></i></td>
                                        <td class="info-data info-attack"></td>
                                    </tr>
                                    <tr class="info-range">
                                        <td class="info-header">Range</td>
                                        <td class="info-data info-range"></td>
                                    </tr>
                                    <tr class="info-agility">
                                        <td class="info-header"><i class="xwing-miniatures-font xwing-miniatures-font-agility"></i></td>
                                        <td class="info-data info-agility"></td>
                                    </tr>
                                    <tr class="info-hull">
                                        <td class="info-header"><i class="xwing-miniatures-font xwing-miniatures-font-hull"></i></td>
                                        <td class="info-data info-hull"></td>
                                    </tr>
                                    <tr class="info-shields">
                                        <td class="info-header"><i class="xwing-miniatures-font xwing-miniatures-font-shield"></i></td>
                                        <td class="info-data info-shields"></td>
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

        @sort_selector = $ @container.find('select.sort-by')
        @sort_selector.select2
            minimumResultsForSearch: -1

    setupHandlers: () ->
        @sort_selector.change (e) =>
            @renderList @sort_selector.val()

        $(window).on 'xwing:afterLanguageLoad', (e, language, cb=$.noop) =>
            @language = language
            @prepareData()
            @renderList @sort_selector.val()

    prepareData: () ->
        @all_cards = []

        for type in TYPES
            if type == 'upgrades'
                @all_cards = @all_cards.concat ( { name: card_data.name, type: exportObj.translate(@language, 'ui', 'upgradeHeader', card_data.slot), data: card_data, orig_type: card_data.slot } for card_name, card_data of exportObj[type] )
            else
                @all_cards = @all_cards.concat ( { name: card_data.name, type: exportObj.translate(@language, 'singular', type), data: card_data, orig_type: exportObj.translate('English', 'singular', type) } for card_name, card_data of exportObj[type] )

        @types = (exportObj.translate(@language, 'types', type) for type in [ 'Pilot', 'Modification', 'Title' ])
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
                    @card_selector.append optgroup

                    for card in @cards_by_type_name[type]
                        @addCardTo optgroup, card
            when 'type-by-points'
                for type in @types
                    optgroup = $ document.createElement('OPTGROUP')
                    optgroup.attr 'label', type
                    @card_selector.append optgroup

                    for card in @cards_by_type_points[type]
                        @addCardTo optgroup, card
            when 'source'
                for source in @sources
                    optgroup = $ document.createElement('OPTGROUP')
                    optgroup.attr 'label', source
                    @card_selector.append optgroup

                    for card in @cards_by_source[source]
                        @addCardTo optgroup, card
            else
                for card in @all_cards
                    @addCardTo @card_selector, card

        @card_selector.change (e) =>
            @renderCard $(@card_selector.find(':selected'))

    renderCard: (card) ->
        # Renders card to card container
        name = card.data 'name'
        type = card.data 'type'
        data = card.data 'card'
        orig_type = card.data 'orig_type'

        @card_viewer_container.find('.info-name').html """#{if data.unique then "&middot;&nbsp;" else ""}#{name} (#{data.points})#{if data.limited? then " (#{exportObj.translate(@language, 'ui', 'limited')})" else ""}#{if data.epic? then " (#{exportObj.translate(@language, 'ui', 'epic')})" else ""}#{if exportObj.isReleased(data) then "" else " (#{exportObj.translate(@language, 'ui', 'unreleased')})"}"""
        @card_viewer_container.find('p.info-text').html data.text ? ''
        @card_viewer_container.find('.info-sources').text (exportObj.translate(@language, 'sources', source) for source in data.sources).sort().join(', ')
        switch orig_type
            when 'Pilot'
                ship = exportObj.ships[data.ship]
                @card_viewer_container.find('.info-type').text "#{data.ship} Pilot (#{data.faction})"
                @card_viewer_container.find('tr.info-skill td.info-data').text data.skill
                @card_viewer_container.find('tr.info-skill').show()
                @card_viewer_container.find('tr.info-attack td.info-data').text(data.ship_override?.attack ? ship.attack)
                @card_viewer_container.find('tr.info-attack').toggle(data.ship_override?.attack? or ship.attack?)
                
                @card_viewer_container.find('tr.info-attack-back td.info-data').text(ship.attackb)
                @card_viewer_container.find('tr.info-attack-turret td.info-data').text(ship.attackt)
                @card_viewer_container.find('tr.info-attack-doubleturret td.info-data').text(ship.attackdt)

                @card_viewer_container.find('tr.info-attack-back td.info-data').toggle(ship.attackb?)
                @card_viewer_container.find('tr.info-attack-turret td.info-data').toggle(ship.attackt?)
                @card_viewer_container.find('tr.info-attack-doubleturret td.info-data').toggle(ship.attackdt?)
            
                
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

                @card_viewer_container.find('tr.info-force td.info-data').text(data.ship_override?.shields)
                @card_viewer_container.find('tr.info-force').toggle(data.ship_override?.shields?)
                
                @card_viewer_container.find('tr.info-actions td.info-data').text (exportObj.translate(@language, 'action', action) for action in exportObj.ships[data.ship].actions).join(', ')

                if ships[data.ship].actionsred?
                    @card_viewer_container.find('tr.info-actions-red td.info-data-red').text (exportObj.translate(@language, 'action', action) for action in exportObj.ships[data.ship].actionsred).join(', ')
                    @card_viewer_container.find('tr.info-actions-red').show()
                else
                    @card_viewer_container.find('tr.info-actions-red').hide()

                @card_viewer_container.find('tr.info-actions').show()
                @card_viewer_container.find('tr.info-upgrades').show()
                @card_viewer_container.find('tr.info-upgrades td.info-data').text((exportObj.translate(@language, 'slot', slot) for slot in data.slots).join(', ') or 'None')
            else
                @card_viewer_container.find('.info-type').text type
                @card_viewer_container.find('.info-type').append " &ndash; #{data.faction} only" if data.faction?
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
                if data.range?
                    @card_viewer_container.find('tr.info-range td.info-data').text data.range
                    @card_viewer_container.find('tr.info-range').show()
                else
                    @card_viewer_container.find('tr.info-range').hide()
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
        option.text "#{card.name} (#{card.data.points})"
        option.data 'name', card.name
        option.data 'type', card.type
        option.data 'card', card.data
        option.data 'orig_type', card.orig_type
        $(container).append option
