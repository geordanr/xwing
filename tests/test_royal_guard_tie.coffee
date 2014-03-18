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
    common.assertNoMatch(test, common.selectorForUpgradeIndex(1, 1), 'Royal Guard TIE')
    common.assertNoMatch(test, common.selectorForUpgradeIndex(2, 1), 'Royal Guard TIE')
    common.assertNoMatch(test, common.selectorForUpgradeIndex(3, 2), 'Royal Guard TIE')

    # saber squad can equip only if they have veteran instincts
    common.selectFirstMatch(common.selectorForUpgradeIndex(3, 1), 'Veteran Instincts')
    common.selectFirstMatch(common.selectorForUpgradeIndex(3, 2), 'Royal Guard TIE')
    common.selectFirstMatch(common.selectorForUpgradeIndex(3, 3), 'Hull Upgrade')
    # while we're here, enforce modification uniqueness from title
    common.assertNoMatch(test, common.selectorForUpgradeIndex(3, 4), 'Hull Upgrade')
    common.selectFirstMatch(common.selectorForUpgradeIndex(3, 4), 'Shield Upgrade')

    # royal guard can equip, period
    common.selectFirstMatch(common.selectorForUpgradeIndex(4, 2), 'Royal Guard TIE')
    common.selectFirstMatch(common.selectorForUpgradeIndex(4, 3), 'Hull Upgrade')
    common.selectFirstMatch(common.selectorForUpgradeIndex(4, 4), 'Shield Upgrade')

    .run ->
        test.done()
