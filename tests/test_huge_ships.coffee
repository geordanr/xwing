common = require './common'

common.setup()


casper.test.begin "Huge ships can not mount modifications unless allowed", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'GR-75 Medium Transport', 'GR-75 Medium Transport')
    common.addShip('#rebel-builder', 'CR90 Corvette (Fore)', 'CR90 Corvette (Fore)')
    common.addShip('#rebel-builder', 'CR90 Corvette (Aft)', 'CR90 Corvette (Aft)')

    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex(1, 7)}", 'Shield Upgrade')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex(2, 8)}", 'Shield Upgrade')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex(3, 5)}", 'Shield Upgrade')

    common.removeShip("#rebel-builder", 1)
    common.removeShip("#rebel-builder", 1)
    common.removeShip("#rebel-builder", 1)

    # TODO: Add test for a huge-only modification when it comes out


    .run ->
        test.done()

casper.test.begin "Huge-only crew", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'CR90 Corvette (Fore)', 'CR90 Corvette (Fore)')
    common.addShip('#rebel-builder', 'YT-1300', 'Chewbacca')

    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex(2, 3)}", 'Toryn Farr')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex(2, 4)}", 'Toryn Farr')

    common.addUpgrade("#rebel-builder", 1, 1, "Toryn Farr")
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Toryn Farr')

    common.removeShip("#rebel-builder", 1)
    common.removeShip("#rebel-builder", 1)

    # TODO: Add test for a huge-only modification when it comes out


    .run ->
        test.done()
