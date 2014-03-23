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

casper.test.begin "Can have multiple rows with ships but no pilots", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setShipType('#rebel-builder', 1, 'X-Wing')
    common.setShipType('#rebel-builder', 2, 'Y-Wing')
    common.setShipType('#rebel-builder', 3, 'A-Wing')
    common.setShipType('#rebel-builder', 4, 'B-Wing')

    common.assertTotalPoints(test, '#rebel-builder', 0)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "Changing ship unassigns pilot", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.assertTotalPoints(test, '#rebel-builder', 21)
    common.setShipType('#rebel-builder', 1, 'Y-Wing')
    common.assertTotalPoints(test, '#rebel-builder', 0)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()
