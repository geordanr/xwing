common = require './common'

common.setup()


casper.test.begin "Copy pilot", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Luke Skywalker'
            upgrades: [
                'Lone Wolf'
                'Proton Torpedoes'
                'R5-P9'
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

    # Unique pilots can't be cloned, but the clone will pick either a generic
    # or the cheapest named
    .then ->
        @log("#rebel-builder #{common.selectorForCloneShip(1)}")
        test.assertVisible("#rebel-builder #{common.selectorForCloneShip(1)}", "Unique pilots may be cloned")
    
    # Unique clones to generic
    common.cloneShip('#rebel-builder', 1)
    common.assertShipTypeIs(test, '#rebel-builder', 3, 'X-Wing')
    common.assertPilotIs(test, '#rebel-builder', 3, 'Rookie Pilot')
    # ...but only sends valid upgrades
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 1, 'Proton Torpedoes')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 3, 2)
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 3, 'Engine Upgrade')

    # Non-uniques
    common.cloneShip('#rebel-builder', 2)
    common.assertShipTypeIs(test, '#rebel-builder', 4, 'X-Wing')
    common.assertPilotIs(test, '#rebel-builder', 4, 'Red Squadron Pilot')

    # Don't clone uniques
    common.addUpgrade('#rebel-builder', 2, 2, 'R2-D2')
    common.cloneShip('#rebel-builder', 2)
    common.assertShipTypeIs(test, '#rebel-builder', 5, 'X-Wing')
    common.assertPilotIs(test, '#rebel-builder', 5, 'Red Squadron Pilot')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 5, 2)

    # Handle cloning when a unique would confer an upgrade
    common.addShip('#rebel-builder', 'X-Wing', 'Tarn Mison')
    common.addUpgrade('#rebel-builder', 6, 2, 'R2-D6')
    common.addUpgrade('#rebel-builder', 6, 4, 'Calculation')
    common.cloneShip('#rebel-builder', 6)
    common.assertShipTypeIs(test, '#rebel-builder', 7, 'X-Wing')
    common.assertPilotIs(test, '#rebel-builder', 7, 'Rookie Pilot')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 7, 2)
    test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 7, 4}"

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
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

casper.test.begin "Copy B-Wing with B-Wing/E2", (test) ->
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
                'B-Wing/E2'
                null
            ]
        }
    ])

    common.addUpgrade('#rebel-builder', 1, 6, 'Targeting Coordinator')
    common.cloneShip('#rebel-builder', 1)
    common.assertTotalPoints(test, '#rebel-builder', 33 * 2)

    common.removeShip('#rebel-builder', 1)
    common.addUpgrade('#rebel-builder', 1, 6, 'Nien Nunb')
    common.cloneShip('#rebel-builder', 1)
    common.assertTotalPoints(test, '#rebel-builder', 59)

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

casper.test.begin "Copy IG-88", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openScumBuilder()

    common.createList('#scum-builder', [
        {
            ship: 'Aggressor'
            pilot: 'IG-88C'
            upgrades: [
                'Lone Wolf'
                'Advanced Sensors'
                'Heavy Laser Cannon'
                null
                null
                null
                'IG-2000'
                'Autothrusters'
            ]
        }
    ])

    common.cloneShip('#scum-builder', 1)
    common.assertShipTypeIs(test, '#scum-builder', 2, 'Aggressor')
    common.assertPilotIs(test, '#scum-builder', 2, 'IG-88A')
    common.assertSelect2IsEmpty(test, "#scum-builder #{common.selectorForUpgradeIndex(2, 1)}")

    common.cloneShip('#scum-builder', 1)
    common.assertShipTypeIs(test, '#scum-builder', 2, 'Aggressor')
    common.assertPilotIs(test, '#scum-builder', 2, 'IG-88A')
    common.assertSelect2IsEmpty(test, "#scum-builder #{common.selectorForUpgradeIndex(3, 1)}")

    common.cloneShip('#scum-builder', 1)
    common.assertShipTypeIs(test, '#scum-builder', 2, 'Aggressor')
    common.assertPilotIs(test, '#scum-builder', 2, 'IG-88A')
    common.assertSelect2IsEmpty(test, "#scum-builder #{common.selectorForUpgradeIndex(4, 1)}")

    # Clone should do nothing now
    common.cloneShip('#scum-builder', 1)
    common.assertSelect2IsEmpty(test, "#scum-builder #{common.selectorForShipIndex(5)}")

    common.assertTotalPoints(test, '#scum-builder', 194)

    common.removeShip('#scum-builder', 1)
    common.removeShip('#scum-builder', 1)
    common.removeShip('#scum-builder', 1)
    common.removeShip('#scum-builder', 1)

    .run ->
        test.done()
