common = require './common'

common.setup()


casper.test.begin "German translations", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    common.selectLanguage('Deutsch')

    common.createList('#empire-builder', [
        {
            ship: 'TIE Abfangjäger'
            pilot: "Pilot der Alpha-Staffel"
            upgrades: [
                null
                null
            ]
        }
        {
            ship: 'TIE Fighter'
            pilot: "Pilot der Akademie"
            upgrades: [
                null
                null
            ]
        }
    ])

    common.assertTotalPoints(test, '#empire-builder', 30)

    .run ->
        test.done()
