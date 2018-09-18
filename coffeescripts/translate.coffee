###
    X-Wing Squad Builder 2.0
    Stephen Kim <raithos@gmail.com>
    https://raithos.github.io
###

DFL_LANGUAGE = 'English'

builders = []

exportObj = exports ? this

exportObj.loadCards = (language) ->
    exportObj.cardLoaders[language]()

exportObj.translate = (language, category, what, args...) ->
    translation = exportObj.translations[language][category][what]
    if translation?
        if translation instanceof Function
            # pass this function in case we need to do further translation inside the function
            translation exportObj.translate, language, args...
        else
            translation
    else
        what

exportObj.setupTranslationSupport = ->
    do (builders) ->
        $(exportObj).on 'xwing:languageChanged', (e, language, cb=$.noop) =>
            if language of exportObj.translations
                $('.language-placeholder').text language
                for builder in builders
                    await builder.container.trigger 'xwing:beforeLanguageLoad', defer()
                exportObj.loadCards language
                for own selector, html of exportObj.translations[language].byCSSSelector
                    $(selector).html html
                for builder in builders
                    builder.container.trigger 'xwing:afterLanguageLoad', language

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
        $('ul.dropdown-menu').append li

exportObj.registerBuilderForTranslation = (builder) ->
    builders.push(builder) if builder not in builders
