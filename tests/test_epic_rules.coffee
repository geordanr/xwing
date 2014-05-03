common = require './common'

common.setup()


casper.test.begin "No more than 12 small ships of the same type", (test) ->
    common.waitForStartup('#rebel-builder')

    # in non-epic mode, no restrictions
    for _ in [1..13]
        common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')

    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")

    # in epic mode, warning should appear
    common.setGameType('#rebel-builder', 'epic')
    casper.then ->
        test.assertVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")
    common.setGameType('#rebel-builder', 'team-epic')
    casper.then ->
        test.assertVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")
    common.setGameType('#rebel-builder', 'custom')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")
    common.setGameType('#rebel-builder', 'standard')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")

    # remove 5 x-wings, add 8 a-wings. should be okay.
    for _ in [1..5]
        common.removeShip('#rebel-builder', 1)
    for _ in [1..8]
        common.addShip('#rebel-builder', 'A-Wing', 'Prototype Pilot')

    common.setGameType('#rebel-builder', 'epic')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")
    common.setGameType('#rebel-builder', 'team-epic')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")
    common.setGameType('#rebel-builder', 'custom')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")
    common.setGameType('#rebel-builder', 'standard')
    casper.then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForTooManySmallShipsWarning}")

    for _ in [1..13]
        common.removeShip('#rebel-builder', 1)

    casper.run ->
        test.done()


casper.test.begin "No more than 6 large ships of the same type", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    # in non-epic mode, no restrictions
    for _ in [1..7]
        common.addShip('#empire-builder', 'Firespray-31', 'Bounty Hunter')

    casper.then ->
        test.assertNotVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")

    # in epic mode, warning should appear
    common.setGameType('#empire-builder', 'epic')
    casper.then ->
        test.assertVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")
    common.setGameType('#empire-builder', 'team-epic')
    casper.then ->
        test.assertVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")
    common.setGameType('#empire-builder', 'custom')
    casper.then ->
        test.assertNotVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")
    common.setGameType('#empire-builder', 'standard')
    casper.then ->
        test.assertNotVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")

    for _ in [1..3]
        common.removeShip('#empire-builder', 1)
    for _ in [1..4]
        common.addShip('#empire-builder', 'Lambda-Class Shuttle', 'Omicron Group Pilot')

    common.setGameType('#empire-builder', 'epic')
    casper.then ->
        test.assertNotVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")
    common.setGameType('#empire-builder', 'team-epic')
    casper.then ->
        test.assertNotVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")
    common.setGameType('#empire-builder', 'custom')
    casper.then ->
        test.assertNotVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")
    common.setGameType('#empire-builder', 'standard')
    casper.then ->
        test.assertNotVisible("#empire-builder #{common.selectorForTooManyLargeShipsWarning}")

    for _ in [1..7]
        common.removeShip('#empire-builder', 1)

    casper.run ->
        test.done()
