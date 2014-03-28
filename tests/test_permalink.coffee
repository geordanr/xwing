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


casper.test.begin "Weird Rebel permalink v2", (test) ->
    common.waitForStartup('#rebel-builder', 'index.html?f=Rebel%20Alliance&d=v2!29:10,72:7:2:U.27;44:-1,-1,-1,-1:-1:-1:;44:-1,-1,-1,-1:-1:-1:;6:-1,-1,-1,70,18:-1:-1:')
    .then ->
        @waitUntilVisible '#rebel-builder .total-points'
    .then ->
        common.assertTotalPoints(test, '#rebel-builder', 99)

    .run ->
        test.done()


casper.test.begin "Weird Empire permalink v2", (test) ->
    common.waitForStartup('#empire-builder', 'index.html?f=Galactic%20Empire&d=v2!38:-1,-1,-1,-1,-1:1:-1:U.1;28:-1:5:1:M.5;10::-1:-1:;10::-1:-1:')
    .then ->
        @waitUntilVisible '#empire-builder .total-points'
    .then ->
        common.assertTotalPoints(test, '#empire-builder', 99)

    .run ->
        test.done()
