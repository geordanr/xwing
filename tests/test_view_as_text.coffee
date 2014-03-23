common = require './common'

common.setup()


casper.test.begin "View as text", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Wedge Antilles'
            upgrades: [
                null
                null
                'R2 Astromech'
                null
            ]
        }
        {
            ship: 'A-Wing'
            pilot: 'Tycho Celchu'
            upgrades: [
                'Push the Limit'
                null
                null
            ]
        }
    ])

    .then ->
        @click('#rebel-builder .view-as-text')
        @waitUntilVisible('#rebel-builder .modal')
    .then ->
        @click('#rebel-builder .modal .select-fancy-view')
    .then ->
        @waitUntilVisible('#rebel-builder .modal .fancy-list')
    .then ->
        test.assertSelectorHasText('#rebel-builder .modal .fancy-list', "When attacking, reduce the defender's agility")
        test.assertSelectorHasText('#rebel-builder .modal .fancy-list', "You may perform actions even while you have")
        test.assertSelectorHasText('#rebel-builder .modal .fancy-list', "R2 Astromech")
        test.assertSelectorHasText('#rebel-builder .modal .fancy-list', "Push the Limit")
    .then ->
        @click('#rebel-builder .modal .select-simple-view')
        @waitUntilVisible('#rebel-builder .modal .simple-list')
    .then ->
        test.assertSelectorHasText('#rebel-builder .modal .simple-list', 'Wedge Antilles')
        test.assertSelectorHasText('#rebel-builder .modal .simple-list', 'X-Wing')
        test.assertSelectorHasText('#rebel-builder .modal .simple-list', 'Tycho Celchu')
        test.assertSelectorHasText('#rebel-builder .modal .simple-list', 'A-Wing')
    .then ->
        @click('#rebel-builder .modal .select-bbcode-view')
        @waitUntilVisible('#rebel-builder .modal .bbcode-list')
    .then ->
        bbcode = @evaluate ->
            $('#rebel-builder .modal .bbcode-list textarea').val()
        test.assertNot(bbcode.indexOf('[b]Wedge Antilles (29)[/b]') == -1)
        test.assertNot(bbcode.indexOf('[i]R2 Astromech (1)[/i]') == -1)
        test.assertNot(bbcode.indexOf('[b]Tycho Celchu (26)[/b]') == -1)
        test.assertNot(bbcode.indexOf('[i]Push the Limit (3)[/i]') == -1)
        test.assertNot(bbcode.indexOf('[b][i]Total: 59[/i][/b]') == -1)

    .run ->
        test.done()
