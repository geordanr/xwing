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
        {
            ship: 'HWK-290'
            pilot: 'Rebel Operative'
            upgrades: [
            ]
        }
    ])

    # Can't add Kyle or Jan in their own ships
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForShipIndex 2} #{common.selectorForPilotDropdown}", 'Kyle Katarn')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForShipIndex 2} #{common.selectorForPilotDropdown}", 'Jan Ors')

    common.removeShip('#rebel-builder', 1)
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
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'Kyle Katarn')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'Jan Ors')

    # Can't put Kyle or Jan on Jan's ship
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'Kyle Katarn')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 3}", 'Jan Ors')

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()

casper.test.begin "A-Wing Test Pilot", (test) ->
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
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 2}", 'A-Wing Test Pilot')
    common.addUpgrade('#rebel-builder', 2, 3, 'A-Wing Test Pilot')
    common.assertTotalPoints(test, '#rebel-builder', 59)

    # Can add two different elites
    common.addUpgrade('#rebel-builder', 2, 1, 'Adrenaline Rush')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", 'Adrenaline Rush')
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

casper.test.begin "A-Wing Test Pilot (German)", (test) ->
    common.waitForStartup('#rebel-builder')

    common.selectLanguage('Deutsch')

    common.createList('#rebel-builder', [
        {
            ship: 'A-Flügler'
            pilot: 'Testpilot'
            upgrades: [
            ]
        }
        {
            ship: 'A-Flügler'
            pilot: 'Pilot der Grün-Staffel'
            upgrades: [
            ]
        }
        {
            ship: 'X-Flügler'
            pilot: 'Pilot der Rot-Staffel'
            upgrades: [
            ]
        }
    ])

    .then ->
        # A-Wing only
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 2} .select2-choice", 'kein Titel', "Prototype Pilot has title field"
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 2, 3} .select2-choice", 'kein Titel', "Green Squadron Pilot has title field"
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 3, 4}", "X-Wings have no titles (yet)"
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", "Green Squad doesn't have two elites by default"

    # Equippable on PS1+ only (no Prototype)
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 2}", 'Erfahrener Testpilot')
    common.addUpgrade('#rebel-builder', 2, 3, 'Erfahrener Testpilot')
    common.assertTotalPoints(test, '#rebel-builder', 59)

    # Can add two different elites
    common.addUpgrade('#rebel-builder', 2, 1, 'Adrenalinschub')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", 'Adrenalinschub')
    common.addUpgrade('#rebel-builder', 2, 5, 'Meisterschütze')
    common.assertTotalPoints(test, '#rebel-builder', 61)

    # Removing the title removes the elite slot
    common.removeUpgrade('#rebel-builder', 2, 3)
    .then ->
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", "Green Squad no longer has two elite slots"
    common.assertTotalPoints(test, '#rebel-builder', 60)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    common.selectLanguage('English')

    .run ->
        test.done()

casper.test.begin "A-Wing Test Pilot (Spanish)", (test) ->
    common.waitForStartup('#rebel-builder')

    common.selectLanguage('Español')

    common.createList('#rebel-builder', [
        {
            ship: 'Ala-A'
            pilot: 'Piloto de pruebas'
            upgrades: [
            ]
        }
        {
            ship: 'Ala-A'
            pilot: 'Piloto del escuadrón verde'
            upgrades: [
            ]
        }
        {
            ship: 'Ala-X'
            pilot: 'Piloto del escuadrón rojo'
            upgrades: [
            ]
        }
    ])

    .then ->
        # A-Wing only
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 1, 2} .select2-choice", 'Sin Título', "Prototype Pilot has title field"
        test.assertSelectorHasText "#rebel-builder #{common.selectorForUpgradeIndex 2, 3} .select2-choice", 'Sin Título', "Green Squadron Pilot has title field"
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 3, 4}", "X-Wings have no titles (yet)"
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", "Green Squad doesn't have two elites by default"

    # Equippable on PS1+ only (no Prototype)
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 2}", 'Piloto de Ala-A experimental')
    common.addUpgrade('#rebel-builder', 2, 3, 'Piloto de Ala-A experimental')
    common.assertTotalPoints(test, '#rebel-builder', 59)

    # Can add two different elites
    common.addUpgrade('#rebel-builder', 2, 1, 'Descarga de Adrenalina')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", 'Descarga de Adrenalina')
    common.addUpgrade('#rebel-builder', 2, 5, 'Certero')
    common.assertTotalPoints(test, '#rebel-builder', 61)

    # Removing the title removes the elite slot
    common.removeUpgrade('#rebel-builder', 2, 3)
    .then ->
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 2, 5}", "Green Squad no longer has two elite slots"
    common.assertTotalPoints(test, '#rebel-builder', 60)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    common.selectLanguage('English')

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
            ship: 'Z-95 Headhunter'
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

casper.test.begin "B-Wing/E2", (test) ->
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
    common.assertNoMatch(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", "B-Wing/E2")

    .then ->
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 1, 6}", "Blue Squad doesn't have crew by default"

    common.addUpgrade('#rebel-builder', 1, 5, 'B-Wing/E2')
    common.addUpgrade('#rebel-builder', 1, 6, 'Flight Instructor')
    common.assertTotalPoints(test, '#rebel-builder', 50)

    # Removing the modification removes the crew slot
    common.removeUpgrade('#rebel-builder', 1, 5)
    .then ->
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 1, 6}", "Blue Squad no longer has a crew slot"
    common.assertTotalPoints(test, '#rebel-builder', 45)

    common.removeShip('#rebel-builder', 1)
    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()
