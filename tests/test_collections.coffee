common = require './common'

common.setup()


casper.test.begin "Collections API", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Core": 2
                    "TIE Fighter Expansion Pack": 4
                    "B-Wing Expansion Pack": 2

        test.assertTruthy @evaluate ->
            window.collection
        , 'Collection should be instantiated'

        test.assert @evaluate ->
            window.collection.use "pilot", "Red Squadron Pilot"
        , 'Red Squadron Pilot should be available'

        test.assert @evaluate ->
            window.collection.use "upgrade", "R2-D2"
        , 'R2-D2 should be available'

        test.assertFalsy @evaluate ->
            window.collection.use "upgrade", "Ion Pulse Missiles"
        , 'Ion Pulse Missiles should not be available'

        test.assert @evaluate ->
            window.collection.release "pilot", "Red Squadron Pilot"
        , 'Red Squadron Pilot should be allowed to be returned'

        test.assertFalsy @evaluate ->
            window.collection.release "pilot", "Sigma Squadron Pilot"
        , 'Sigma Squadron Pilot should not be allowed to be returned'

        test.assertFalsy @evaluate ->
            window.collection.use "upgrade", "R2-D2"
        , "R2-D2 should not be available yet"

        @evaluate ->
            window.collection.reset()

        test.assert @evaluate ->
            window.collection.use "upgrade", "R2-D2"
        , "R2-D2 should be available after reset"

    .run ->
        test.done()
