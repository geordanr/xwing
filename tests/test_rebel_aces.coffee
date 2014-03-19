common = require './common'

common.setup()


casper.test.begin "Kyle and Jan crew uniqueness", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'YT-1300'
            pilot: 'Chewbacca'
            upgrades: [
                null
                null
                "Kyle Katarn"
                "Jan Ors"
                null
                null
            ]
        }
    ])

    # Can't add Kyle or Jan in their own ships
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForLastShip} .pilot-selector-container .select2-container", 'Kyle Katarn')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForLastShip} .pilot-selector-container .select2-container", 'Jan Ors')

    common.removeShip('#rebel-builder', 1)

    common.createList('#rebel-builder', [
        {
            ship: 'HWK-290'
            pilot: 'Kyle Katarn'
            upgrades: [
                null
                null
                null
                null
                null
            ]
        }
        {
            ship: 'HWK-290'
            pilot: 'Jan Ors'
            upgrades: [
                null
                null
                null
                null
                null
            ]
        }
    ])

    # Can't put Kyle or Jan on Kyle's ship
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'Kyle Katarn')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'Jan Ors')

    # Can't put Kyle or Jan on Jan's ship
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'Kyle Katarn')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'Jan Ors')

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "Prototype Veteran", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
            ]
        }
        {
            ship: 'A-Wing'
            pilot: 'Green Squadron Pilot'
            upgrades: [
            ]
        }
        {
            ship: 'X-Wing'
            pilot: 'Red Squadron Pilot'
            upgrades: [
            ]
        }
    ])

    .then ->
        # A-Wing only
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 2} .select2-choice", 'No Title', "Prototype Pilot has title field"
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 2, 3} .select2-choice", 'No Title', "Green Squadron Pilot has title field"
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 3, 4}", "X-Wings have no titles (yet)"
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", "Green Squad doesn't have two elites by default"

    # Equippable on PS1+ only (no Prototype)
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 2}", 'Prototype Veteran')
    common.addUpgrade('#rebel-builder', 2, 3, 'Prototype Veteran')
    common.assertTotalPoints(test, '#rebel-builder', 59)

    # Can add two different elites
    common.addUpgrade('#rebel-builder', 2, 1, 'Adrenaline Rush')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", 'Adrenaline Rush')
    common.addUpgrade('#rebel-builder', 2, 5, 'Deadeye')
    common.assertTotalPoints(test, '#rebel-builder', 61)

    # Removing the title removes the elite slot
    common.removeUpgrade('#rebel-builder', 2, 3)
    .then ->
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", "Green Squad no longer has two elite slots"
    common.assertTotalPoints(test, '#rebel-builder', 60)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "Chardaan Refit", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
            ]
        }
        {
            ship: 'YT-1300'
            pilot: 'Lando Calrissian'
            upgrades: [
            ]
        }
        {
            ship: 'Z-95'
            pilot: 'Bandit Squadron Pilot'
            upgrades: [
            ]
        }
    ])

    # A-Wing only
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 2}", 'Chardaan Refit')
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 3, 1}", 'Chardaan Refit')
    common.addUpgrade('#rebel-builder', 1, 1, 'Chardaan Refit')

    # Negative points
    common.assertTotalPoints(test, '#rebel-builder', 71)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    # Empire ships shouldn't have it
    common.openEmpireBuilder()

    common.createList('#empire-builder', [
        {
            ship: 'TIE Bomber'
            pilot: 'Gamma Squadron Pilot'
            upgrades: [
            ]
        }
        {
            ship: 'Firespray-31'
            pilot: 'Bounty Hunter'
            upgrades: [
            ]
        }
        {
            ship: 'TIE Advanced'
            pilot: 'Tempest Squadron Pilot'
            upgrades: [
            ]
        }
    ])

    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 3}", 'Chardaan Refit')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 4}", 'Chardaan Refit')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 2, 4}", 'Chardaan Refit')
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 3, 1}", 'Chardaan Refit')

    common.removeShip('#empire-builder', 1)
    common.removeShip('#empire-builder', 1)
    common.removeShip('#empire-builder', 1)

    .run ->
        test.done()

casper.test.begin "B-Wing/E", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'B-Wing'
            pilot: 'Blue Squadron Pilot'
            upgrades: [
            ]
        }
        {
            ship: 'X-Wing'
            pilot: 'Red Squadron Pilot'
            upgrades: [
            ]
        }
    ])

    # B-Wing only
    .then ->
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 5} .select2-choice", 'No Title', "Blue Squadron Pilot has title field"
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 2, 4}", "X-Wings have no titles (yet)"
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 1, 7}", "Blue Squad doesn't have crew by default"

    common.addUpgrade('#rebel-builder', 1, 5, 'B-Wing/E')
    common.addUpgrade('#rebel-builder', 1, 7, 'Gunner')
    #common.assertTotalPoints(test, '#rebel-builder', 50) # don't know how many points

    # Removing the title removes the crew slow
    common.removeUpgrade('#rebel-builder', 1, 5)
    .then ->
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 1, 7}", "Blue Squad no longer has a crew slot"
    common.assertTotalPoints(test, '#rebel-builder', 45)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()
