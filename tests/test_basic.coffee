common = require './common'

common.setup()


casper.test.begin "Page comes up", (test) ->
    casper.start "app/index.html", ->
        @waitUntilVisible '.tab-content'

    .then ->
        nav_sel = 'ul.nav.nav-pills'
        test.assertVisible nav_sel
        for tab_text in [ "Rebel Alliance", "Galactic Empire", "Scum and Villainy", "Card Browser", "About" ]
            test.assertSelectorHasText nav_sel, tab_text

        test.assertSelectorHasText '.squad-name-container .squad-name', 'Unnamed Squadron'
        test.assertSelectorHasText common.selectorForShipDropdown, 'Select a ship'

    .run ->
        test.done()

casper.test.begin "Basic functionality", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.assertShipHasPoints(test, '#rebel-builder', 1, 21)
    common.assertTotalPoints(test, '#rebel-builder', 21)
    .then ->
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 1} .select2-choice", 'No Torpedo Upgrade'
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 2} .select2-choice", 'No Astromech Upgrade'
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 3} .select2-choice", 'No Modification'
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 1, 4}"

    .run ->
        test.done()

casper.test.begin "Basic empire functionality", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    common.addShip('#empire-builder', 'TIE Fighter', 'Academy Pilot')
    common.assertShipHasPoints(test, '#empire-builder', 1, 12)
    common.assertTotalPoints(test, '#empire-builder', 12)
    .then ->
        test.assertSelectorHasText "#empire-builder #{common.selectorForUpgradeIndex 1, 1} .select2-choice", 'No Title'
        test.assertSelectorHasText "#empire-builder #{common.selectorForUpgradeIndex 1, 2} .select2-choice", 'No Modification'
        test.assertDoesntExist "#empire-builder #{common.selectorForUpgradeIndex 1, 3}"

    .run ->
        test.done()

casper.test.begin "Add/remove torpedo upgrade", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.addUpgrade('#rebel-builder', 1, 1, 'Proton Torpedoes')
    common.assertShipHasPoints(test, '#rebel-builder', 1, 25)
    common.assertTotalPoints(test, '#rebel-builder', 25)

    common.removeUpgrade('#rebel-builder', 1, 1)
    common.assertShipHasPoints(test, '#rebel-builder', 1, 21)
    common.assertTotalPoints(test, '#rebel-builder', 21)
    .then ->
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 1} .select2-choice", 'No Torpedo Upgrade'

    .run ->
        test.done()

casper.test.begin "Add/remove astromech upgrade", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.addUpgrade('#rebel-builder', 1, 2, 'R5-K6')
    common.assertShipHasPoints(test, '#rebel-builder', 1, 23)
    common.assertTotalPoints(test, '#rebel-builder', 23)

    common.removeUpgrade('#rebel-builder', 1, 2)
    common.assertShipHasPoints(test, '#rebel-builder', 1, 21)
    common.assertTotalPoints(test, '#rebel-builder', 21)
    .then ->
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 2} .select2-choice", 'No Astromech Upgrade'

    .run ->
        test.done()

casper.test.begin "Add/remove modification", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.addUpgrade('#rebel-builder', 1, 3, 'Engine Upgrade')
    common.assertShipHasPoints(test, '#rebel-builder', 1, 25)
    common.assertTotalPoints(test, '#rebel-builder', 25)

    common.removeUpgrade('#rebel-builder', 1, 3)
    common.assertShipHasPoints(test, '#rebel-builder', 1, 21)
    common.assertTotalPoints(test, '#rebel-builder', 21)
    .then ->
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 3} .select2-choice", 'No Modification'

    .run ->
        test.done()

casper.test.begin "Multiple upgrades", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.addUpgrade('#rebel-builder', 1, 1, 'Proton Torpedoes')
    common.addUpgrade('#rebel-builder', 1, 2, 'R5-K6')
    common.addUpgrade('#rebel-builder', 1, 3, 'Engine Upgrade')
    common.assertShipHasPoints(test, '#rebel-builder', 1, 31)
    common.assertTotalPoints(test, '#rebel-builder', 31)

    .run ->
        test.done()

casper.test.begin "Add/remove ships", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.addShip('#rebel-builder', 'Y-Wing', 'Gold Squadron Pilot')
    common.addShip('#rebel-builder', 'B-Wing', 'Blue Squadron Pilot')

    common.assertTotalPoints(test, '#rebel-builder', 61)

    common.removeShip('#rebel-builder', 2)
    common.assertTotalPoints(test, '#rebel-builder', 43)

    common.removeShip('#rebel-builder', 2)
    common.assertTotalPoints(test, '#rebel-builder', 21)

    common.removeShip('#rebel-builder', 1)
    common.assertTotalPoints(test, '#rebel-builder', 0)

    common.addShip('#rebel-builder', 'X-Wing', 'Rookie Pilot')
    common.assertTotalPoints(test, '#rebel-builder', 21)

    .run ->
        test.done()
