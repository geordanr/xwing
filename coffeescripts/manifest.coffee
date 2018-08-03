exportObj = exports ? this

String::startsWith ?= (t) ->
    @indexOf t == 0

sortWithoutQuotes = (a, b) ->
    a_name = a.replace /[^a-z0-9]/ig, ''
    b_name = b.replace /[^a-z0-9]/ig, ''
    if a_name < b_name
        -1
    else if a_name > b_name
        1
    else
        0

exportObj.manifestByExpansion =
    'Core': [
        {
            name: 'X-Wing'
            type: 'ship'
            count: 1
        }
    ]
    'X-Wing Expansion Pack': [
        {
            name: 'X-Wing'
            type: 'ship'
            count: 1
        }
    ]
    'Y-Wing Expansion Pack': [
        {
            name: 'Y-Wing'
            type: 'ship'
            count: 1
        }
    ]
    'TIE Fighter Expansion Pack': [
        {
            name: 'TIE Fighter'
            type: 'ship'
            count: 1
        }
    ]
    'TIE Advanced Expansion Pack': [
        {
            name: 'TIE Advanced'
            type: 'ship'
            count: 1
        }
    ]
    'A-Wing Expansion Pack': [
        {
            name: 'A-Wing'
            type: 'ship'
            count: 1
        }
    ]
    'Millennium Falcon Expansion Pack': [
        {
            name: 'YT-1300'
            type: 'ship'
            count: 1
        }
    ]
    'TIE Interceptor Expansion Pack': [
        {
            name: 'TIE Interceptor'
            type: 'ship'
            count: 1
        }
    ]
    'Slave I Expansion Pack': [
        {
            name: 'Firespray-31'
            type: 'ship'
            count: 1
        }
    ]
    'B-Wing Expansion Pack': [
        {
            name: 'B-Wing'
            type: 'ship'
            count: 1
        }
    ]
    "HWK-290 Expansion Pack": [
        {
            name: 'HWK-290'
            type: 'ship'
            count: 1
        }
    ]
    "TIE Bomber Expansion Pack": [
        {
            name: 'TIE Bomber'
            type: 'ship'
            count: 1
        }
    ]
    "Lambda-Class Shuttle Expansion Pack": [
        {
            name: 'Lambda-Class Shuttle'
            type: 'ship'
            count: 1
        }
    ]
    "Z-95 Headhunter Expansion Pack": [
        {
            name: 'Z-95 Headhunter'
            type: 'ship'
            count: 1
        }
    ]
    'E-Wing Expansion Pack': [
        {
            name: 'E-Wing'
            type: 'ship'
            count: 1
        }
    ]
    'TIE Defender Expansion Pack': [
        {
            name: 'TIE Defender'
            type: 'ship'
            count: 1
        }
    ]
    'TIE Phantom Expansion Pack': [
        {
            name: 'TIE Phantom'
            type: 'ship'
            count: 1
        }
    ]
    'YT-2400 Freighter Expansion Pack': [
        {
            name: 'YT-2400'
            type: 'ship'
            count: 1
        }
    ]
    "VT-49 Decimator Expansion Pack": [
        {
            name: 'VT-49 Decimator'
            type: 'ship'
            count: 1
        }
    ]
    'Imperial Aces Expansion Pack': [
        {
            name: 'TIE Interceptor'
            type: 'ship'
            count: 2
        }
    ]
    'Rebel Aces Expansion Pack': [
        {
            name: 'A-Wing'
            type: 'ship'
            count: 1
        }
    ]
    'StarViper Expansion Pack': [
        {
            name: 'StarViper'
            type: 'ship'
            count: 1
        }
    ]
    "M3-A Interceptor Expansion Pack": [
        {
            name: 'M3-A Interceptor'
            type: 'ship'
            count: 1
        }
    ]
    "IG-2000 Expansion Pack": [
        {
            name: 'Aggressor'
            type: 'ship'
            count: 1
        }
    ]
    "Most Wanted Expansion Pack": [
        {
            name: 'Z-95 Headhunter'
            type: 'ship'
            count: 2
        }
    ]
    "Hound's Tooth Expansion Pack": [
        {
            name: 'YV-666'
            type: 'ship'
            count: 1
        }
    ]
    'Kihraxz Fighter Expansion Pack': [
        {
            name: 'Kihraxz Fighter'
            type: 'ship'
            count: 1
        }
    ]
    'K-Wing Expansion Pack': [
        {
            name: 'K-Wing'
            type: 'ship'
            count: 1
        }
    ]
    'TIE Punisher Expansion Pack': [
        {
            name: 'TIE Punisher'
            type: 'ship'
            count: 1
        }
    ]
    'Ghost Expansion Pack': [
        {
            name: 'VCX-100'
            type: 'ship'
            count: 1
        }
    ]
    'Punishing One Expansion Pack': [
        {
            name: 'JumpMaster 5000'
            type: 'ship'
            count: 1
        }
    ]
    'Mist Hunter Expansion Pack': [
        {
            name: 'G-1A Starfighter'
            type: 'ship'
            count: 1
        }
    ]
    "Lando Calrissian's Millenium Falcon": [
        {
            name: 'Escape Craft'
            type: 'ship'
            count: 1
        }
    ]


