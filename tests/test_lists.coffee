common = require './common'

common.setup()


casper.test.begin "Build from rebel list specification", (test) ->
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

casper.test.begin "Build from empire list specification", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    common.createList('#empire-builder', [
        {
            ship: 'TIE Fighter'
            pilot: 'Academy Pilot'
            upgrades: [
                null
            ]
        }
        {
            ship: 'Firespray-31'
            pilot: 'Bounty Hunter'
            upgrades: [
                'Heavy Laser Cannon'
                null
                'Saboteur'
                null
                null
                null
            ]
        }
    ])

    common.assertTotalPoints(test, '#empire-builder', 54)

    .run ->
        test.done()
