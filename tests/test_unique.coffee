require = patchRequire global.require
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

    common.assertNoMatch(test, "#rebel-builder #{common.selectorForLastShip} .pilot-selector-container .select2-container", 'Luke Skywalker')

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

    common.assertNoMatch(test, "#rebel-builder .ship:nth-of-type(2) .addon-container .select2-container:nth-of-type(2)", 'R2-F2')

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
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", 'Luke Skywalker')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 4}", 'Luke Skywalker')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", 'Chewbacca')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 4}", 'Chewbacca')

    # Can't put Luke or Chewie on Lando's ship
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 3}", 'Luke Skywalker')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 4}", 'Luke Skywalker')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 3}", 'Chewbacca')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 4}", 'Chewbacca')

    .run ->
        test.done()
