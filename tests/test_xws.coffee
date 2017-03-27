common = require './common'

common.setup()


casper.test.begin "XWS Import: 0.2.0", (test) ->
    common.waitForStartup('#rebel-builder')

    xws = '''{"description":"","faction":"rebels","name":"Unnamed Squadron","pilots":[{"name":"tychocelchu","points":30,"ship":"awing","upgrades":{"ept":["adrenalinerush","daredevil"],"missile":["chardaanrefit"],"mod":["autothrusters"],"title":["awingtestpilot"]}},{"name":"bluesquadronpilot","points":37,"ship":"bwing","upgrades":{"system":["advancedsensors"],"cannon":["autoblaster"],"torpedo":["flechettetorpedoes","extramunitions"],"crew":["leebo"],"mod":["bwinge2"]}}],"points":67,"vendor":{"yasb":{"builder":"(Yet Another) X-Wing Miniatures Squad Builder","builder_url":"https://geordanr.github.io/xwing/","link":"https://geordanr.github.io/xwing/?f=Rebel%20Alliance&d=v3!s!29:42,72:7:15:U.15;44:43,35,58,126:-1:11:U.99"}},"version":"0.2.0"}'''

    casper.then ->
        @evaluate ->
            window.rebel_sb.loadFromXWS JSON.parse(arguments[0]), $.noop
        , xws
    .then ->
        @wait 1000

    common.assertShipTypeIs(test, '#rebel-builder', 1, 'A-Wing')
    common.assertPilotIs(test, '#rebel-builder', 1, 'Tycho Celchu')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Adrenaline Rush')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, 'Chardaan Refit')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'A-Wing Test Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 4, 'Autothrusters')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 5, 'Daredevil')

    common.assertShipTypeIs(test, '#rebel-builder', 2, 'B-Wing')
    common.assertPilotIs(test, '#rebel-builder', 2, 'Blue Squadron Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 1, 'Advanced Sensors')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 2, 'Autoblaster')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 3, 'Flechette Torpedoes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 4, 'Extra Munitions')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 5, 'B-Wing/E2')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 6, '"Leebo"')

    .run ->
        test.done()


casper.test.begin "XWS Import: 0.3.0", (test) ->
    common.waitForStartup('#rebel-builder')

    xws = '''{"description":"","faction":"rebel","name":"Unsaved Squadron","pilots":[{"name":"bluesquadronpilot","points":31,"ship":"bwing","upgrades":{"system":["enhancedscopes"],"cannon":["manglercannon"],"torpedo":["extramunitions"],"crew":["intelligenceagent"],"mod":["bwinge2"]}},{"name":"herasyndulla","points":53,"ship":"vcx100","upgrades":{"system":["advancedsensors"],"turret":["autoblasterturret"],"torpedo":["protontorpedoes"],"crew":["niennunb","hansolo"],"mod":["tacticaljammer"]}},{"name":"poedameron","points":36,"ship":"t70xwing","upgrades":{"ept":["crackshot"],"tech":["weaponsguidance"],"mod":["autothrusters"]}},{"name":"banditsquadronpilot","points":16,"ship":"z95headhunter","upgrades":{"missile":["xx23sthreadtracers"],"mod":["hullupgrade"]}}],"points":136,"vendor":{"yasb":{"builder":"(Yet Another) X-Wing Miniatures Squad Builder","builder_url":"http://localhost/~geordan/xwing/","link":"http://localhost/~geordan/xwing/?f=Rebel%20Alliance&d=v3!s!44:71,110,-1,126:-1:11:U.40;155:43,120,1,-1,32,86:-1:14:;175:140,-1,-1,147:-1:15:;64:143:-1:6:"}},"version":"0.3.0"}'''

    casper.then ->
        @evaluate ->
            window.rebel_sb.loadFromXWS JSON.parse(arguments[0]), $.noop
        , xws
    .then ->
        @wait 1000

    common.assertShipTypeIs(test, '#rebel-builder', 1, 'B-Wing')
    common.assertPilotIs(test, '#rebel-builder', 1, 'Blue Squadron Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 1, 'Enhanced Scopes')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 2, '"Mangler" Cannon')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 3, 'Extra Munitions')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 1, 4)
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 5, 'B-Wing/E2')
    common.assertUpgradeInSlot(test, '#rebel-builder', 1, 6, 'Intelligence Agent')

    common.assertShipTypeIs(test, '#rebel-builder', 2, 'VCX-100')
    common.assertPilotIs(test, '#rebel-builder', 2, 'Hera Syndulla')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 1, 'Advanced Sensors')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 2, 'Autoblaster Turret')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 3, 'Proton Torpedoes')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 2, 4)
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 5, 'Nien Nunb')
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 6, 'Han Solo')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 2, 7)
    common.assertUpgradeInSlot(test, '#rebel-builder', 2, 8, 'Tactical Jammer')

    common.assertShipTypeIs(test, '#rebel-builder', 3, 'T-70 X-Wing')
    common.assertPilotIs(test, '#rebel-builder', 3, 'Poe Dameron')
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 1, 'Crack Shot')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 3, 2)
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 3, 3)
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 4, 'Weapons Guidance')
    common.assertNoUpgradeInSlot(test, '#rebel-builder', 3, 5)
    common.assertUpgradeInSlot(test, '#rebel-builder', 3, 6, 'Autothrusters')

    common.assertShipTypeIs(test, '#rebel-builder', 4, 'Z-95 Headhunter')
    common.assertPilotIs(test, '#rebel-builder', 4, 'Bandit Squadron Pilot')
    common.assertUpgradeInSlot(test, '#rebel-builder', 4, 1, 'XX-23 S-Thread Tracers')
    common.assertUpgradeInSlot(test, '#rebel-builder', 4, 2, 'Hull Upgrade')

    .run ->
        test.done()


casper.test.begin "YT-2400 canonicalization fix", (test) ->
    common.waitForStartup('#rebel-builder')

    xws = '''{"description":"","faction":"rebel","name":"Unnamed Squadron","pilots":[{"name":"wildspacefringer","points":30,"ship":"yt2400"}],"points":30,"vendor":{"yasb":{"builder":"(Yet Another) X-Wing Miniatures Squad Builder","builder_url":"https://localhost/apps/xwing/","link":"https://localhost/apps/xwing/?f=Rebel%20Alliance&d=v4!s!92:-1,-1,-1:-1:-1:&sn=Unnamed%20Squadron"}},"version":"0.3.0"}'''

    casper.then ->
        @evaluate ->
            window.rebel_sb.loadFromXWS JSON.parse(arguments[0]), $.noop
        , xws
    .then ->
        @wait 1000

    common.assertShipTypeIs(test, '#rebel-builder', 1, 'YT-2400')

    .run ->
        test.done()


casper.test.begin "Canonicalization update for R2-D2", (test) ->
    common.waitForStartup('#rebel-builder')

    common.createList('#rebel-builder', [
        {
            ship: 'YT-1300'
            pilot: 'Chewbacca'
            upgrades: [
                null
                null
                'R2-D2 (Crew)'
            ]
        }
        {
            ship: 'X-Wing'
            pilot: 'Luke Skywalker'
            upgrades: [ ]
        }
    ])

    common.assertMatchIsDisabled(test, "#rebel-builder #{common.selectorForUpgradeIndex 2, 3}", "R2-D2")

    .run ->
        test.done()