class exportObj.Collection
    # collection = new exportObj.Collection
    #   expansions:
    #     "Core": 2
    #     "TIE Fighter Expansion Pack": 4
    #     "B-Wing Expansion Pack": 2
    #   singletons:
    #     ship:
    #       "T-70 X-Wing": 1
    #     pilot:
    #       "Academy Pilot": 16
    #     upgrade:
    #       "C-3PO": 4
    #       "Gunner": 5
    #     modification:
    #       "Engine Upgrade": 2
    #     title:
    #       "TIE/x1": 1
    #
    # # or
    #
    # collection = exportObj.Collection.load(backend)
    #
    # collection.use "pilot", "Red Squadron Pilot"
    # collection.use "upgrade", "R2-D2"
    # collection.use "upgrade", "Ion Pulse Missiles" # returns false
    #
    # collection.release "pilot", "Red Squadron Pilot"
    # collection.release "pilot", "Sigma Squadron Pilot" # returns false

    constructor: (args) ->
        @expansions = args.expansions ? {}
        @singletons = args.singletons ? {}
        # To save collection (optional)
        @backend = args.backend

        @setupUI()
        @setupHandlers()

        @reset()

        @language = 'English'

    reset: ->
        @shelf = {}
        @table = {}
        for expansion, count of @expansions
            try
                count = parseInt count
            catch
                count = 0
            for _ in [0...count]
                for card in (exportObj.manifestByExpansion[expansion] ? [])
                    for _ in [0...card.count]
                        ((@shelf[card.type] ?= {})[card.name] ?= []).push expansion

        for type, counts of @singletons
            for name, count of counts
                for _ in [0...count]
                    ((@shelf[type] ?= {})[name] ?= []).push 'singleton'

        @counts = {}
        for own type of @shelf
            for own thing of @shelf[type]
                (@counts[type] ?= {})[thing] ?= 0
                @counts[type][thing] += @shelf[type][thing].length

        component_content = $ @modal.find('.collection-inventory-content')
        component_content.text ''
        for own type, things of @counts
            contents = component_content.append $.trim """
                <div class="row-fluid">
                    <div class="span12"><h5>#{type.capitalize()}</h5></div>
                </div>
                <div class="row-fluid">
                    <ul id="counts-#{type}" class="span12"></ul>
                </div>
            """
            ul = $ contents.find("ul#counts-#{type}")
            for thing in Object.keys(things).sort(sortWithoutQuotes)
                ul.append """<li>#{thing} - #{things[thing]}</li>"""

    fixName: (name) ->
        # Special case handling for Heavy Scyk :(
        if name.indexOf('"Heavy Scyk" Interceptor') == 0
            '"Heavy Scyk" Interceptor'
        else
            name

    check: (where, type, name) ->
        (((where[type] ? {})[@fixName name] ? []).length ? 0) != 0

    checkShelf: (type, name) ->
        @check @shelf, type, name

    checkTable: (type, name) ->
        @check @table, type, name

    use: (type, name) ->
        name = @fixName name
        try
            card = @shelf[type][name].pop()
        catch e
            return false unless card?

        if card?
            ((@table[type] ?= {})[name] ?= []).push card
            true
        else
            false

    release: (type, name) ->
        name = @fixName name
        try
            card = @table[type][name].pop()
        catch e
            return false unless card?

        if card?
            ((@shelf[type] ?= {})[name] ?= []).push card
            true
        else
            false

    save: (cb=$.noop) ->
        @backend.saveCollection(this, cb) if @backend?

    @load: (backend, cb) ->
        backend.loadCollection cb

    setupUI: ->
        # Create list of released singletons
        singletonsByType = {}
        for expname, items of exportObj.manifestByExpansion
            for item in items
                (singletonsByType[item.type] ?= {})[item.name] = true
        for type, names of singletonsByType
            sorted_names = (name for name of names).sort(sortWithoutQuotes)
            singletonsByType[type] = sorted_names

        @modal = $ document.createElement 'DIV'
        @modal.addClass 'modal hide fade collection-modal hidden-print'
        $('body').append @modal
        @modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close hidden-print" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4>Your Collection</h4>
            </div>
            <div class="modal-body">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-target="#collection-expansions" data-toggle="tab">Expansions</a><li>
                    <li><a data-target="#collection-ships" data-toggle="tab">Ships</a><li>
                    <li><a data-target="#collection-pilots" data-toggle="tab">Pilots</a><li>
                    <li><a data-target="#collection-upgrades" data-toggle="tab">Upgrades</a><li>
                    <li><a data-target="#collection-modifications" data-toggle="tab">Mods</a><li>
                    <li><a data-target="#collection-titles" data-toggle="tab">Titles</a><li>
                    <li><a data-target="#collection-components" data-toggle="tab">Inventory</a><li>
                </ul>
                <div class="tab-content">
                    <div id="collection-expansions" class="tab-pane active container-fluid collection-content"></div>
                    <div id="collection-ships" class="tab-pane active container-fluid collection-ship-content"></div>
                    <div id="collection-pilots" class="tab-pane active container-fluid collection-pilot-content"></div>
                    <div id="collection-upgrades" class="tab-pane active container-fluid collection-upgrade-content"></div>
                    <div id="collection-modifications" class="tab-pane active container-fluid collection-modification-content"></div>
                    <div id="collection-titles" class="tab-pane active container-fluid collection-title-content"></div>
                    <div id="collection-components" class="tab-pane container-fluid collection-inventory-content"></div>
                </div>
            </div>
            <div class="modal-footer hidden-print">
                <span class="collection-status"></span>
                &nbsp;
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @modal_status = $ @modal.find('.collection-status')

        collection_content = $ @modal.find('.collection-content')
        for expansion in exportObj.expansions
            count = parseInt(@expansions[expansion] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="expansion-count" type="number" size="3" value="#{count}" />
                            <span class="expansion-name">#{expansion}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'expansion', expansion
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.expansion-name').data 'english_name', expansion
            collection_content.append row

        shipcollection_content = $ @modal.find('.collection-ship-content')
        for ship in singletonsByType.ship
            count = parseInt(@singletons.ship?[ship] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="ship-name">#{ship}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'ship'
            input.data 'singletonName', ship
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.ship-name').data 'english_name', expansion
            shipcollection_content.append row

        pilotcollection_content = $ @modal.find('.collection-pilot-content')
        for pilot in singletonsByType.pilot
            count = parseInt(@singletons.pilot?[pilot] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="pilot-name">#{pilot}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'pilot'
            input.data 'singletonName', pilot
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.pilot-name').data 'english_name', expansion
            pilotcollection_content.append row

        upgradecollection_content = $ @modal.find('.collection-upgrade-content')
        for upgrade in singletonsByType.upgrade
            count = parseInt(@singletons.upgrade?[upgrade] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="upgrade-name">#{upgrade}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'upgrade'
            input.data 'singletonName', upgrade
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.upgrade-name').data 'english_name', expansion
            upgradecollection_content.append row

        modificationcollection_content = $ @modal.find('.collection-modification-content')
        for modification in singletonsByType.modification
            count = parseInt(@singletons.modification?[modification] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="modification-name">#{modification}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'modification'
            input.data 'singletonName', modification
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.modification-name').data 'english_name', expansion
            modificationcollection_content.append row

        titlecollection_content = $ @modal.find('.collection-title-content')
        for title in singletonsByType.title
            count = parseInt(@singletons.title?[title] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="title-name">#{title}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'title'
            input.data 'singletonName', title
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.title-name').data 'english_name', expansion
            titlecollection_content.append row

    destroyUI: ->
        @modal.modal 'hide'
        @modal.remove()
        $(exportObj).trigger 'xwing-collection:destroyed', this

    setupHandlers: ->
        $(exportObj).trigger 'xwing-collection:created', this

        $(exportObj).on 'xwing-backend:authenticationChanged', (e, authenticated, backend) =>
            # console.log "deauthed, destroying collection UI"
            @destroyUI() unless authenticated
        .on 'xwing-collection:saved', (e, collection) =>
            @modal_status.text 'Collection saved'
            @modal_status.fadeIn 100, =>
                @modal_status.fadeOut 5000
        .on 'xwing:languageChanged', @onLanguageChange

        $ @modal.find('input.expansion-count').change (e) =>
            target = $(e.target)
            val = target.val()
            target.val(0) if val < 0 or isNaN(parseInt(val))
            @expansions[target.data 'expansion'] = parseInt(target.val())

            target.closest('div').css 'background-color', @countToBackgroundColor(val)

            # console.log "Input changed, triggering collection change"
            $(exportObj).trigger 'xwing-collection:changed', this

        $ @modal.find('input.singleton-count').change (e) =>
            target = $(e.target)
            val = target.val()
            target.val(0) if val < 0 or isNaN(parseInt(val))
            (@singletons[target.data 'singletonType'] ?= {})[target.data 'singletonName'] = parseInt(target.val())

            target.closest('div').css 'background-color', @countToBackgroundColor(val)

            # console.log "Input changed, triggering collection change"
            $(exportObj).trigger 'xwing-collection:changed', this

    countToBackgroundColor: (count) ->
        count = parseInt(count)
        switch
            when count == 0
                ''
            when count < 12
                i = parseInt(200 * Math.pow(0.9, count - 1))
                "rgb(#{i}, 255, #{i})"
            else
                'red'

    onLanguageChange:
        (e, language) =>
            if language != @language
                # console.log "language changed to #{language}"
                do (language) =>
                    @modal.find('.expansion-name').each ->
                        # console.log "translating #{$(this).text()} (#{$(this).data('english_name')}) to #{language}"
                        $(this).text exportObj.translate language, 'sources', $(this).data('english_name')
                @language = language
