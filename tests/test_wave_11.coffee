common = require './common'

common.setup()

casper.test.begin "Cad Bane/Bomblet Generator (#475)", (test) ->
    common.waitForStartup('#scum-builder', 'app/index.html?f=Scum%20and%20Villainy&d=v4!s!119:-1,-1,237,238,-1,-1:-1:-1:U.-1&sn=Unnamed%20Squadron&obs=')
    .then ->
        @waitUntilVisible '#scum-builder .total-points'
    common.assertTotalPoints(test, '#scum-builder', 40)

    .run ->
        test.done()
