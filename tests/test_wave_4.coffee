common = require './common'

common.setup()


casper.test.begin "Advanced Cloaking Device", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()

    common.createList('#empire-builder', [
        {
            ship: 'TIE Interceptor'
            pilot: 'Alpha Squadron Pilot'
            upgrades: [
                null
                null
            ]
        }
        {
            ship: 'TIE Phantom'
            pilot: 'Sigma Squadron Pilot'
            upgrades: [
                null
                null
            ]
        }
    ])

    # TIE Phantom only
    common.assertNoMatch(test, "#empire-builder #{common.selectorForUpgradeIndex 1, 2}", 'Advanced Cloaking Device')
    common.addUpgrade('#empire-builder', 2, 3, 'Advanced Cloaking Device')

    .run ->
        test.done()
