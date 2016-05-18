common = require './common'

common.setup()


casper.test.begin "Enforce uniqueness between old and HotR pilots", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'YT-1300'
            pilot: 'Chewbacca'
            upgrades: [
                null
                null
                null
            ]
        }
    ])

    common.setShipType('#rebel-builder', 2, 'YT-1300')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForSecondToLastShip} #{common.selectorForPilotDropdown}", 'Chewbacca (TFA)')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", "Chewbacca")

    common.removeShip('#rebel-builder', 1)
    common.setShipType('#rebel-builder', 1, 'YT-1300')
    common.setPilot('#rebel-builder', 1, 'Chewbacca (TFA)')

    common.setShipType('#rebel-builder', 2, 'YT-1300')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForSecondToLastShip} #{common.selectorForPilotDropdown}", 'Chewbacca')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", "Chewbacca")

    .run ->
        test.done()


casper.test.begin "Enforce uniqueness between old and HotR titles", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'YT-1300'
            pilot: 'Outer Rim Smuggler'
            upgrades: [
                null
                null
                'Millennium Falcon'
            ]
        }
        {
            ship: 'YT-1300'
            pilot: 'Outer Rim Smuggler'
            upgrades: [ ]
        }
    ])

    common.setShipType('#rebel-builder', 2, 'YT-1300')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", "Millennium Falcon")
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", "Millennium Falcon (TFA)")

    common.addUpgrade('#rebel-builder', 1, 3, 'Millennium Falcon (TFA)')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", "Millennium Falcon")
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", "Millennium Falcon (TFA)")

    .run ->
        test.done()
