###
    X-Wing Squad Builder 2.0
    Stephen Kim <raithos@gmail.com>
    https://raithos.github.io
###

DFL_LANGUAGE = 'English' # default language

builders = []

exportObj = exports ? this

exportObj.loadCards = (language) ->
    exportObj.cardLoaders[language]()

exportObj.translate = (language, category, what, args...) ->
    try
        translation = exportObj.translations[language][category][what]
    catch all
        # Most likely some translation did not exist. If we are already in default language, that's bad. 
        # Otherwise we just continue and try to get the english translation in belows else block.
        if not all instanceof TypeError or language == DFL_LANGUAGE
            console.log(category)
            console.log(what)
            throw all
    if translation?
        if translation instanceof Function
            # pass this function in case we need to do further translation inside the function
            translation exportObj.translate, language, args...
        else
            translation
    else
        if language != DFL_LANGUAGE
            exportObj.translate DFL_LANGUAGE, category, what, args...
        else
            what

exportObj.setupTranslationSupport = ->
    do (builders) ->
        $(exportObj).on 'xwing:languageChanged', (e, language, cb=$.noop) =>
            if language of exportObj.translations
                $('.language-placeholder').text language
                current_language = ""
                for builder in builders
                    current_language = builder.language
                    await builder.container.trigger 'xwing:beforeLanguageLoad', defer()
                if language != current_language
                    exportObj.loadCards language
                for own selector, html of exportObj.translations[language].byCSSSelector
                    $(selector).html html
                for builder in builders
                    builder.container.trigger 'xwing:afterLanguageLoad', language

    # Load cards one time
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards
    exportObj.ships = basic_cards.ships

    # Set up the common card data (e.g. stats)
    exportObj.setupCommonCardData basic_cards

    exportObj.loadCards DFL_LANGUAGE
    $(exportObj).trigger 'xwing:languageChanged', DFL_LANGUAGE

exportObj.setupTranslationUI = (backend) ->
    for language in Object.keys(exportObj.cardLoaders).sort()
        li = $ document.createElement 'LI'
        li.text language
        do (language, backend) ->
            li.click (e) ->
                backend.set('language', language) if backend?
                $(exportObj).trigger 'xwing:languageChanged', language
        $('.language-picker .dropdown-menu').append li

exportObj.registerBuilderForTranslation = (builder) ->
    builders.push(builder) if builder not in builders
