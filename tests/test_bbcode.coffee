common = require './common'

common.setup()


casper.test.begin "BBCode", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
                null
                null
                null
            ]
        }
    ])

    .then ->
        @click "#rebel-builder #{common.selectorForViewAsTextButton}"
        @waitUntilVisible "#rebel-builder #{common.selectorForBBCodeView}"
        @click "#rebel-builder #{common.selectorForBBCodeView}"
        @waitUntilVisible "#rebel-builder #{common.selectorForBBCodeTextarea}"
        bbcode = @evaluate (s) ->
            $(s).val()
        , "#rebel-builder #{common.selectorForBBCodeTextarea}"
        test.assertNotEquals bbcode.indexOf('[b]Prototype Pilot (17)[/b]'), -1
        @click "#rebel-builder #{common.selectorForClosePrintDialog}"

    .run ->
        test.done()
