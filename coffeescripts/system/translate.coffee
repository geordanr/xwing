###
    X-Wing Squad Builder 2.5
    Stephen Kim <raithos@gmail.com>
    https://yasb.app
###

DFL_LANGUAGE = 'English' # default language

SHOW_DEBUG_OUT_MISSING_TRANSLATIONS = false

builders = []

exportObj = exports ? this

# TODO: create a reasonable scope for this (e.g. a translation class), so vars like currentLanguage
# and methods like translateToLang are not within exportObj scope

# a language change event will only affect the current language, if it has higher priority than 
# the current languagePriority.
# -1: default language
#  3: browser setting
#  5: default priority (should not be used by now)
#  8: parsed from html header (done in backend)
# 10: backend setting
# 100: manual selection
exportObj.languagePriority = -1

# try to set the current language according to the users choice
try
  (()->
    # we'll guess language from browser settings - unless a better choice has already been made
    if exportObj.languagePriority > 3
        return
    exportObj.currentLanguage = DFL_LANGUAGE
    if exportObj.languagePriority == -1
        return
    # some browses just provide a single navigator.language, some provide an array navigator.languages 
    languageCodes = [navigator.language].concat(navigator.languages)
    for langc in languageCodes
        # strip stuff like -US from en-US
        langc = langc.split('-')[0]
        if langc of exportObj.codeToLanguage
            # assume that exportObj already exists. If it does not, we don't know which languages YASB supports
            exportObj.currentLanguage = exportObj.codeToLanguage[langc]
            # we successfully found a language the user is somewhat happy with. that's cool
            exportObj.languagePriority = 3
            break
   )()
catch all
    exportObj.currentLanguage = DFL_LANGUAGE
    # throw all
    

exportObj.loadCards = (language) ->
    exportObj.cardLoaders[language]()

exportObj.loadRules = (language) ->
    # console.log("Loading rules:")
    # console.log(language)
    if language of exportObj.ruleLoaders
        # console.log("Rules exist")
        if exportObj.rulesLang != language
            # console.log("Not already active, currently was")
            # console.log(exportObj.rulesLang)
            exportObj.ruleLoaders[language]()
            exportObj.rulesLang = language
        return true
    else
        # console.log("Load default instead")
        if exportObj.rulesLang != DFL_LANGUAGE
            # console.log("Not already active")
            exportObj.ruleLoaders[DFL_LANGUAGE]()
            exportObj.rulesLang = DFL_LANGUAGE
        return false

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
        translation = undefined
    if translation?
        if translation instanceof Function
            # pass this function in case we need to do further translation inside the function
            translation exportObj.translate, args...
        else
            translation
    else
        if language != DFL_LANGUAGE
            if SHOW_DEBUG_OUT_MISSING_TRANSLATIONS
                console.log(language + ' translation for ' + String(what) + ' (category ' + String(category) + ') missing')
            exportObj.translateToLang DFL_LANGUAGE, category, what, args...
        else
            what

exportObj.setupTranslationSupport = ->
    do (builders) ->
        $(exportObj).on 'xwing:languageChanged', (e, language, priority=5, cb=$.noop) =>
            # check if priority is high enough to do anything
            if priority == 'reload' # special case - just a reload, no priority change
                null
            # check if a better choice than the requested one has already been made
            else if priority < exportObj.languagePriority
                return
            else
                exportObj.languagePriority = priority
                exportObj.currentLanguage = language
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
    quick_builds = exportObj.basicQuickBuilds()
    exportObj.canonicalizeShipNames basic_cards
    exportObj.ships = basic_cards.ships

    # Set up the common card data (e.g. stats)
    exportObj.setupCommonCardData basic_cards
    exportObj.setupQuickBuilds quick_builds

    # do we need to load dfl as well? Not sure...
    exportObj.loadCards DFL_LANGUAGE
    exportObj.loadRules exportObj.currentLanguage
    if DFL_LANGUAGE != exportObj.currentLanguage
        exportObj.loadCards exportObj.currentLanguage 
    $(exportObj).trigger 'xwing:languageChanged', [exportObj.currentLanguage, 'reload']

exportObj.translateUIElements = (context=undefined) ->
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
                # setting a language manually has pretty high priority
                $(exportObj).trigger 'xwing:languageChanged', [ language, 100 ]
        $('.language-picker .dropdown-menu').append li

exportObj.registerBuilderForTranslation = (builder) ->
    builders.push(builder) if builder not in builders
