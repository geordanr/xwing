require = patchRequire global.require
common = require './common'

common.setup()


casper.test.begin "Build from list specification", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Rookie Pilot'
            upgrades: [
                null
                'R2 Astromech'
                null
            ]
        }
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
                'Concussion Missiles'
                null
            ]
        }
    ])

    common.assertTotalPoints(test, '#rebel-builder', 43)

    .run ->
        test.done()
