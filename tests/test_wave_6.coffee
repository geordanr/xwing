common = require './common'

common.setup()


casper.test.begin "Scum Faction Tab", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openScumBuilder()
    common.assertTotalPoints(test, '#scum-builder', 0)
    .run ->
        test.done()


casper.test.begin "Cross-faction Ships", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openScumBuilder()
    common.createList('#scum-builder', [
        {
            ship: 'Firespray-31'
            pilot: 'Boba Fett (Scum)'
            upgrades: [
            ]
        }
        # TODO: add pilots from HWK, Y-Wing, Z-95
    ])
    common.assertTotalPoints(test, '#scum-builder', 39)

    common.openEmpireBuilder()
    common.createList('#empire-builder', [
        {
            ship: 'Firespray-31'
            pilot: 'Boba Fett'
            upgrades: [
            ]
        }
    ])
    common.assertTotalPoints(test, '#empire-builder', 39)

    common.removeShip('#empire-builder', 1)

    common.openScumBuilder()
    common.removeShip('#scum-builder', 1)

    .run ->
        test.done()


casper.test.begin "Virago title", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openScumBuilder()
    common.createList('#scum-builder', [
        {
            ship: 'StarViper'
            pilot: 'Black Sun Enforcer'
            upgrades: [
            ]
        }
        {
            ship: 'StarViper'
            pilot: 'Prince Xizor'
            upgrades: [
            ]
        }
    ])
    .then ->
        test.assertDoesntExist "#scum-builder #{common.selectorForUpgradeIndex 1, 4}", "StarVipers do not have System upgrades by default"
        test.assertDoesntExist "#scum-builder #{common.selectorForUpgradeIndex 1, 5}", "StarVipers do not have Illicit upgrades by default"
    # Low PS ships cannot take Virago title
    common.assertNoMatch(test, "#scum-builder #{common.selectorForUpgradeIndex 1, 3}", 'Virago')
    common.setPilot('#scum-builder', 1, 'Black Sun Vigo')
    common.assertNoMatch(test, "#scum-builder #{common.selectorForUpgradeIndex 1, 3}", 'Virago')
    # High PS ships can take Virago title
    common.addUpgrade("#scum-builder", 2, 3, 'Virago')
    common.addUpgrade("#scum-builder", 2, 5, 'Accuracy Corrector')
    common.addUpgrade("#scum-builder", 2, 6, 'Inertial Dampeners')

    common.removeShip('#scum-builder', 1)
    common.removeShip('#scum-builder', 1)

    .run ->
        test.done()


casper.test.begin "Heavy Scyk title", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openScumBuilder()
    common.createList('#scum-builder', [
        {
            ship: 'M3-A Interceptor'
            pilot: 'Cartel Spacer'
            upgrades: [
            ]
        }
        {
            ship: 'M3-A Interceptor'
            pilot: 'Cartel Spacer'
            upgrades: [
                '"Heavy Scyk" Interceptor (Cannon)'
            ]
        }
        {
            ship: 'M3-A Interceptor'
            pilot: 'Cartel Spacer'
            upgrades: [
                '"Heavy Scyk" Interceptor (Missile)'
            ]
        }
        {
            ship: 'M3-A Interceptor'
            pilot: 'Cartel Spacer'
            upgrades: [
                '"Heavy Scyk" Interceptor (Torpedo)'
            ]
        }
    ])
    .then ->
        test.assertDoesntExist "#scum-builder #{common.selectorForUpgradeIndex 1, 3}", "Scyk fighters do not have cannon, missile, or torpedo upgrades by default"

    # Cannons only
    common.assertNoMatch(test, "#scum-builder #{common.selectorForUpgradeIndex 2, 3}", "Ion Pulse Missiles")
    common.assertNoMatch(test, "#scum-builder #{common.selectorForUpgradeIndex 2, 3}", "Ion Torpedoes")
    common.addUpgrade('#scum-builder', 2, 3, 'Ion Cannon')

    # Missiles only
    common.assertNoMatch(test, "#scum-builder #{common.selectorForUpgradeIndex 3, 3}", "Ion Cannon")
    common.assertNoMatch(test, "#scum-builder #{common.selectorForUpgradeIndex 3, 3}", "Ion Torpedoes")
    common.addUpgrade('#scum-builder', 3, 3, 'Ion Pulse Missiles')

    # Torpedoes only
    common.assertNoMatch(test, "#scum-builder #{common.selectorForUpgradeIndex 4, 3}", "Ion Cannon")
    common.assertNoMatch(test, "#scum-builder #{common.selectorForUpgradeIndex 4, 3}", "Ion Pulse Missiles")
    common.addUpgrade('#scum-builder', 4, 3, 'Ion Torpedoes')

    .run ->
        test.done()
