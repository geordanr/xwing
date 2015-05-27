common = require './common'

common.setup()


casper.test.begin "TIE/x1", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()

    common.createList('#empire-builder', [
        {
            ship: 'TIE Advanced'
            pilot: 'Tempest Squadron Pilot'
            upgrades: [
                null
                null
                null
            ]
        }
    ])

    common.assertTotalPoints(test, '#empire-builder', 21)
    test.assertDoesntExist "#empire-builder #{common.selectorForUpgradeIndex 1, 4}", "TIE Advanced has no system slot by default"

    common.addUpgrade('#empire-builder', 1, 2, 'TIE/x1')
    common.addUpgrade('#empire-builder', 1, 4, 'Accuracy Corrector')
    common.assertTotalPoints(test, '#empire-builder', 21) # discounted

    common.addUpgrade('#empire-builder', 1, 4, 'Advanced Targeting Computer')
    common.assertTotalPoints(test, '#empire-builder', 22) # discounted

    .run ->
        test.done()


casper.test.begin "Palpatine occupies extra crew slot", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()

    common.createList('#empire-builder', [
        {
            ship: 'VT-49 Decimator'
            pilot: 'Patrol Leader'
            upgrades: []
        }
    ])

    common.addUpgrade('#empire-builder', 1, 2, 'Emperor Palpatine')
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")

    common.removeUpgrade('#empire-builder', 1, 2, 'Emperor Palpatine')
    common.addUpgrade('#empire-builder', 1, 3, 'Emperor Palpatine')
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")

    common.removeUpgrade('#empire-builder', 1, 3, 'Emperor Palpatine')
    common.addUpgrade('#empire-builder', 1, 4, 'Emperor Palpatine')
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")

    common.removeShip('#empire-builder', 1)

    .run ->
        test.done()

casper.test.begin "Palpatine releases extra crew slot when changed to different crew", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()

    common.createList('#empire-builder', [
        {
            ship: 'VT-49 Decimator'
            pilot: 'Patrol Leader'
            upgrades: []
        }
    ])

    common.addUpgrade('#empire-builder', 1, 2, 'Emperor Palpatine')
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")
    common.addUpgrade('#empire-builder', 1, 2, 'Intelligence Agent')
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")

    common.removeUpgrade('#empire-builder', 1, 2, 'Emperor Palpatine')
    common.addUpgrade('#empire-builder', 1, 3, 'Emperor Palpatine')
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")
    common.addUpgrade('#empire-builder', 1, 3, 'Intelligence Agent')
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}")

    common.removeUpgrade('#empire-builder', 1, 3, 'Emperor Palpatine')
    common.addUpgrade('#empire-builder', 1, 4, 'Emperor Palpatine')
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")
    common.addUpgrade('#empire-builder', 1, 4, 'Intelligence Agent')
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}")
    common.assertSelectorIsEnabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")

    common.removeShip('#empire-builder', 1)

    .run ->
        test.done()

casper.test.begin "Permalink still works when Palpatine's extra slot would be occupied", (test) ->
    common.waitForStartup('#empire-builder', 'app/index.html?f=Galactic%20Empire&d=v3!s!96:-1,132,40,-1,-1:-1:-1:')
    .then ->
        @waitUntilVisible '#empire-builder .total-points'

    common.assertUpgradeInSlot(test, '#empire-builder', 1, 2, 'Emperor Palpatine')
    common.assertSelectorIsDisabled(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}")
    common.assertUpgradeInSlot(test, '#empire-builder', 1, 4, 'Intelligence Agent')

    common.removeShip('#empire-builder', 1)

    .run ->
        test.done()
