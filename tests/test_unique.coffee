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

    common.assertNoMatch(test, "#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container", 'Luke Skywalker')

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
