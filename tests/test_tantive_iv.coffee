common = require './common'

common.setup()


casper.test.begin "Tantive IV title grants crew and team", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setGameType('#rebel-builder', 'epic')

    common.setShipType('#rebel-builder', 1, 'CR90 Corvette (Fore)')
    common.setPilot('#rebel-builder', 1, 'CR90 Corvette (Fore)')
    casper.then ->
        test.assertDoesntExist("#rebel-builder #{common.selectorForUpgradeIndex 1, 9}", "No extra crew slot by default")
        test.assertDoesntExist("#rebel-builder #{common.selectorForUpgradeIndex 1, 10}", "No extra team slot by default")
    common.addUpgrade('#rebel-builder', 1, 7, 'Tantive IV')
    casper.then ->
        test.assertExists("#rebel-builder #{common.selectorForUpgradeIndex 1, 9}", "Extra crew slot added")
        test.assertExists("#rebel-builder #{common.selectorForUpgradeIndex 1, 10}", "Extra team slot added")
    common.removeUpgrade('#rebel-builder', 1, 7)
    casper.then ->
        test.assertDoesntExist("#rebel-builder #{common.selectorForUpgradeIndex 1, 9}", "Extra crew slot rescinded")
        test.assertDoesntExist("#rebel-builder #{common.selectorForUpgradeIndex 1, 10}", "Extra team slot rescinded")

    .run ->
        test.done()
