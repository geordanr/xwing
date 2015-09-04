common = require './common'

common.setup()

casper.test.begin "Validate Expansions", (test) ->
    valid_expansions = [
        "A-Wing Expansion Pack"
        "B-Wing Expansion Pack"
        "Core"
        "E-Wing Expansion Pack"
        "Hound's Tooth Expansion Pack"
        "HWK-290 Expansion Pack"
        "IG-2000 Expansion Pack"
        "Imperial Aces Expansion Pack"
        "Imperial Raider Expansion Pack"
        "Kihraxz Fighter Expansion Pack"
        "K-Wing Expansion Pack"
        "Lambda-Class Shuttle Expansion Pack"
        "M3-A Interceptor Expansion Pack"
        "Millennium Falcon Expansion Pack"
        "Most Wanted Expansion Pack"
        "Rebel Aces Expansion Pack"
        "Rebel Transport Expansion Pack"
        "Slave I Expansion Pack"
        "StarViper Expansion Pack"
        "Tantive IV Expansion Pack"
        "The Force Awakens Core Set"
        "TIE Advanced Expansion Pack"
        "TIE Bomber Expansion Pack"
        "TIE Defender Expansion Pack"
        "TIE Fighter Expansion Pack"
        "TIE Interceptor Expansion Pack"
        "TIE Phantom Expansion Pack"
        "TIE Punisher Expansion Pack"
        "VT-49 Decimator Expansion Pack"
        "X-Wing Expansion Pack"
        "YT-2400 Freighter Expansion Pack"
        "Y-Wing Expansion Pack"
        "Z-95 Headhunter Expansion Pack"
    ]

    common.waitForStartup('#rebel-builder')
    .then ->
        expansions = @evaluate ->
            expansions
        for expansion in expansions
            test.assert expansion in valid_expansions, "#{expansion} is valid"

    .run ->
        test.done()
