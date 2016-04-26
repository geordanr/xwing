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

casper.test.begin "Sabine and B-Wing/E2 #315", (test) ->
    common.waitForStartup('#rebel-builder')

    common.addShip('#rebel-builder', 'B-Wing', 'Blue Squadron Pilot')
    common.addUpgrade('#rebel-builder', 1, 5, 'B-Wing/E2')
    common.addUpgrade('#rebel-builder', 1, 6, 'Sabine Wren')
    common.addUpgrade('#rebel-builder', 1, 7, 'Ion Bombs')

    common.removeUpgrade('#rebel-builder', 1, 5)
    .then ->
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 1, 7}", "B-Wing should no longer have a bomb slot"
    .then ->
        test.assertDoesntExist "#rebel-builder #{common.selectorForUpgradeIndex 1, 6}", "B-Wing should no longer have a crew slot"

    common.removeShip('#rebel-builder', 1)

    .run ->
        test.done()
