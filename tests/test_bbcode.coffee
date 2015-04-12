common = require './common'

common.setup()


casper.test.begin "BBCode View", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
                'Chardaan Refit'
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
        test.assertNotEquals bbcode.indexOf('[i]Chardaan Refit (-2)[/i]'), -1
        @click "#rebel-builder #{common.selectorForClosePrintDialog}"

    .run ->
        test.done()


casper.test.begin "HTML View", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
                'Chardaan Refit'
                null
                null
            ]
        }
    ])

    .then ->
        @click "#rebel-builder #{common.selectorForViewAsTextButton}"
        @waitUntilVisible "#rebel-builder #{common.selectorForHTMLView}"
        @click "#rebel-builder #{common.selectorForHTMLView}"
        @waitUntilVisible "#rebel-builder #{common.selectorForHTMLTextarea}"
        html = @evaluate (s) ->
            $(s).val()
        , "#rebel-builder #{common.selectorForHTMLTextarea}"
        test.assertNotEquals html.indexOf('<b>Prototype Pilot (17)</b>'), -1
        test.assertNotEquals html.indexOf('<i>Chardaan Refit (-2)</i>'), -1
        @click "#rebel-builder #{common.selectorForClosePrintDialog}"

    .run ->
        test.done()
