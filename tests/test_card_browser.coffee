common = require './common'

common.setup()


casper.test.begin "Card Browser", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openCardBrowser()
    casper.then ->
        test.assertVisible('.card-viewer-placeholder', "Placeholder text visible at startup")
        test.assertSelectorHasText('.card-viewer-placeholder', 'Select a card from the list at the left.')

    common.selectInCardBrowser('R2 Astromech (1)')
    common.assertInCardBrowserDisplay(test, 'You may treat all 1- and 2-speed maneuvers as green maneuvers.')

    common.selectInCardBrowser('Assault Missiles (5)')
    common.assertInCardBrowserDisplay(test, 'If this attack hits, each other ship at Range 1 of the defender suffers 1 damage.')

    common.selectLanguage('Deutsch')

    common.selectInCardBrowser('Annäherungsminen (3)')
    common.assertInCardBrowserDisplay(test, 'sobald sich die Basis eines Schiffs oder die Manöverschablone mit dem Marker überschneidet')

    common.selectLanguage('English')

    common.selectInCardBrowser('Horton Salm (25)')
    common.assertInCardBrowserDisplay(test, 'When attacking at Range 2-3, you may reroll any of your blank results.')
    common.assertInCardBrowserDisplay(test, 'Y-Wing Pilot (Rebel Alliance)')

    .run ->
        test.done()
