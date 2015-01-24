common = require './common'

common.setup()


casper.test.begin "Show warning when using Epic ships outside Epic play", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Rookie Pilot'
            upgrades: []
        }
    ])

    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForEpicWarning}")

    common.setGameType('#rebel-builder', 'epic')
    common.addShip('#rebel-builder', 'GR-75 Medium Transport', 'GR-75 Medium Transport')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForEpicWarning}")

    common.setGameType('#rebel-builder', 'team-epic')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForEpicWarning}")

    common.setGameType('#rebel-builder', 'standard')
    casper.then ->
        test.assertVisible("#rebel-builder #{common.selectorForEpicWarning}")

    common.removeShip('#rebel-builder', 2)
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForEpicWarning}")

    common.setGameType('#rebel-builder', 'epic')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForEpicWarning}")

    common.setGameType('#rebel-builder', 'team-epic')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForEpicWarning}")

    common.setGameType('#rebel-builder', 'standard')
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "Warn when using illegal upgrades for Huge ships in Epic play", (test) ->
    # Right now it's just Navigator that's disallowed.

    common.waitForStartup('#rebel-builder')

    common.setGameType('#rebel-builder', 'epic')

    common.createList('#rebel-builder', [
        {
            ship: 'GR-75 Medium Transport'
            pilot: 'GR-75 Medium Transport'
            upgrades: [
                'Gunner'
            ]
        }
    ])

    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")
    common.setGameType('#rebel-builder', 'team-epic')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")
    common.setGameType('#rebel-builder', 'standard')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")

    common.addUpgrade('#rebel-builder', 1, 1, 'Luke Skywalker')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")
    common.setGameType('#rebel-builder', 'epic')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")
    common.setGameType('#rebel-builder', 'team-epic')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")
    common.setGameType('#rebel-builder', 'standard')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")

    common.addUpgrade('#rebel-builder', 1, 1, 'Navigator')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")
    common.setGameType('#rebel-builder', 'epic')
    casper.then ->
        test.assertVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")
    common.setGameType('#rebel-builder', 'team-epic')
    casper.then ->
        test.assertVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")
    common.setGameType('#rebel-builder', 'standard')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForIllegalEpicWarning}")

    common.setGameType('#rebel-builder', 'standard')
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()
