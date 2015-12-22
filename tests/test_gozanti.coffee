common = require './common'

common.setup()


casper.test.begin "Ordnance Tubes", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()
    common.setGameType('#empire-builder', 'epic')
    common.addShip('#empire-builder', 'Gozanti-class Cruiser', 'Gozanti-class Cruiser')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Assault Missiles')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Plasma Torpedoes')

    # Other slots should not be affected
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 1}", 'Assault Missiles')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 1}", 'Plasma Torpedoes')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}", 'Assault Missiles')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}", 'Plasma Torpedoes')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 5}", 'Assault Missiles')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 5}", 'Plasma Torpedoes')

    common.addUpgrade('#empire-builder', 1, 8, 'Ordnance Tubes')

    common.addUpgrade('#empire-builder', 1, 3, 'Assault Missiles')
    common.addUpgrade('#empire-builder', 1, 3, 'Plasma Torpedoes')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Bomb Loadout')

    common.removeUpgrade('#empire-builder', 1, 8)
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Assault Missiles')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Plasma Torpedoes')

    .run ->
        test.done()
