common = require './common'

common.setup()


casper.test.begin "Huge ships can not mount modifications unless allowed", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setGameType('#rebel-builder', 'epic')

    common.addShip('#rebel-builder', 'GR-75 Medium Transport', 'GR-75 Medium Transport')
    common.addShip('#rebel-builder', 'CR90 Corvette (Fore)', 'CR90 Corvette (Fore)')
    common.addShip('#rebel-builder', 'CR90 Corvette (Aft)', 'CR90 Corvette (Aft)')

    common.assertSelect2IsEmpty(test, "#rebel-builder #{common.selectorForUpgradeIndex(1, 7)}", 'Shield Upgrade')
    common.assertSelect2IsEmpty(test, "#rebel-builder #{common.selectorForUpgradeIndex(2, 8)}", 'Shield Upgrade')
    common.assertSelect2IsEmpty(test, "#rebel-builder #{common.selectorForUpgradeIndex(3, 5)}", 'Shield Upgrade')

    common.removeShip("#rebel-builder", 1)
    common.removeShip("#rebel-builder", 1)
    common.removeShip("#rebel-builder", 1)

    # TODO: Add test for a generic huge-only modification when it comes out


    .run ->
        test.done()

casper.test.begin "Huge-only crew", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setGameType('#rebel-builder', 'epic')

    common.addShip('#rebel-builder', 'CR90 Corvette (Fore)', 'CR90 Corvette (Fore)')
    common.addShip('#rebel-builder', 'YT-1300', 'Chewbacca')

    for crew in [ 'Toryn Farr', 'WED-15 Repair Droid', 'Carlist Rieekan', 'Jan Dodonna' ]
        common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex(2, 3)}", crew)
        common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex(2, 4)}", crew)

        common.addUpgrade("#rebel-builder", 1, 1, crew)
        common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, crew)

    common.removeShip("#rebel-builder", 1)
    common.removeShip("#rebel-builder", 1)

    .run ->
        test.done()

casper.test.begin "GR-75 specific modification", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setGameType('#rebel-builder', 'epic')

    common.addShip('#rebel-builder', 'GR-75 Medium Transport', 'GR-75 Medium Transport')
    common.addShip('#rebel-builder', 'YT-1300', 'Chewbacca')
    common.addShip('#rebel-builder', 'A-Wing', 'Prototype Pilot')

    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex(2, 6)}", 'Combat Retrofit')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex(3, 3)}", 'Combat Retrofit')

    common.addUpgrade("#rebel-builder", 1, 7, "Combat Retrofit")
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 7, 'Combat Retrofit')

    common.removeShip("#rebel-builder", 1)
    common.removeShip("#rebel-builder", 1)
    common.removeShip("#rebel-builder", 1)

    .run ->
        test.done()
