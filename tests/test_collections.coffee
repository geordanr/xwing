common = require './common'

common.setup()


casper.test.begin "Collections API: pilots", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Core": 1
                    "TIE Fighter Expansion Pack": 1

        test.assertTruthy @evaluate ->
            window.collection

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"

        test.assertFalsy @evaluate ->
            window.collection.use "pilot", "Academy Pilot"

        test.assertFalsy @evaluate ->
            window.collection.use "pilot", "Alpha Squadron Pilot"

    .run ->
        test.done()


casper.test.begin "Collections API: upgrade", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Core": 1

        test.assertTruthy @evaluate ->
            window.collection

        test.assert @evaluate ->
            window.collection.use "upgrade", "R2-D2"

        test.assertFalsy @evaluate ->
            window.collection.use "upgrade", "R2-D2"

        test.assertFalsy @evaluate ->
            window.collection.use "upgrade", "Ion Pulse Missiles"

    .run ->
        test.done()


casper.test.begin "Collections API: modification", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Millennium Falcon Expansion Pack": 1

        test.assertTruthy @evaluate ->
            window.collection

        test.assertTruthy @evaluate ->
            window.collection

        test.assert @evaluate ->
            window.collection.use "modification", "Engine Upgrade"

        test.assertFalsy @evaluate ->
            window.collection.use "modification", "Engine Upgrade"

        test.assertFalsy @evaluate ->
            window.collection.use "modification", "Hull Upgrade"

    .run ->
        test.done()

casper.test.begin "Collections API: title", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Imperial Aces Expansion Pack": 1

        test.assert @evaluate ->
            window.collection.use "title", "Royal Guard TIE"

        test.assert @evaluate ->
            window.collection.use "title", "Royal Guard TIE"

        test.assertFalsy @evaluate ->
            window.collection.use "title", "Royal Guard TIE"

        test.assertFalsy @evaluate ->
            window.collection.use "title", "Slave I"

    .run ->
        test.done()


casper.test.begin "Collections API: reset", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "TIE Fighter Expansion Pack": 1

        test.assertTruthy @evaluate ->
            window.collection

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"

        test.assertFalsy @evaluate ->
            window.collection.use "pilot", "Academy Pilot"

        @evaluate ->
            window.collection.reset()

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"

    .run ->
        test.done()


casper.test.begin "Empty collection means no checks are done", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions: {}

    common.addShip('#rebel-builder', 'X-Wing', 'Red Squadron Pilot')
    .then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    common.addShip('#rebel-builder', 'B-Wing', 'Blue Squadron Pilot')
    .then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    .run ->
        test.done()

casper.test.begin "Squad possibility with ship model claiming", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Core": 1

    common.addShip('#rebel-builder', 'X-Wing', 'Red Squadron Pilot')
    .then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    common.addShip('#rebel-builder', 'X-Wing', 'Red Squadron Pilot')
    .then ->
        test.assertVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    .then ->
        @evaluate ->
            window.collection.expansions.Core = 2
            $(window).trigger('xwing-collection:changed')
    .then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    .run ->
        test.done()

casper.test.begin "Reducing expansions to zero", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Core": 1
                    "B-Wing Expansion Pack": 2

    common.addShip('#rebel-builder', 'B-Wing', 'Blue Squadron Pilot')
    .then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    common.addShip('#rebel-builder', 'B-Wing', 'Blue Squadron Pilot')
    .then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    .then ->
        @evaluate ->
            console.log "Setting B-Wing expansion count to 0"
            window.collection.expansions['B-Wing Expansion Pack'] = 0
            $(window).trigger('xwing-collection:changed')
    .then ->
        test.assertVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    .run ->
        test.done()

casper.test.begin "No collection cross-builder interaction", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Core": 1
                    "B-Wing Expansion Pack": 2
                    "TIE Interceptor Expansion Pack": 1

    common.addShip('#rebel-builder', 'B-Wing', 'Blue Squadron Pilot')
    .then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    common.openEmpireBuilder()
    common.addShip('#empire-builder', 'TIE Interceptor', 'Alpha Squadron Pilot')
    .then ->
        test.assertNotVisible("#empire-builder #{common.selectorForCollectionInvalid}")

    common.openRebelBuilder()
    .then ->
        test.assertNotVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    common.addShip('#rebel-builder', 'A-Wing', 'Green Squadron Pilot')
    .then ->
        test.assertVisible("#rebel-builder #{common.selectorForCollectionInvalid}")

    common.openEmpireBuilder()
    common.addShip('#empire-builder', 'TIE Advanced', 'Storm Squadron Pilot')
    .then ->
        test.assertVisible("#empire-builder #{common.selectorForCollectionInvalid}")

    .run ->
        test.done()
