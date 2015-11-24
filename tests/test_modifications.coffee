common = require './common'

common.setup()


casper.test.begin "Advanced Pursuit Lasers can only be fitted on Large ships", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setGameType('#rebel-builder', 'epic')

    common.addShip('#rebel-builder', 'YT-1300', 'Outer Rim Smuggler')
    common.addShip('#rebel-builder', 'GR-75 Medium Transport', 'GR-75 Medium Transport')
    common.addShip('#rebel-builder', 'A-Wing', 'Prototype Pilot')

    common.assertSelect2IsEmpty(test, "#rebel-builder #{common.selectorForUpgradeIndex(2, 7)}", 'Anti-Pursuit Lasers')
    common.assertSelect2IsEmpty(test, "#rebel-builder #{common.selectorForUpgradeIndex(3, 3)}", 'Anti-Pursuit Lasers')

    common.addUpgrade("#rebel-builder", 1, 4, 'Anti-Pursuit Lasers')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 4, 'Anti-Pursuit Lasers')

    .run ->
        test.done()
