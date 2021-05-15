###
    X-Wing Squad Builder 2.0
    Stephen Kim <raithos@gmail.com>
    https://raithos.github.io
###

DFL_LANGUAGE = 'English' # default language

SHOW_DEBUG_OUT_MISSING_TRANSLATIONS = false

builders = []

exportObj = exports ? this

# TODO: create a reasonable scope for this (e.g. a translation class), so vars like currentLanguage
# and methods like translateToLang are not within exportObj scope

# try to set the current language according to the users choice
try
  (()->
    exportObj.currentLanguage = DFL_LANGUAGE
    # some browses just provide a single navigator.language, some provide an array navigator.languages 
    languageCodes = [navigator.language].concat(navigator.languages)
    for langc in languageCodes
        # strip stuff like -US from en-US
        langc = langc.split('-')[0]
        if langc of exportObj.codeToLanguage
            # assume that exportObj already exists. If it does not, we don't know which languages YASB supports
            exportObj.currentLanguage = exportObj.codeToLanguage[langc]
            break
   )()
catch all
    exportObj.currentLanguage = DFL_LANGUAGE
    throw all
    

exportObj.loadCards = (language) ->
    exportObj.cardLoaders[language]()

exportObj.translate = (category, what, args...) -> 
    exportObj.translateToLang(exportObj.currentLanguage, category, what, args...)

# this method should be somewhat private, and not be called outside this file
exportObj.translateToLang = (language, category, what, args...) ->
    try
        translation = exportObj.translations[language][category][what]
    catch all
        # well, guess something went wrong - most likely some translation did not exist in the
        # current language. If that isn't the default language, we'll try that next in belows else block
        # otherwise we just use whatever is the in-code text of the requested translation.
        # Anyway, we want to keep running, so better catch that exception and keep going...
        if SHOW_DEBUG_OUT_MISSING_TRANSLATIONS
            console.log(language + ' translation for ' + String(what) + ' (category ' + String(category) + ') missing')
    if translation?
        if translation instanceof Function
            # pass this function in case we need to do further translation inside the function
            translation exportObj.translate, args...
        else
            translation
    else
        if language != DFL_LANGUAGE
            exportObj.translateToLang DFL_LANGUAGE, category, what, args...
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
                exportObj.translateUIElements()
                for builder in builders
                    builder.container.trigger 'xwing:afterLanguageLoad', language

    # Load cards one time
    basic_cards = exportObj.basicCardData()
    exportObj.canonicalizeShipNames basic_cards
    exportObj.ships = basic_cards.ships

    # Set up the common card data (e.g. stats)
    exportObj.setupCommonCardData basic_cards

    # do we need to load dfl as well? Not sure...
    exportObj.loadCards DFL_LANGUAGE
    exportObj.loadCards exportObj.currentLanguage 
    $(exportObj).trigger 'xwing:languageChanged', exportObj.currentLanguage

exportObj.translateUIElements = (context=undefined) ->
    # todo: remove 
    console.log("Translating for context #{context} into #{exportObj.currentLanguage} requested")
    # translate all UI elements that are marked as translateable
    for translateableNode in $('.translated', context)
        translateableNode.innerHTML = (exportObj.translate('ui', translateableNode.getAttribute('defaultText')))

exportObj.setupTranslationUI = (backend) ->
    for language in Object.keys(exportObj.cardLoaders).sort()
        li = $ document.createElement 'LI'
        li.text language
        do (language, backend) ->
            li.click (e) ->
                backend.set('language', language) if backend?
                exportObj.currentLanguage = language
                $(exportObj).trigger 'xwing:languageChanged', language
        $('.language-picker .dropdown-menu').append li

exportObj.registerBuilderForTranslation = (builder) ->
    builders.push(builder) if builder not in builders