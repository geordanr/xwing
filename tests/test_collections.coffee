common = require './common'

common.setup()


casper.test.begin "Collections API", (test) ->
    common.waitForStartup('#rebel-builder')

    casper.then ->
        @evaluate ->
            window.collection = new Collection
                expansions:
                    "Core": 2
                    "TIE Fighter Expansion Pack": 1

        test.assertTruthy @evaluate ->
            window.collection
        , 'Collection should be instantiated'

        # 2 Core sets means 2 Red Squadrons

        test.assert @evaluate ->
            window.collection.use "pilot", "Red Squadron Pilot"
        , 'Red Squadron Pilot should be available'

        test.assert @evaluate ->
            window.collection.use "pilot", "Red Squadron Pilot"
        , 'Second Red Squadron Pilot should be available'

        test.assertFalsy @evaluate ->
            window.collection.use "pilot", "Red Squadron Pilot"
        , 'Third Red Squadron Pilot should not be available'

        # 2 Core sets means 4 Academy Pilots, plus 1 more from TIE Fighter expansion pack

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"
        , 'Academy Pilot should be available'

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"
        , 'Second Academy Pilot should be available'

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"
        , 'Third Academy Pilot should be available'

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"
        , 'Fourth Academy Pilot should be available'

        test.assert @evaluate ->
            window.collection.use "pilot", "Academy Pilot"
        , 'Fifth Academy Pilot should be available'

        test.assertFalsy @evaluate ->
            window.collection.use "pilot", "Academy Pilot"
        , 'Sixth Academy Pilot should not be available'

        # Core set provides R2-D2

        test.assert @evaluate ->
            window.collection.use "upgrade", "R2-D2"
        , 'R2-D2 should be available'

        # Ion Pulse isn't in any of these

        test.assertFalsy @evaluate ->
            window.collection.use "upgrade", "Ion Pulse Missiles"
        , 'Ion Pulse Missiles should not be available'

        test.assert @evaluate ->
            window.collection.release "pilot", "Red Squadron Pilot"
        , 'Red Squadron Pilot should be allowed to be returned'

        # No phantoms in here

        test.assertFalsy @evaluate ->
            window.collection.release "pilot", "Sigma Squadron Pilot"
        , 'Sigma Squadron Pilot should not be allowed to be returned'

        @evaluate ->
            window.collection.reset()

        test.assert @evaluate ->
            window.collection.use "pilot", "Red Squadron Pilot"
        , "Red Squadron Pilot should be available after reset"

    .run ->
        test.done()
