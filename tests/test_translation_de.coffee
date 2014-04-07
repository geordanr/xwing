common = require './common'

common.setup()


casper.test.begin "German translations", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    common.selectLanguage('Deutsch')

    common.createList('#empire-builder', [
        {
            ship: 'TIE Abfangjäger'
            pilot: "Pilot der Alpha-Staffel"
            upgrades: [
                null
                "Tarnvorrichtung"
            ]
        }
        {
            ship: 'TIE Fighter'
            pilot: "Pilot der Akademie"
            upgrades: [
                null
            ]
        }
        {
            ship: 'TIE Abfangjäger'
            pilot: "Soontir Fel"
            upgrades: [
                null
                "TIE der Roten Garde"
                "Verbesserte Hülle"
                "Verbesserte Schilde"
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

    .run ->
        test.done()
