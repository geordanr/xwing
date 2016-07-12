common = require './common'

common.setup()


casper.test.begin "TIE Shuttle", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()

    common.addShip('#empire-builder', 'TIE Bomber', 'Gamma Squadron Pilot')
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 1}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 5}")
    common.addUpgrade("#empire-builder", 1, 1, 'Extra Munitions')
    common.addUpgrade("#empire-builder", 1, 2, 'Plasma Torpedoes')
    common.addUpgrade("#empire-builder", 1, 3, 'Ion Pulse Missiles')
    common.addUpgrade("#empire-builder", 1, 4, 'Cluster Missiles')
    common.addUpgrade("#empire-builder", 1, 5, 'Ion Bombs')
    common.assertTotalPoints(test, '#empire-builder', 32)
    .then ->
        test.assertDoesntExist("#empire-builder #{common.selectorForUpgradeIndex 1, 8}")
        test.assertDoesntExist("#empire-builder #{common.selectorForUpgradeIndex 1, 9}")

    common.addUpgrade('#empire-builder', 1, 6, 'TIE Shuttle')
    common.assertTotalPoints(test, '#empire-builder', 18)
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 1}")
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 5}")

    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 8}", 'Emperor Palpatine')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 9}", 'Emperor Palpatine')
    common.selectExactMatch("#empire-builder #{common.selectorForUpgradeIndex 1, 8}", 'Fleet Officer')
    common.selectExactMatch("#empire-builder #{common.selectorForUpgradeIndex 1, 9}", 'Tactician')

    common.removeUpgrade('#empire-builder', 1, 6)
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 1}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 5}")
    common.assertTotalPoints(test, '#empire-builder', 18)
    .then ->
        test.assertDoesntExist("#empire-builder #{common.selectorForUpgradeIndex 1, 8}")
        test.assertDoesntExist("#empire-builder #{common.selectorForUpgradeIndex 1, 9}")

    common.removeShip('#empire-builder', 1)

    .run ->
        test.done()

casper.test.begin "TIE/x7", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()

    common.addShip('#empire-builder', 'TIE Defender', 'Delta Squadron Pilot')
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 1}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.addUpgrade("#empire-builder", 1, 1, 'Ion Cannon')
    common.addUpgrade("#empire-builder", 1, 2, 'Assault Missiles')
    common.assertTotalPoints(test, '#empire-builder', 38)

    common.addUpgrade('#empire-builder', 1, 3, 'TIE/x7')
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 1}")
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")

    common.assertTotalPoints(test, '#empire-builder', 28)

    common.removeUpgrade('#empire-builder', 1, 3)
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 1}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertTotalPoints(test, '#empire-builder', 30)

    common.removeShip('#empire-builder', 1)

    .run ->
        test.done()
