common = require './common'

common.setup()


casper.test.begin "TIE/x1", (test) ->
    common.waitForStartup('#rebel-builder')

    common.openEmpireBuilder()

    common.createList('#empire-builder', [
        {
            ship: 'TIE Advanced'
            pilot: 'Tempest Squadron Pilot'
            upgrades: [
                null
                null
                null
            ]
        }
    ])

    common.assertTotalPoints(test, '#empire-builder', 21)
    test.assertDoesntExist "#empire-builder #{common.selectorForUpgradeIndex 1, 4}", "TIE Advanced has no system slot by default"

    common.addUpgrade('#empire-builder', 1, 2, 'TIE/x1')
    common.addUpgrade('#empire-builder', 1, 4, 'Accuracy Corrector')
    common.assertTotalPoints(test, '#empire-builder', 21) # discounted

    common.addUpgrade('#empire-builder', 1, 4, 'Advanced Targeting Computer')
    common.assertTotalPoints(test, '#empire-builder', 22) # discounted

    .run ->
        test.done()
