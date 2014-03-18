common = require './common'

common.setup()


casper.test.begin "Permalink", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Red Squadron Pilot'
            upgrades: [
                null
                null
                null
            ]
        }
        {
            ship: 'X-Wing'
            pilot: 'Luke Skywalker'
            upgrades: [
                'Deadeye'
                'Proton Torpedoes'
                'R2-D2'
                null
            ]
        }
        {
            ship: 'YT-1300'
            pilot: 'Chewbacca'
            upgrades: [
                'Draw Their Fire'
                null
                'Nien Nunb'
                'Gunner'
                'Millennium Falcon'
                'Engine Upgrade'
            ]
        }
        {
            ship: 'B-Wing'
            pilot: 'Ibtisam'
            upgrades: [
                'Push the Limit'
                'Advanced Sensors'
                'Autoblaster'
                null
                null
                null
            ]
        }
    ])

    .then ->
        @click '#rebel-builder .permalink'
        @waitForUrl(/d=/)
    .then ->
        @waitUntilVisible '#rebel-builder .total-points'
    .then ->
        test.assertUrlMatch /f=/, 'Faction specified in permalink'
        test.assertUrlMatch /d=/, 'Serialization in permalink'
        common.assertTotalPoints(test, '#rebel-builder', 153)

    .run ->
        test.done()
