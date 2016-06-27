common = require './common'

common.setup()


casper.test.begin "Turkish translations: Rebel", (test) ->
    common.waitForStartup('#rebel-builder')

    common.selectLanguage('Türkçe')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: "Rookie Pilot"
            upgrades: [
                "Proton Torpedoes"
                "R2 Astromech"
                "Shield Upgrade"
            ]
        }
        {
            ship: 'X-Wing'
            pilot: "Luke Skywalker"
            upgrades: [
                "Marksmanship"
                null
                "R2-D2"
                null
            ]
        }
        {
            ship: 'YT-1300'
            pilot: "Chewbacca"
            upgrades: [
                "Draw Their Fire"
                "Assault Missiles"
                "Intelligence Agent"
                "Recon Specialist"
                "Millennium Falcon"
                "Engine Upgrade"
            ]
        }
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
                'Chardaan Refit'
            ]
        }

    ])

    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex(3, 3)}", 'Luke Skywalker')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex(3, 4)}", 'Luke Skywalker')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex(3, 3)}", 'R2-D2')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex(3, 4)}", 'R2-D2')

    common.assertTotalPoints(test, '#rebel-builder', 137)

    common.selectLanguage('English')

    common.assertShipTypeIs(test, '#rebel-builder', 1, 'X-Wing')
    common.assertPilotIs(test, '#rebel-builder', 1, 'Rookie Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, 'R2 Astromech')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'Shield Upgrade')

    common.assertShipTypeIs(test, '#rebel-builder', 2, 'X-Wing')
    common.assertPilotIs(test, '#rebel-builder', 2, 'Luke Skywalker')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 1, 'Marksmanship')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 2, 2)
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 3, 'R2-D2')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 2, 4)

    common.assertShipTypeIs(test, '#rebel-builder', 3, 'YT-1300')
    common.assertPilotIs(test, '#rebel-builder', 3, 'Chewbacca')
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 1, 'Draw Their Fire')
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 2, 'Assault Missiles')
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 3, 'Intelligence Agent')
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 4, 'Recon Specialist')
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 5, 'Millennium Falcon')
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 6, 'Engine Upgrade')

    common.assertShipTypeIs(test, '#rebel-builder', 4, 'A-Wing')
    common.assertPilotIs(test, '#rebel-builder', 4, 'Prototype Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 4, 1, 'Chardaan Refit')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 4, 2)
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 4, 3)

    common.assertTotalPoints(test, '#rebel-builder', 137)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()


casper.test.begin "Russian translations: Imperial", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    common.selectLanguage('Türkçe')

    common.createList('#empire-builder', [
        {
            ship: 'TIE Interceptor'
            pilot: "Alpha Squadron Pilot"
            upgrades: [
                null
                "Stealth Device"
            ]
        }
        {
            ship: 'TIE Fighter'
            pilot: "Academy Pilot"
            upgrades: [
                null
            ]
        }
        {
            ship: 'TIE Interceptor'
            pilot: "Soontir Fel"
            upgrades: [
                null
                "Royal Guard TIE"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
    ])

    common.assertTotalPoints(test, '#empire-builder', 67)

    common.selectLanguage('English')

    common.assertShipTypeIs(test, '#empire-builder', 1, 'TIE Interceptor')
    common.assertPilotIs(test, '#empire-builder', 1, 'Alpha Squadron Pilot')
    common.assertUpgradeInSlot(test, '#empire-builder', 1, 2, 'Stealth Device')

    common.assertShipTypeIs(test, '#empire-builder', 2, 'TIE Fighter')
    common.assertPilotIs(test, '#empire-builder', 2, 'Academy Pilot')

    common.assertShipTypeIs(test, '#empire-builder', 3, 'TIE Interceptor')
    common.assertPilotIs(test, '#empire-builder', 3, 'Soontir Fel')
    common.assertUpgradeInSlot(test, '#empire-builder', 3, 2, 'Royal Guard TIE')
    common.assertUpgradeInSlot(test, '#empire-builder', 3, 3, 'Hull Upgrade')
    common.assertUpgradeInSlot(test, '#empire-builder', 3, 4, 'Shield Upgrade')

    common.assertTotalPoints(test, '#empire-builder', 67)

    common.removeShip('#empire-builder', 1)
    common.removeShip('#empire-builder', 1)
    common.removeShip('#empire-builder', 1)

    .run ->
        test.done()
