common = require './common'

common.setup()


casper.test.begin "Limited keyword", (test) ->
    common.waitForStartup('#rebel-builder')

    common.setGameType('#rebel-builder', 'epic')

    common.createList('#rebel-builder', [
        {
            ship: 'GR-75 Medium Transport'
            pilot: 'GR-75 Medium Transport'
            upgrades: [
                null
                null
                'Backup Shield Generator'
            ]
        }
    ])

    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 4}", 'Backup Shield Generator')
    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 1, 5}", 'Backup Shield Generator')

    .run ->
        test.done()
