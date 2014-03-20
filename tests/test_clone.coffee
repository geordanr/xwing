common = require './common'

common.setup()


casper.test.begin "Copy pilot", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Luke Skywalker'
            upgrades: [
            ]
        }
        {
            ship: 'X-Wing'
            pilot: 'Rookie Pilot'
            upgrades: [
                'Proton Torpedoes'
                'R2 Astromech'
                'Engine Upgrade'
            ]
        }
    ])

    # Unique pilots can't be cloned
    .then ->
        @log("#rebel-builder #{common.selectorForCloneShip(1)}")
        test.assertNotVisible("#rebel-builder #{common.selectorForCloneShip(1)}", "Unique pilots cannot be cloned")

    # Non-uniques
    common.cloneShip('#rebel-builder', 2)
    common.assertTotalPoints(test, '#rebel-builder', 88)

    # Don't clone uniques
    common.addUpgrade('#rebel-builder', 2, 2, 'R2-D2')
    common.cloneShip('#rebel-builder', 2)
    common.assertTotalPoints(test, '#rebel-builder', 120)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "Copy A-Wing with Test Pilot", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'A-Wing'
            pilot: 'Green Squadron Pilot'
            upgrades: [
                'Deadeye'
                null
                'A-Wing Test Pilot'
                null
            ]
        }
    ])

    common.addUpgrade('#rebel-builder', 1, 5, 'Expert Handling')
    common.cloneShip('#rebel-builder', 1)
    common.assertTotalPoints(test, '#rebel-builder', 44)

    common.removeShip('#rebel-builder', 2)
    common.addUpgrade('#rebel-builder', 1, 5, 'Squad Leader')
    common.cloneShip('#rebel-builder', 1)
    common.assertTotalPoints(test, '#rebel-builder', 42)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "Copy B-Wing with B-Wing/E", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'B-Wing'
            pilot: 'Blue Squadron Pilot'
            upgrades: [
                'Fire-Control System'
                null
                'Proton Torpedoes'
                null
                'B-Wing/E'
                null
            ]
        }
    ])

    common.addUpgrade('#rebel-builder', 1, 7, 'Gunner')
    common.cloneShip('#rebel-builder', 1)
    common.assertTotalPoints(test, '#rebel-builder', 132 * 2) # FIXME B-Wing/E cost unknown

    common.removeShip('#rebel-builder', 1)
    common.addUpgrade('#rebel-builder', 1, 7, 'Nien Nunb')
    common.cloneShip('#rebel-builder', 1)
    common.assertTotalPoints(test, '#rebel-builder', 255) # FIXME B-Wing/E cost unknown

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "Copy Royal Guard Pilot with Royal Guard TIE", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    common.createList('#empire-builder', [
        {
            ship: 'TIE Interceptor'
            pilot: 'Royal Guard Pilot'
            upgrades: [
                'Determination'
                'Royal Guard TIE'
                'Stealth Device'
            ]
        }
    ])

    common.addUpgrade('#empire-builder', 1, 4, 'Hull Upgrade')
    common.cloneShip('#empire-builder', 1)
    common.assertTotalPoints(test, '#empire-builder', 58)

    common.removeShip('#empire-builder', 1)
    common.removeShip('#empire-builder', 1)

    .run ->
        test.done()
