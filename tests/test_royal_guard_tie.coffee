common = require './common'

common.setup()


casper.test.begin "Royal Guard TIE title", (test) ->
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
            ship: 'TIE Interceptor'
            pilot: 'Avenger Squadron Pilot'
            upgrades: [
                null
                null
            ]
        }
        {
            ship: 'TIE Interceptor'
            pilot: 'Saber Squadron Pilot'
            upgrades: [
                null
                null
                null
            ]
        }
        {
            ship: 'TIE Interceptor'
            pilot: 'Royal Guard Pilot'
            upgrades: [
                null
                null
                null
            ]
        }
    ])

    # low skill interceptors can't have this
    common.assertMatchIsDisabled(test, common.selectorForUpgradeIndex(1, 1), 'Royal Guard TIE')
    common.assertMatchIsDisabled(test, common.selectorForUpgradeIndex(2, 1), 'Royal Guard TIE')
    common.assertMatchIsDisabled(test, common.selectorForUpgradeIndex(3, 2), 'Royal Guard TIE')

    # saber squad can equip only if they have veteran instincts
    common.selectFirstMatch(common.selectorForUpgradeIndex(3, 1), 'Veteran Instincts')
    common.selectFirstMatch(common.selectorForUpgradeIndex(3, 2), 'Royal Guard TIE')
    common.selectFirstMatch(common.selectorForUpgradeIndex(3, 3), 'Hull Upgrade')
    # while we're here, enforce modification uniqueness from title
    common.assertMatchIsDisabled(test, common.selectorForUpgradeIndex(3, 4), 'Hull Upgrade')
    common.selectFirstMatch(common.selectorForUpgradeIndex(3, 4), 'Shield Upgrade')

    # royal guard can equip, period
    common.selectFirstMatch(common.selectorForUpgradeIndex(4, 2), 'Royal Guard TIE')
    common.selectFirstMatch(common.selectorForUpgradeIndex(4, 3), 'Hull Upgrade')
    common.selectFirstMatch(common.selectorForUpgradeIndex(4, 4), 'Shield Upgrade')

    .run ->
        test.done()

casper.test.begin "Royal Guard TIE title unique mods (German)", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    common.selectLanguage('Deutsch')

    common.createList('#empire-builder', [
        {
            ship: 'TIE-Abfangjäger'
            pilot: 'Pilot der Roten Garde'
            upgrades: [
                null
                'TIE der Roten Garde'
                'Tarnvorrichtung'
            ]
        }
    ])

    common.assertMatchIsDisabled(test, common.selectorForUpgradeIndex(1, 4), 'Tarnvorrichtung')

    common.selectLanguage('English')

    .run ->
        test.done()

casper.test.begin "Royal Guard TIE title unique mods (Spanish)", (test) ->
    common.waitForStartup('#rebel-builder')
    common.openEmpireBuilder()

    common.selectLanguage('Español')

    common.createList('#empire-builder', [
        {
            ship: 'Interceptor TIE'
            pilot: 'Piloto de la guardia Real'
            upgrades: [
                null
                'TIE de la Guardia Real'
                'Dispositivo de Sigilo'
            ]
        }
    ])

    common.assertMatchIsDisabled(test, common.selectorForUpgradeIndex(1, 4), 'Dispositivo de Sigilo')

    common.selectLanguage('English')

    .run ->
        test.done()
