common = require './common'

common.setup()


casper.test.begin "Mist Hunter equips Tractor Beam", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openScumBuilder()
    common.addShip('#scum-builder', 'G-1A Starfighter', 'Zuckuss')
    .then ->
        test.assertDoesntExist "#scum-builder #{common.selectorForUpgradeIndex 1, 7}", "G-1A has no cannon slot by default"
    common.addUpgrade('#scum-builder', 1, 5, 'Mist Hunter')
    common.assertUpgradeInSlot(test, '#scum-builder', 1, 7, 'Tractor Beam')

    common.removeUpgrade('#scum-builder', 1, 5)
    .then ->
        test.assertDoesntExist "#scum-builder #{common.selectorForUpgradeIndex 1, 7}", "G-1A should no longer have a cannon slot"

    common.removeShip('#scum-builder', 1)

    .run ->
        test.done()
