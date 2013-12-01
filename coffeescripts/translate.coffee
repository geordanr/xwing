###
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
###
DFL_LANGUAGE = 'English'

exportObj = exports ? this

exportObj.loadCards = (language) ->
    exportObj.cardLoaders[language]()

exportObj.translate = (language, category, what, args...) ->
    translation = exportObj.translations[language][category][what]
    if translation instanceof Function
        # pass this function in case we need to do further translation inside the function
        translation exportObj.translate, language, args...
    else
        translation

exportObj.setupTranslationSupport = ->
    for language in Object.keys(exportObj.cardLoaders).sort()
        li = $ document.createElement 'LI'
        li.text language
        do (language) ->
            li.click (e) ->
                $(exportObj).trigger 'xwing:languageChanged', language
        $('ul.dropdown-menu').append li

    $(exportObj).on 'xwing:languageChanged', (e, language, cb=$.noop) =>
        $('.language-placeholder').text language
        await $(exportObj).trigger 'xwing:beforeLanguageLoad', defer()
        exportObj.loadCards language
        for own selector, html of exportObj.translations[language].byCSSSelector
            $(selector).html html
        $(exportObj).trigger 'xwing:afterLanguageLoad', language

    exportObj.loadCards DFL_LANGUAGE
    $(exportObj).trigger 'xwing:languageChanged', DFL_LANGUAGE
