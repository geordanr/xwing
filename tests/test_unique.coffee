common = require './common'

common.setup()


casper.test.begin "Named pilot uniqueness", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Luke Skywalker'
            upgrades: [
                null
                null
                null
            ]
        }
    ])

    common.setShipType('#rebel-builder', 2, 'X-Wing')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForSecondToLastShip} #{common.selectorForPilotDropdown}", 'Luke Skywalker')

    .run ->
        test.done()

casper.test.begin "Named upgrade uniqueness", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Red Squadron Pilot'
            upgrades: [
                null
                'R2-F2'
                null
            ]
        }
        {
            ship: 'X-Wing'
            pilot: 'Red Squadron Pilot'
            upgrades: [
                null
                null
                null
            ]
        }
    ])

    common.assertMatchIsDisabled(test, "#rebel-builder .ship:nth-of-type(2) .addon-container .select2-container:nth-of-type(2)", 'R2-F2')

    .run ->
        test.done()

casper.test.begin "Unnamed pilot and upgrade non-uniqueness", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Red Squadron Pilot'
            upgrades: [
                'Proton Torpedoes'
                'R2 Astromech'
                'Engine Upgrade'
            ]
        }
        {
            ship: 'X-Wing'
            pilot: 'Red Squadron Pilot'
            upgrades: [
                'Proton Torpedoes'
                'R2 Astromech'
                'Engine Upgrade'
            ]
        }
    ])

    common.assertTotalPoints(test, '#rebel-builder', 64)

    .run ->
        test.done()

casper.test.begin "Uniqueness across pilot and crew", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Luke Skywalker'
            upgrades: [
                null
                null
                null
            ]
        }
        {
            ship: 'YT-1300'
            pilot: 'Chewbacca'
            upgrades: [
                null
                null
                null
                null
                null
                null
            ]
        }
        {
            ship: 'YT-1300'
            pilot: 'Lando Calrissian'
            upgrades: [
                null
                null
                null
                null
                null
                null
            ]
        }
    ])

    # Can't put Luke or Chewie on Chewie's ship
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", 'Luke Skywalker')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 4}", 'Luke Skywalker')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", 'Chewbacca')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 4}", 'Chewbacca')

    # Can't put Luke or Chewie on Lando's ship
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 3}", 'Luke Skywalker')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 4}", 'Luke Skywalker')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 3}", 'Chewbacca')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 4}", 'Chewbacca')

    .run ->
        test.done()

casper.test.begin "R2-D2 Astromech is mutex with R2-D2 Crew", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Luke Skywalker'
            upgrades: [
                null
                null
                null
                null
            ]
        }
        {
            ship: 'YT-1300'
            pilot: 'Chewbacca'
            upgrades: [
                null
                null
                null
                null
                null
                null
            ]
        }
    ])

    common.addUpgrade('#rebel-builder', 1, 3, 'R2-D2')

    # Can't put R2-D2 on Chewie's ship
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", 'R2-D2 (Crew)')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 4}", 'R2-D2 (Crew)')

    common.removeUpgrade('#rebel-builder', 1, 3)
    common.addUpgrade('#rebel-builder', 2, 3, 'R2-D2 (Crew)')

    # Can't put R2-D2 on Luke's ship
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'R2-D2')

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()
