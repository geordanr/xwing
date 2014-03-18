common = require './common'

common.setup()


casper.test.begin "New squad", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Rookie Pilot'
            upgrades: [
                null
                'R2 Astromech'
                null
            ]
        }
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
                'Concussion Missiles'
                null
            ]
        }
    ])

    .then ->
        @click '#rebel-builder .clear-squad'
        @waitUntilVisible '.modal .modal-footer button.discard'
    .then ->
        @click '.modal .modal-footer button.btn-primary'
    common.assertTotalPoints(test, '#rebel-builder', 43)

    .then ->
        @click '#rebel-builder .clear-squad'
        @waitUntilVisible '.modal .modal-footer button.discard'
    .then ->
        @click '.modal .modal-footer button.discard'
    common.assertTotalPoints(test, '#rebel-builder', 0)

    .run ->
        test.done()
