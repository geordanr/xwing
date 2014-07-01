common = require './common'

common.setup()


casper.test.begin "New ship row created only when all ship rows are assigned", (test) ->
    common.waitForStartup('#rebel-builder')

    .then ->
        test.assertExists("#rebel-builder #{common.selectorForShipIndex(1)}")
        test.assertDoesntExist("#rebel-builder #{common.selectorForShipIndex(2)}")

    common.setShipType('#rebel-builder', 1, 'X-Wing')

    .then ->
        test.assertExists("#rebel-builder #{common.selectorForShipIndex(2)}")

    common.removeShip('#rebel-builder', 1)

    .then ->
        test.assertExists("#rebel-builder #{common.selectorForShipIndex(1)}")
        test.assertDoesntExist("#rebel-builder #{common.selectorForShipIndex(2)}")

    .run ->
        test.done()

casper.test.begin "Changing ship keeps as many upgrades as possible", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.addUpgrade('#rebel-builder', 1, 1, 'Proton Torpedoes')
    common.addUpgrade('#rebel-builder', 1, 2, 'R2 Astromech')
    common.addUpgrade('#rebel-builder', 1, 3, 'Engine Upgrade')
    common.assertTotalPoints(test, '#rebel-builder', 30)

    # Changing pilot but no change in slots
    common.setPilot('#rebel-builder', 1, 'Red Squadron Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, 'R2 Astromech')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'Engine Upgrade')
    common.assertTotalPoints(test, '#rebel-builder', 32)

    # Changing pilot adds elite slot
    common.setPilot('#rebel-builder', 1, 'Luke Skywalker')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 1, 1)
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, 'Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'R2 Astromech')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 4, 'Engine Upgrade')
    common.assertTotalPoints(test, '#rebel-builder', 37)

    # Assign elite then change to another w/ elite
    common.addUpgrade('#rebel-builder', 1, 1, 'Marksmanship')
    common.setPilot('#rebel-builder', 1, 'Wedge Antilles')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Marksmanship')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, 'Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'R2 Astromech')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 4, 'Engine Upgrade')
    common.assertTotalPoints(test, '#rebel-builder', 41)

    # Change back to pilot without elite
    common.setPilot('#rebel-builder', 1, 'Red Squadron Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, 'R2 Astromech')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'Engine Upgrade')
    common.assertTotalPoints(test, '#rebel-builder', 32)

    # R2-D6 grants elite slot, but is ineligible on rookie pilots
    common.addUpgrade('#rebel-builder', 1, 2, 'R2-D6')
    common.addUpgrade('#rebel-builder', 1, 4, 'Push the Limit')
    common.assertTotalPoints(test, '#rebel-builder', 35)
    # Switching to rookie should drop extra elite and R2-D6
    common.setPilot('#rebel-builder', 1, 'Rookie Pilot')
    common.assertTotalPoints(test, '#rebel-builder', 29)
    casper.then ->
        test.assertDoesntExist("#rebel-builder #{common.selectorForUpgradeIndex 1, 4}", "Elite slot was rescinded")

    # A-Wing Test Pilot grants elite slot, but is ineligible on prototype pilots
    common.setShipType('#rebel-builder', 1, 'A-Wing')
    common.setPilot('#rebel-builder', 1, 'Green Squadron Pilot')
    common.addUpgrade('#rebel-builder', 1, 1, 'Deadeye')
    common.addUpgrade('#rebel-builder', 1, 2, 'Chardaan Refit')
    common.addUpgrade('#rebel-builder', 1, 3, 'A-Wing Test Pilot')
    common.addUpgrade('#rebel-builder', 1, 4, 'Shield Upgrade')
    common.addUpgrade('#rebel-builder', 1, 5, 'Expert Handling')
    common.assertTotalPoints(test, '#rebel-builder', 24)
    # Switching to prototype should drop extra elite
    common.setPilot('#rebel-builder', 1, 'Prototype Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Chardaan Refit')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 1, 2)
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'Shield Upgrade')
    common.assertTotalPoints(test, '#rebel-builder', 19)
    casper.then ->
        test.assertDoesntExist("#rebel-builder #{common.selectorForUpgradeIndex 1, 5}", "Elite slot was rescinded")

    # B-Wing/E2 grants crew slot
    common.setShipType('#rebel-builder', 1, 'B-Wing')
    common.setPilot('#rebel-builder', 1, 'Blue Squadron Pilot')
    common.addUpgrade('#rebel-builder', 1, 1, 'Advanced Sensors')
    common.addUpgrade('#rebel-builder', 1, 2, 'Heavy Laser Cannon')
    common.addUpgrade('#rebel-builder', 1, 3, 'Proton Torpedoes')
    common.addUpgrade('#rebel-builder', 1, 4, 'Advanced Proton Torpedoes')
    common.addUpgrade('#rebel-builder', 1, 5, 'B-Wing/E2')
    common.addUpgrade('#rebel-builder', 1, 6, 'Gunner')
    # Switching to Ten Numb should keep everything (except for new empty elite slot)
    common.setPilot('#rebel-builder', 1, 'Ten Numb')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 1, 1)
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, 'Advanced Sensors')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'Heavy Laser Cannon')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 4, 'Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 5, 'Advanced Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 6, 'B-Wing/E2')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 7, 'Gunner')
    # Switching down to Dagger squad should keep everything but elite
    common.setPilot('#rebel-builder', 1, 'Dagger Squadron Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Advanced Sensors')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, 'Heavy Laser Cannon')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 4, 'Advanced Proton Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 5, 'B-Wing/E2')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 6, 'Gunner')

    common.removeShip('#rebel-builder', 1)

    common.openEmpireBuilder()

    # Royal Guard TIE grants extra mod, but is ineligible on Alpha squad
    common.setShipType('#empire-builder', 1, 'TIE Interceptor')
    common.setPilot('#empire-builder', 1, 'Royal Guard Pilot')
    common.addUpgrade('#empire-builder', 1, 1, 'Adrenaline Rush')
    common.addUpgrade('#empire-builder', 1, 2, 'Royal Guard TIE')
    common.addUpgrade('#empire-builder', 1, 3, 'Targeting Computer')
    common.addUpgrade('#empire-builder', 1, 4, 'Shield Upgrade')
    common.assertTotalPoints(test, '#empire-builder', 29)
    # Switching to Alpha should drop extra mod
    common.setPilot('#empire-builder', 1, 'Alpha Squadron Pilot')
    common.assertNoUpgradeInSlot(test, '#empire-builder', 1, 1)
    common.assertTotalPoints(test, '#empire-builder', 20)
    casper.then ->
        test.assertDoesntExist("#empire-builder #{common.selectorForUpgradeIndex 1, 3}", "Second modification was rescinded")

    .run ->
        test.done()

casper.test.begin "Changing ship autoselects first non-unique pilot", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setShipType('#rebel-builder', 1, 'X-Wing')
    common.assertPilotIs(test, '#rebel-builder', 1, 'Rookie Pilot')

    common.setShipType('#rebel-builder', 1, 'A-Wing')
    common.assertPilotIs(test, '#rebel-builder', 1, 'Prototype Pilot')

    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "Changing ship with unique pilot releases unique", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setShipType('#rebel-builder', 1, 'X-Wing')
    common.setPilot('#rebel-builder', 1, 'Luke Skywalker')

    common.setShipType('#rebel-builder', 1, 'A-Wing')
    common.assertPilotIs(test, '#rebel-builder', 1, 'Prototype Pilot')

    common.setShipType('#rebel-builder', 2, 'X-Wing')
    common.setPilot('#rebel-builder', 2, 'Luke Skywalker')
    common.assertPilotIs(test, '#rebel-builder', 2, 'Luke Skywalker')

    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()
