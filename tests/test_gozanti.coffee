common = require './common'

common.setup()


casper.test.begin "Ordnance Tubes", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()
    common.setGameType('#empire-builder', 'epic')
    common.addShip('#empire-builder', 'Gozanti-class Cruiser', 'Gozanti-class Cruiser')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Assault Missiles')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Plasma Torpedoes')

    common.addUpgrade('#empire-builder', 1, 7, 'Ordnance Tubes')

    common.addUpgrade('#empire-builder', 1, 3, 'Assault Missiles')
    common.addUpgrade('#empire-builder', 1, 3, 'Plasma Torpedoes')

    common.removeUpgrade('#empire-builder', 1, 7)
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Assault Missiles')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Plasma Torpedoes')

    .run ->
        test.done()
