###
    X-Wing Card Browser
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
###
exportObj = exports ? this

# Assumes cards.js has been loaded

TYPES = [ 'pilots', 'upgrades', 'modifications', 'titles' ]
TYPE_TO_SINGULAR =
    'pilots': 'Pilot'
    'modifications': 'Modification'
    'titles': 'Title'

byName = (a, b) ->
    a_name = a.name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '')
    b_name = b.name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '')
    if a_name < b_name
        -1
    else if b_name < a_name
        1
    else
        0

String::capitalize = ->
    this.charAt(0).toUpperCase() + this.slice(1)

class exportObj.CardBrowser
    constructor: (args) ->
        # args
        @container = $ args.container

        # internals
        @currently_selected = null

        @prepareData()

        @setupUI()
        @setupHandlers()

        @sort_selector.change()

    setupUI: () ->
        @container.append $.trim """
            <div class="container-fluid xwing-card-browser">
                <div class="row-fluid">
                    <div class="span12">
                        Sort cards by: <select class="sort-by">
                            <option value="name">Name</option>
                            <option value="source">Source</option>
                            <option value="type" selected="1">Type</option>
                        </select>
                    </div>
                </div>
                <div class="row-fluid">
                    <div class="span4 card-selector-container">

                    </div>
                    <div class="span8">
                        <div class="well card-viewer-placeholder info-well">
                            <p>Select a card from the list at the left.</p>
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
                                        <td>Skill</td>
                                        <td class="info-data info-skill"></td>
                                    </tr>
                                    <tr class="info-attack">
                                        <td><img class="icon-attack" src="images/transparent.png" alt="Attack" /></td>
                                        <td class="info-data info-attack"></td>
                                    </tr>
                                    <tr class="info-range">
                                        <td>Range</td>
                                        <td class="info-data info-range"></td>
                                    </tr>
                                    <tr class="info-agility">
                                        <td><img class="icon-agility" src="images/transparent.png" alt="Agility" /></td>
                                        <td class="info-data info-agility"></td>
                                    </tr>
                                    <tr class="info-hull">
                                        <td><img class="icon-hull" src="images/transparent.png" alt="Hull" /></td>
                                        <td class="info-data info-hull"></td>
                                    </tr>
                                    <tr class="info-shields">
                                        <td><img class="icon-shields" src="images/transparent.png" alt="Shields" /></td>
                                        <td class="info-data info-shields"></td>
                                    </tr>
                                    <tr class="info-actions">
                                        <td>Actions</td>
                                        <td class="info-data"></td>
                                    </tr>
                                    <tr class="info-upgrades">
                                        <td>Upgrades</td>
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

    prepareData: () ->
        @all_cards = []

        for type in TYPES
            if type == 'upgrades'
                @all_cards = @all_cards.concat ( { name: card_name, type: "#{card_data.slot} Upgrade", data: card_data } for card_name, card_data of exportObj[type] )
            else
                @all_cards = @all_cards.concat ( { name: card_name, type: TYPE_TO_SINGULAR[type], data: card_data } for card_name, card_data of exportObj[type] )

        @types = [ 'Pilot', 'Modification', 'Title' ]
        for card_name, card_data of exportObj.upgrades
            @types.push "#{card_data.slot} Upgrade" if "#{card_data.slot} Upgrade" not in @types

        @all_cards.sort byName

        @sources = []
        for card in @all_cards
            for source in card.data.sources
                @sources.push(source) if source not in @sources

        @cards_by_type = {}
        for type in @types.sort()
            @cards_by_type[type] = ( card for card in @all_cards when card.type == type ).sort byName

        @cards_by_source = {}
        for source in @sources
            @cards_by_source[source] = ( card for card in @all_cards when source in card.data.sources ).sort byName


    renderList: (sort_by='name') ->
        # sort_by is one of `name`, `type`, `source`
        #
        # Renders multiselect to container
        # Selects previously selected card if there is one
        @card_selector.remove() if @card_selector?
        @card_selector = $ document.createElement('SELECT')
        @card_selector.addClass 'card-selector'
        @card_selector.attr 'size', 25
        @card_selector_container.append @card_selector

        switch sort_by
            when 'type'
                for type in @types
                    optgroup = $ document.createElement('OPTGROUP')
                    optgroup.attr 'label', type
                    @card_selector.append optgroup

                    for card in @cards_by_type[type]
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

        @card_viewer_container.find('.info-name').text "#{name} (#{data.points})"
        @card_viewer_container.find('p.info-text').html data.text ? ''
        @card_viewer_container.find('.info-sources').text data.sources.sort().join(', ')
        switch type
            when 'Pilot'
                ship = exportObj.ships[data.ship]
                @card_viewer_container.find('.info-type').text "#{data.ship} Pilot (#{ship.faction})"
                @card_viewer_container.find('tr.info-skill td.info-data').text data.skill
                @card_viewer_container.find('tr.info-skill').show()
                @card_viewer_container.find('tr.info-attack td.info-data').text(data.ship_override?.attack ? ship.attack)
                @card_viewer_container.find('tr.info-attack').show()
                @card_viewer_container.find('tr.info-range').hide()
                @card_viewer_container.find('tr.info-agility td.info-data').text(data.ship_override?.agility ? ship.agility)
                @card_viewer_container.find('tr.info-agility').show()
                @card_viewer_container.find('tr.info-hull td.info-data').text(data.ship_override?.hull ? ship.hull)
                @card_viewer_container.find('tr.info-hull').show()
                @card_viewer_container.find('tr.info-shields td.info-data').text(data.ship_override?.shields ? ship.shields)
                @card_viewer_container.find('tr.info-shields').show()
                @card_viewer_container.find('tr.info-actions td.info-data').text exportObj.ships[data.ship].actions.join(', ')
                @card_viewer_container.find('tr.info-actions').show()
                @card_viewer_container.find('tr.info-upgrades').show()
                @card_viewer_container.find('tr.info-upgrades td.info-data').text(data.slots.join(', ') or 'None')
            else
                @card_viewer_container.find('.info-type').text type
                @card_viewer_container.find('.info-type').append " &ndash; #{data.faction} only" if data.faction?
                @card_viewer_container.find('tr.info-ship').hide()
                @card_viewer_container.find('tr.info-skill').hide()
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
                @card_viewer_container.find('tr.info-upgrades').hide()

        @card_viewer_container.show()
        @card_viewer_placeholder.hide()

    addCardTo: (container, card) ->
        option = $ document.createElement('OPTION')
        option.text "#{card.name} (#{card.data.points})"
        option.data 'name', card.name
        option.data 'type', card.type
        option.data 'card', card.data
        $(container).append option
