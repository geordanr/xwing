exportObj = exports ? this

String::startsWith ?= (t) ->
    @indexOf t == 0

sortWithoutQuotes = (a, b, type = '') ->
    a_name = displayName(a,type).replace /[^a-z0-9]/ig, ''
    b_name = displayName(b,type).replace /[^a-z0-9]/ig, ''
    if a_name < b_name
        -1
    else if a_name > b_name
        1
    else
        0

displayName = (name, type) ->
    obj = undefined
    if type == 'ship'
        obj = exportObj.ships[name]
    else if type == 'upgrade'
        obj = exportObj.upgrades[name]
    else if type == 'pilot'
        obj = exportObj.pilots[name]
    else
        return name
    if obj and obj.display_name
        return obj.display_name
    return name

exportObj.manifestBySettings =
    'collectioncheck': true
        
exportObj.manifestByExpansion =
    # the original name in 1.0 YASB was "Core". we could use that for compatibility, but it might be confusing - so I opted against it
    'First Edition Core Set': [
        {
            name: 'T-65 X-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'TIE/ln Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'coreasteroid0'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid3'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid4'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid5'
            type: 'obstacle'
            count: 1
        }
    ]
    # the original name in 1.0 YASB was "The Force Awakens Core Set". we could use that for compatibility, but it might be confusing - so I opted against it
    'First Edition Force Awakens Core Set': [
        {
            name: 'TIE/fo Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'T-70 X-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'core2asteroid0'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid3'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid4'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid5'
            type: 'obstacle'
            count: 1
        }
    ]
    'First Edition VT-49 Decimator Expansion Pack': [
        {
            name: 'VT-49 Decimator'
            type: 'ship'
            count: 1
        }
        {
            name: 'vt49decimatordebris0'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'vt49decimatordebris1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'vt49decimatordebris2'
            type: 'obstacle'
            count: 1
        }
    ]
    'First Edition YT-2400 Freighter Expansion Pack': [
        {
            name: 'YT-2400 Light Freighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'yt2400debris0'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'yt2400debris1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'yt2400debris2'
            type: 'obstacle'
            count: 1
        }
    ]
    'Second Edition Core Set': [
        {
            name: 'coreasteroid2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid4'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid5'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'yt2400debris2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'vt49decimatordebris1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'vt49decimatordebris2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'Panicked Pilot'
            type: 'damage'
            count: 2
        }
        {
            name: 'Blinded Pilot'
            type: 'damage'
            count: 2
        }
        {
            name: 'Wounded Pilot'
            type: 'damage'
            count: 2
        }
        {
            name: 'Stunned Pilot'
            type: 'damage'
            count: 2
        }
        {
            name: 'Console Fire'
            type: 'damage'
            count: 2
        }
        {
            name: 'Damaged Engine'
            type: 'damage'
            count: 2
        }
        {
            name: 'Weapons Failure'
            type: 'damage'
            count: 2
        }
        {
            name: 'Hull Breach'
            type: 'damage'
            count: 2
        }
        {
            name: 'Structural Damage'
            type: 'damage'
            count: 2
        }
        {
            name: 'Damaged Sensor Array'
            type: 'damage'
            count: 2
        }
        {
            name: 'Loose Stabilizer'
            type: 'damage'
            count: 2
        }
        {
            name: 'Disabled Power Regulator'
            type: 'damage'
            count: 2
        }
        {
            name: 'Fuel Leak'
            type: 'damage'
            count: 4
        }
        {
            name: 'Direct Hit!'
            type: 'damage'
            count: 5
        }
        {
            name: 'T-65 X-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'TIE/ln Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'Luke Skywalker'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jek Porkins'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Escort'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Iden Versio'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Valen Rudor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Ace'
            type: 'pilot'
            count: 2
        }
        {
            name: '"Night Beast"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Obsidian Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Academy Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heightened Perception'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Instinctive Aim'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sense'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Supernatural Reflexes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-D2'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R3 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-D8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Servomotor S-Foils'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 1
        }
    ]
    "Saw's Renegades Expansion Pack" : [
        {
            name: 'UT-60D U-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'T-65 X-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Saw Gerrera'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Magva Yarro'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Benthic Two Tubes'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Partisan Renegade'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kullbee Sperado'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Leevan Tenza'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Edrio Two Tubes'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cavern Angels Zealot'
            type: 'pilot'
            count: 3
        }
        {
            name: 'R3 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Saw Gerrera'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Magva Yarro'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Pivot Wing'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Servomotor S-Foils'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Deadman's Switch"
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
    ]
    'TIE Reaper Expansion Pack' : [
        {
            name: 'TIE Reaper'
            type: 'ship'
            count: 1
        }
        {
            name: 'Major Vermeil'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Feroph'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Vizier"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Scarif Base Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Director Krennic'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Death Troopers'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'ISB Slicer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Officer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 2
        }
    ]
    'Rebel Alliance Conversion Kit': [
        {
            name: 'Thane Kyrell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Norra Wexley (Y-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Evaan Verlaine'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Biggs Darklighter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Garven Dreis (X-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wedge Antilles'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Escort'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Red Squadron Veteran'
            type: 'pilot'
            count: 2
        }
        {
            name: '"Dutch" Vander'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Horton Salm'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gold Squadron Veteran'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Gray Squadron Bomber'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Arvel Crynyd'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jake Farrell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Green Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Phoenix Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Braylen Stramm'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ten Numb'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Blade Squadron Veteran'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Airen Cracken'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Blount'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bandit Squadron Pilot'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Tala Squadron Pilot'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Lowhhrick'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wullffwarro'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kashyyyk Defender'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Ezra Bridger'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hera Syndulla'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sabine Wren'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Zeb" Orrelios'
            type: 'pilot'
            count: 1
        }
        {
            name: 'AP-5'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ezra Bridger (Sheathipede)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Fenn Rau (Sheathipede)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Zeb" Orrelios (Sheathipede)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jan Ors'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kyle Katarn'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Roark Garnet'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rebel Scout'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Captain Rex'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ezra Bridger (TIE Fighter)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sabine Wren (TIE Fighter)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Zeb" Orrelios (TIE Fighter)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Corran Horn'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gavin Darklighter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Knave Squadron Escort'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Rogue Squadron Escort'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Bodhi Rook'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cassian Andor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Heff Tobber'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Scout'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Esege Tuketu'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Miranda Doni'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Warden Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Garven Dreis'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ibtisam'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Norra Wexley'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shara Bey'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Chewbacca'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Han Solo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lando Calrissian'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outer Rim Smuggler'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Chopper"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hera Syndulla (VCX-100)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kanan Jarrus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lothal Rebel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dash Rendar'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Leebo"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wild Space Fringer'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Debris Gambit'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Saturation Salvo'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Selfless'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Collision Detector'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Cloaking Device'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Contraband Cybernetics'
            type: 'upgrade'
            count: 2
        }
        {
            name: "Deadman's Switch"
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Feedback Array'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Inertial Dampeners'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Rigged Cargo Chute'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Jamming Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Dorsal Turret'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Baze Malbus'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'C-3PO'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cassian Andor'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Chewbacca'
            type: 'upgrade'
            count: 1
        }
        {
            name: '"Chopper" (Crew)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Freelance Slicer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'GNK "Gonk" Droid'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hera Syndulla'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Informant'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jyn Erso'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Kanan Jarrus'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lando Calrissian'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Leia Organa'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Nien Nunb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R2-D2 (Crew)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sabine Wren'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Officer'
            type: 'upgrade'
            count: 2
        }
        {
            name: '"Zeb" Orrelios'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Bomblet Generator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Conner Nets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ghost'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Millennium Falcon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Moldy Crow'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Outrider'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Phantom'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Pivot Wing'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Servomotor S-Foils'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Bistan'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ezra Bridger'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Han Solo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Luke Skywalker'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Skilled Bombardier'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Veteran Tail Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Veteran Turret Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: '"Chopper" (Astromech)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R3 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R5 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ablative Plating'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced SLAM'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Electronic Baffle'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Engine Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Scrambler'
            type: 'upgrade'
            count: 2
        }
    ]
    'Galactic Empire Conversion Kit': [
        {
            name: 'Ved Foslo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Del Meeko'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gideon Hask'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Seyn Marana'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Howlrunner"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Mauler" Mithel'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Scourge" Skutu'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Wampa"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Ace'
            type: 'pilot'
            count: 4
        }
        {
            name: 'Obsidian Squadron Pilot'
            type: 'pilot'
            count: 4
        }
        {
            name: 'Academy Pilot'
            type: 'pilot'
            count: 4
        }
        {
            name: 'Darth Vader'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Maarek Stele'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zertik Strom'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Storm Squadron Ace'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Tempest Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Grand Inquisitor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Seventh Sister'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Baron of the Empire'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Inquisitor'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Soontir Fel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Turr Phennir'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Alpha Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Saber Squadron Ace'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Tomax Bren'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Jonus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Major Rhymer'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Deathfire"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gamma Squadron Ace'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Scimitar Squadron Pilot'
            type: 'pilot'
            count: 3
        }
        {
            name: '"Duchess"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Countdown"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Pure Sabacc"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Scout'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Planetary Sentinel'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Rexler Brath'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Colonel Vessery'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Countess Ryad'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Onyx Squadron Ace'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Delta Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: '"Double Edge"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Kestal'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Onyx Squadron Scout'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Sienar Specialist'
            type: 'pilot'
            count: 2
        }
        {
            name: '"Echo"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Whisper"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Imdaar Test Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: "Sigma Squadron Ace"
            type: 'pilot'
            count: 2
        }
        {
            name: 'Major Vynder'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Karsabi'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rho Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Nu Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: '"Redline"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Deathrain"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cutlass Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Captain Kagi'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Colonel Jendon'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Sai'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Omicron Group Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rear Admiral Chiraneau'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Oicunn'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Patrol Leader'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Debris Gambit'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Ruthless'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Saturation Salvo'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Collision Detector'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trajectory Simulator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Jamming Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Dorsal Turret'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Barrage Rockets'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Admiral Sloane'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agent Kallus'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ciena Ree'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Darth Vader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Emperor Palpatine'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Freelance Slicer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'GNK "Gonk" Droid'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Grand Inquisitor'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Grand Moff Tarkin'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Informant'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Minister Tua'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Moff Jerjerrod'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Seventh Sister'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tactical Officer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fifth Brother'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Skilled Bombardier'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Veteran Turret Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Bomblet Generator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Conner Nets'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Dauntless'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'ST-321'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Os-1 Arsenal Loadout'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Xg-1 Assault Configuration'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Ablative Plating'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced SLAM'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Electronic Baffle'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Scrambler'
            type: 'upgrade'
            count: 2
        }
    ]
    'Scum and Villainy Conversion Kit': [
        {
            name: 'Joy Rekkoff'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Koshka Frost'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Marauder'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Fenn Rau'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kad Solus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Old Teroch'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Skull Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Zealous Recruit'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Constable Zuvio'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sarco Plank'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Unkar Plutt'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jakku Gunrunner'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Drea Renthal'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kavil'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Crymorah Goon'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Hired Gun'
            type: 'pilot'
            count: 2
        }
        {
            name: "Kaa'to Leeachos"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nashtah Pup'
            type: 'pilot'
            count: 1
        }
        {
            name: "N'dru Suhlak"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Sun Soldier'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Binayre Pirate'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Dace Bonearm'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Palob Godalhi'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Torkil Mux'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Spice Runner'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Dalan Oberos (StarViper)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Guri'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Prince Xizor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Sun Assassin'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Black Sun Enforcer'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Genesis Red'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Inaldra'
            type: 'pilot'
            count: 1
        }
        {
            name: "Laetin A'shera"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Quinn Jast'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Serissu'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sunny Bounder'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tansarii Point Veteran'
            type: 'pilot'
            count: 4
        }
        {
            name: 'Cartel Spacer'
            type: 'pilot'
            count: 4
        }
        {
            name: 'Captain Jostero'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Graz'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Talonbane Cobra'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Viktor Hel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Sun Ace'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Cartel Marauder'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Boba Fett'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Emon Azzameen'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kath Scarlet'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Krassis Trelix'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bounty Hunter'
            type: 'pilot'
            count: 2
        }
        {
            name: 'IG-88A'
            type: 'pilot'
            count: 1
        }
        {
            name: 'IG-88B'
            type: 'pilot'
            count: 1
        }
        {
            name: 'IG-88C'
            type: 'pilot'
            count: 1
        }
        {
            name: 'IG-88D'
            type: 'pilot'
            count: 1
        }
        {
            name: '4-LOM'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zuckuss'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gand Findsman'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Captain Nym'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sol Sixxa'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lok Revenant'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Dalan Oberos'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Torani Kulda'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cartel Executioner'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Bossk'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Latts Razzi'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Moralo Eval'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Trandoshan Slaver'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dengar'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Manaroo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tel Trevura'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Contracted Scout'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Asajj Ventress'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ketsu Onyo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sabine Wren (Scum)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shadowport Hunter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Debris Gambit'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fearless'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Saturation Salvo'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Collision Detector'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trajectory Simulator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Cloaking Device'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Contraband Cybernetics'
            type: 'upgrade'
            count: 2
        }
        {
            name: "Deadman's Switch"
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Feedback Array'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Inertial Dampeners'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Rigged Cargo Chute'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Jamming Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Dorsal Turret'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: '0-0-0'
            type: 'upgrade'
            count: 1
        }
        {
            name: '4-LOM'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Boba Fett'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cad Bane'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cikatro Vizago'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Freelance Slicer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'GNK "Gonk" Droid'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'IG-88D'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Informant'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jabba the Hutt'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ketsu Onyo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Latts Razzi'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Maul'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Officer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Unkar Plutt'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Zuckuss'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bossk'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'BT-1'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Dengar'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Greedo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Skilled Bombardier'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Veteran Tail Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Veteran Turret Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Bomblet Generator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Conner Nets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Andrasta'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Havoc'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Hound's Tooth"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'IG-2000'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Mist Hunter'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Punishing One'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Shadow Caster'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Slave I'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Virago'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ablative Plating'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Electronic Baffle'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Engine Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Scrambler'
            type: 'upgrade'
            count: 2
        }
        {
            name: '"Genius"'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R3 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R5 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R5-P8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-TK'
            type: 'upgrade'
            count: 1
        }
    ]
    'T-65 X-Wing Expansion Pack' : [
        {
            name: 'T-65 X-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Wedge Antilles'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Thane Kyrell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Garven Dreis (X-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Biggs Darklighter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Escort'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Selfless'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Servomotor S-Foils'
            type: 'upgrade'
            count: 1
        }
    ]
    'BTL-A4 Y-Wing Expansion Pack' : [
        {
            name: 'BTL-A4 Y-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Horton Salm'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Norra Wexley (Y-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Dutch" Vander'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Evaan Verlaine'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gold Squadron Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gray Squadron Bomber'
            type: 'pilot'
            count: 1
        }
        {
            name: 'R5 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Veteran Turret Gunner'
            type: 'upgrade'
            count: 1
        }
    ]
    'TIE/ln Fighter Expansion Pack': [
        {
            name: 'TIE/ln Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: '"Howlrunner"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Mauler" Mithel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gideon Hask'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Scourge" Skutu'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Seyn Marana'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Del Meeko'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Wampa"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Obsidian Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Academy Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 1
        }
    ]
    'TIE Advanced x1 Expansion Pack': [
        {
            name: 'TIE Advanced x1'
            type: 'ship'
            count: 1
        }
        {
            name: 'Darth Vader'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Maarek Stele'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ved Foslo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zertik Strom'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Storm Squadron Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tempest Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Heightened Perception'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Supernatural Reflexes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ruthless'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 1
        }
    ]
    'Slave I Expansion Pack': [
        {
            name: 'Firespray-class Patrol Craft'
            type: 'ship'
            count: 1
        }
        {
            name: 'Boba Fett'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kath Scarlet'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Emon Azzameen'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Koshka Frost'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Krassis Trelix'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bounty Hunter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Boba Fett'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Veteran Tail Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Inertial Dampeners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Andrasta'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marauder'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Slave I'
            type: 'upgrade'
            count: 1
        }
    ]
    'Fang Fighter Expansion Pack': [
        {
            name: 'Fang Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Fenn Rau'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Old Teroch'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kad Solus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Joy Rekkoff'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Skull Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zealous Recruit'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Fearless'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
    ]
    "Lando's Millennium Falcon Expansion Pack": [
        {
            name: 'Customized YT-1300 Light Freighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Escape Craft'
            type: 'ship'
            count: 1
        }
        {
            name: 'Han Solo (Scum)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lando Calrissian (Scum)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'L3-37'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Freighter Captain'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lando Calrissian (Scum) (Escape Craft)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outer Rim Pioneer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'L3-37 (Escape Craft)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Autopilot Drone'
            type: 'pilot'
            count: 1
        }
        {
            name: 'L3-37'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Chewbacca (Scum)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lando Calrissian (Scum)'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Qi'ra"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tobias Beckett'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Han Solo (Scum)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agile Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Composure'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Lando's Millennium Falcon"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Rigged Cargo Chute'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tactical Scrambler'
            type: 'upgrade'
            count: 1
        }
    ]
    'Resistance Conversion Kit': [
        {
            name: 'Finch Dallow'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Edon Kappehl'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ben Teene'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Vennie'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cat'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cobalt Squadron Bomber'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Rey'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Han Solo (Resistance)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Chewbacca (Resistance)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Resistance Sympathizer'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Poe Dameron'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ello Asty'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nien Nunb'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Temmin Wexley'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kare Kun'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jessika Pava'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Joph Seastriker'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jaycris Tubbs'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Bastian'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Ace (T-70)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Expert'
            type: 'pilot'
            count: 4
        }
        {
            name: 'Blue Squadron Rookie'
            type: 'pilot'
            count: 4
        }
        {
            name: 'R2-HA'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'BB-8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-X3'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'BB Astromech'
            type: 'upgrade'
            count: 4
        }
        {
            name: 'R2 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R3 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R5 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'M9-G8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'C-3PO (Resistance)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Rey'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Finn'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Han Solo (Resistance)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Chewbacca (Resistance)'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Rey's Millennium Falcon"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Black One'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Integrated S-Foils'
            type: 'upgrade'
            count: 4
        }
        {
            name: 'Rose Tico'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Paige Tico'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Debris Gambit'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Heroic'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Optics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Pattern Analyzer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Primed Thrusters'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Targeting Synchronizer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Collision Detector'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trajectory Simulator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Jamming Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Freelance Slicer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'GNK "Gonk" Droid'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Informant'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Officer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Skilled Bombardier'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Veteran Turret Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Contraband Cybernetics'
            type: 'upgrade'
            count: 2
        }
        {
            name: "Deadman's Switch"
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Feedback Array'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Inertial Dampeners'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Rigged Cargo Chute'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Bomblet Generator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Conner Nets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ablative Plating'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced SLAM'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Electronic Baffle'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Engine Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Scrambler'
            type: 'upgrade'
            count: 2
        }
    ]
    'T-70 X-Wing Expansion Pack': [
        {
            name: 'T-70 X-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Poe Dameron'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ello Asty'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nien Nunb'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Temmin Wexley'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kare Kun'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jessika Pava'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Joph Seastriker'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jaycris Tubbs'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Bastian'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Ace (T-70)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Expert'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Rookie'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black One'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'BB-8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'BB Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Integrated S-Foils'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'M9-G8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Synchronizer'
            type: 'upgrade'
            count: 1
        }
    ]
    'RZ-2 A-Wing Expansion Pack': [
        {
            name: 'RZ-2 A-wing'
            type: 'ship'
            count: 1
        }
        {
            name: "L'ulo L'ampar"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Greer Sonnel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tallissan Lintra'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zari Bangel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Green Squadron Expert'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Recruit'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Heroic'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ferrosphere Paint'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Primed Thrusters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 1
        }
    ]
    'Mining Guild TIE Expansion Pack': [
        {
            name: 'Modified TIE/ln Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Foreman Proach'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ahhav'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Seevor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Overseer Yushyn'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Mining Guild Surveyor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Mining Guild Sentry'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 1
        }
    ]
    'First Order Conversion Kit': [
        {
            name: 'Commander Malarus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Rivas'
            type: 'pilot'
            count: 1
        }
        {
            name: 'TN-3465'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Epsilon Squadron Cadet'
            type: 'pilot'
            count: 7
        }
        {
            name: 'Zeta Squadron Pilot'
            type: 'pilot'
            count: 7
        }
        {
            name: 'Omega Squadron Ace'
            type: 'pilot'
            count: 6
        }
        {
            name: '"Null"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Muse"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Longshot"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Static"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Scorch"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Midnight"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Quickdraw"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Backdraft"'
            type: 'pilot'
            count: 1
        }
        {
            name: "Omega Squadron Expert"
            type: 'pilot'
            count: 4
        }
        {
            name: "Zeta Squadron Survivor"
            type: 'pilot'
            count: 5
        }
        {
            name: "Kylo Ren"
            type: 'pilot'
            count: 1
        }
        {
            name: '"Blackout"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Recoil"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Avenger"'
            type: 'pilot'
            count: 1
        }
        {
            name: "First Order Test Pilot"
            type: 'pilot'
            count: 3
        }
        {
            name: "Sienar-Jaemus Engineer"
            type: 'pilot'
            count: 3
        }
        {
            name: "Captain Cardinal"
            type: 'pilot'
            count: 1
        }
        {
            name: "Major Stridan"
            type: 'pilot'
            count: 1
        }
        {
            name: "Lieutenant Tavson"
            type: 'pilot'
            count: 1
        }
        {
            name: "Lieutenant Dormitz"
            type: 'pilot'
            count: 1
        }
        {
            name: "Petty Officer Thanisson"
            type: 'pilot'
            count: 1
        }
        {
            name: "Starkiller Base Pilot"
            type: 'pilot'
            count: 3
        }
        {
            name: "Primed Thrusters"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Hyperspace Tracking Data"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Special Forces Gunner"
            type: 'upgrade'
            count: 4
        }
        {
            name: "Supreme Leader Snoke"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Petty Officer Thanisson"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Kylo Ren"
            type: 'upgrade'
            count: 1
        }
        {
            name: "General Hux"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Captain Phasma"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Biohexacrypt Codes"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Predictive Shot"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Hate"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Debris Gambit'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fanatical'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Optics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Pattern Analyzer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Primed Thrusters'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Targeting Synchronizer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hyperspace Tracking Data'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Collision Detector'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Jamming Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Freelance Slicer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'GNK "Gonk" Droid'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Informant'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ablative Plating'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Electronic Baffle'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tactical Scrambler'
            type: 'upgrade'
            count: 2
        }
    ]
    'TIE/FO Fighter Expansion Pack': [
        {
            name: 'TIE/fo Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Epsilon Squadron Cadet'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zeta Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Omega Squadron Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Null"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Rivas'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Muse"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'TN-3465'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Longshot"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Static"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Scorch"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Commander Malarus'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Midnight"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Fanatical'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced Optics'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Synchronizer'
            type: 'upgrade'
            count: 1
        }
    ]

    'Servants of Strife Squadron Pack': [
        {
            name: 'Belbullab-22 Starfighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Vulture-class Droid Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'General Grievous'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Sear'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wat Tambor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Skakoan Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Feethan Ottraw Autopilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Trade Federation Drone'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Separatist Drone'
            type: 'pilot'
            count: 2
        }
        {
            name: 'DFS-081'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Precise Hunter'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Haor Chall Prototype'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Soulless One'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Grappling Struts'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'TV-94'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Kraken'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Composure'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Treacherous'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Energy-Shell Charges'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Electronic Baffle'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Impervium Plating'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'gascloud1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'gascloud2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'gascloud3'
            type: 'obstacle'
            count: 1
        }
    ]

    'Sith Infiltrator Expansion Pack': [
        {
            name: 'Sith Infiltrator'
            type: 'ship'
            count: 1
        }
        {
            name: 'Dark Courier'
            type: 'pilot'
            count: 1
        }
        {
            name: '0-66'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Count Dooku'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Darth Maul'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Brilliant Evasion'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hate'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Predictive Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Count Dooku'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'General Grievous'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'K2-B4'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'DRK-1 Probe Droids'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Scimitar'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Chancellor Palpatine'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 1
        }

    ]

    'Vulture-class Droid Fighter Expansion': [
        {
            name: 'Vulture-class Droid Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Haor Chall Prototype'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Separatist Drone'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Precise Hunter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DFS-311'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Trade Federation Drone'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Grappling Struts'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Energy-Shell Charges'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Discord Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
    ]

    'Guardians of the Republic Squadron Pack': [
        {
            name: 'Delta-7 Aethersprite'
            type: 'ship'
            count: 1
        }
        {
            name: 'Delta-7b Aethersprite'
            type: 'ship'
            count: 1
        }
        {
            name: 'V-19 Torrent Starfighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'Obi-Wan Kenobi'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Plo Koon'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Mace Windu'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Saesee Tiin'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jedi Knight'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Obi-Wan Kenobi (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Plo Koon (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Mace Windu (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Saesee Tiin (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jedi Knight (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Odd Ball"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Kickback"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Swoop"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Axe"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Tucker"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Protector'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Gold Squadron Trooper'
            type: 'pilot'
            count: 2
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4-P Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4-P17'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Delta-7B'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Calibrated Laser Targeting'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Brilliant Evasion'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Battle Meditation'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Predictive Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Composure'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Dedicated'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Saturation Salvo'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Electronic Baffle'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Spare Parts Canisters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Synchronized Console'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'gascloud1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'gascloud2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'gascloud3'
            type: 'obstacle'
            count: 1
        }
    ]

    'ARC-170 Starfighter Expansion': [
        {
            name: 'ARC-170 Starfighter'
            type: 'ship'
            count: 1
        }
        {
            name: '"Wolffe"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Sinker"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Odd Ball" (ARC-170)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Jag"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Squad Seven Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: '104th Battalion Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dedicated'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4-P44'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Chancellor Palpatine'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Clone Commander Cody'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seventh Fleet Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Synchronized Console'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Veteran Tail Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R3 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 1
        }
    ]

    'Delta-7 Aethersprite Expansion': [
        {
            name: 'Delta-7 Aethersprite'
            type: 'ship'
            count: 1
        }
        {
            name: 'Delta-7b Aethersprite'
            type: 'ship'
            count: 1
        }
        {
            name: 'Anakin Skywalker (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ahsoka Tano (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Barriss Offee (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Luminara Unduli (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jedi Knight (Delta-7b)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Anakin Skywalker'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ahsoka Tano'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Barriss Offee'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Luminara Unduli'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jedi Knight'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Delta-7B'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Calibrated Laser Targeting'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4-P Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R3 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Brilliant Evasion'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Battle Meditation'
            type: 'upgrade'
            count: 1
        }
    ]

    'Z-95-AF4 Headhunter Expansion Pack': [
        {
            name: 'Z-95-AF4 Headhunter'
            type: 'ship'
            count: 1
        }
        {
            name: "N'dru Suhlak"
            type: 'pilot'
            count: 1
        }
        {
            name: "Kaa'to Leeachos"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Sun Soldier'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Binayre Pirate'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Deadman's Switch"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 1
        }
    ]

    'TIE/sk Striker Expansion Pack': [
        {
            name: 'TIE/sk Striker'
            type: 'ship'
            count: 1
        }
        {
            name: '"Countdown"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Pure Sabacc"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Duchess"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Scout'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Planetary Sentinel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Conner Nets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Skilled Bombardier'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Trick Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 1
        }
    ]

    'Naboo Royal N-1 Starfighter Expansion Pack': [
        {
            name: 'Naboo Royal N-1 Starfighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Ric Olié'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Anakin Skywalker (N-1 Starfighter)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Padmé Amidala'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dineé Ellberger'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Naboo Handmaiden'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bravo Flight Officer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Collision Detector'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Passive Sensors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-A6'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-C4'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 1
        }
    ]

    'Hyena-Class Droid Bomber Expansion Pack': [
        {
            name: 'Hyena-class Droid Bomber'
            type: 'ship'
            count: 1
        }
        {
            name: 'DBS-404'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DBS-32C'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bombardment Drone'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Baktoid Prototype'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Techno Union Bomber'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Separatist Bomber'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Passive Sensors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Trajectory Simulator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Barrage Rockets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Diamond-Boron Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'TA-175'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bomblet Generator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Electro-Proton Bomb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Delayed Fuses'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Landing Struts'
            type: 'upgrade'
            count: 1
        }
    ]


    'A/SF-01 B-Wing Expansion Pack': [
        {
            name: 'A/SF-01 B-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Braylen Stramm'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ten Numb'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blade Squadron Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jamming Beam'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Electronic Baffle'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
    ]

    'Millennium Falcon Expansion Pack': [
        {
            name: 'Modified YT-1300 Light Freighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Chewbacca'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Han Solo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lando Calrissian'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outer Rim Smuggler'
            type: 'pilot'
            count: 1
        }
        {
            name: 'C-3PO'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Chewbacca'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Engine Upgrade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Han Solo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Informant'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lando Calrissian'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Leia Organa'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Luke Skywalker'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Millennium Falcon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Nien Nunb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-D2 (Crew)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Rigged Cargo Chute'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 1
        }
    ]

    'VT-49 Decimator Expansion Pack': [
        {
            name: 'VT-49 Decimator'
            type: 'ship'
            count: 1
        }
        {
            name: 'Captain Oicunn'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rear Admiral Chiraneau'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Patrol Leader'
            type: 'pilot'
            count: 1
        }
        {
            name: '0-0-0'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agent Kallus'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'BT-1'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Darth Vader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Dauntless'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Fifth Brother'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'GNK "Gonk" Droid'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Grand Inquisitor'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seventh Sister'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tactical Scrambler'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Veteran Turret Gunner'
            type: 'upgrade'
            count: 1
        }
    ]

    'TIE/VN Silencer Expansion Pack': [
        {
            name: 'TIE/vn Silencer'
            type: 'ship'
            count: 1
        }
        {
            name: 'Kylo Ren'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Blackout"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Recoil"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Avenger"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'First Order Test Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sienar-Jaemus Engineer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hate'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Predictive Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Primed Thrusters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }        
    ]

    'TIE/SF Fighter Expansion Pack': [
        {
            name: 'TIE/sf Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: '"Quickdraw"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Backdraft"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Omega Squadron Expert'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zeta Squadron Survivor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Special Forces Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Collision Detector'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 1
        }        
        {
            name: 'Pattern Analyzer'
            type: 'upgrade'
            count: 1
        }        
    ]

    'Resistance Transport Expansion Pack': [
        {
            name: 'Resistance Transport'
            type: 'ship'
            count: 1
        }
        {
            name: 'Resistance Transport Pod'
            type: 'ship'
            count: 1
        }
        {
            name: 'BB-8'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Finn'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rose Tico'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Vi Moradi'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cova Nell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Pammich Nerro Goode'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nodin Chavdri'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Logistics Division Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Composure'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Autoblasters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Amilyn Holdo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Leia Organa (Resistance)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'GA-97'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Kaydel Connix'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Korr Sella'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Larma D'Acy"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'PZ-4CO'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-HA'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-X3'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Angled Deflectors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Spare Parts Canisters'
            type: 'upgrade'
            count: 1
        }
    ]
    'BTL-B Y-Wing Expansion Pack': [
        {
            name: 'BTL-B Y-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Anakin Skywalker (Y-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Odd Ball" (Y-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Matchstick"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Broadside"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'R2-D2'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Goji"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shadow Squadron Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Bomber'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Precognitive Reflexes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Foresight'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Snap Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ahsoka Tano'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'C-3PO (Republic)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'C1-10P'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Delayed Fuses'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Electro-Proton Bomb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 1
        }
    ]
    'Nantex-class Starfighter Expansion Pack': [
        {
            name: 'Nantex-Class Starfighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Sun Fac'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Berwer Kret'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Chertek'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gorgol'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Petranaki Arena Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Stalgasin Hive Guard'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ensnare'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gravitic Deflection'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Snap Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stealth Device'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Computer'
            type: 'upgrade'
            count: 1
        }
    ]
    'Punishing One Expansion Pack': [
        {
            name: 'JumpMaster 5000'
            type: 'ship'
            count: 1
        }
        {
            name: 'Dengar'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Manaroo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tel Trevura'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Contracted Scout'
            type: 'pilot'
            count: 1
        }
        {
            name: 'R2 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-P8'
            type: 'upgrade'
            count: 1
        }
        {
            name: '0-0-0'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Informant'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Latts Razzi'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Dengar'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Punishing One'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Contraband Cybernetics'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Perceptive Copilot'
            type: 'upgrade'
            count: 1
        }
    ]
    'M3-A Interceptor Expansion Pack': [
        {
            name: 'M3-A Interceptor'
            type: 'ship'
            count: 1
        }
        {
            name: 'Genesis Red'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Inaldra'
            type: 'pilot'
            count: 1
        }
        {
            name: "Laetin A'shera"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Quinn Jast'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Serissu'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sunny Bounder'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cartel Spacer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tansarii Point Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jamming Beam'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 1
        }
    ]
    'Ghost Expansion Pack': [
        {
            name: 'VCX-100 Light Freighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Sheathipede-Class Shuttle'
            type: 'ship'
            count: 1
        }
        {
            name: 'AP-5'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Fenn Rau (Sheathipede)'
            type: 'pilot'
            count: 1
        }
        {
            name: "Ezra Bridger (Sheathipede)"
            type: 'pilot'
            count: 1
        }
        {
            name: '"Zeb" Orrelios (Sheathipede)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hera Syndulla (VCX-100)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kanan Jarrus'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Chopper"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lothal Rebel'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Chopper" (Astromech)'
            type: 'upgrade'
            count: 1
        }
        {
            name: '"Chopper" (Crew)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hera Syndulla'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Kanan Jarrus'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Maul'
            type: 'upgrade'
            count: 1
        }
        {
            name: '"Zeb" Orrelios'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hate'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Predictive Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agile Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tactical Scrambler'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Collision Detector'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ghost'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Phantom'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Dorsal Turret'
            type: 'upgrade'
            count: 1
        }
    ]
    "Inquisitors' TIE Expansion Pack": [
        {
            name: 'TIE Advanced v1'
            type: 'ship'
            count: 1
        }
        {
            name: 'Grand Inquisitor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Seventh Sister'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Inquisitor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Baron of the Empire'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hate'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Predictive Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heightened Perception'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 1
        }
    ]
    "Huge Ship Conversion Kit": [
        {
            name: 'Alderaanian Guard'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Echo Base Evacuees'
            type: 'pilot'
            count: 1
        }
        {
            name: 'First Order Collaborators'
            type: 'pilot'
            count: 1
        }
        {
            name: 'New Republic Volunteers'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outer Rim Garrison'
            type: 'pilot'
            count: 1
        }
        {
            name: 'First Order Sympathizers'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outer Rim Patrol'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Republic Judiciary'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Separatist Privateers'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Syndicate Smugglers'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Admiral Ozzel'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Azmorigan'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Captain Needa'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Carlist Rieekan'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jan Dodonna'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Raymus Antilles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stalwart Captain'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Strategic Commander'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon Battery'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ordnance Tubes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Point-Defense Battery'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Targeting Battery'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Turbolaser Battery'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Dorsal Turret'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Toryn Farr'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agile Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Adaptive Shields'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Boosted Scanners'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Optimized Power Core'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tibanna Reserves'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Bombardment Specialists'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Comms Team'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Damage Control Team'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Gunnery Specialists'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'IG-RM Droids'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ordnance Team'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Sensor Experts'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Quick-Release Locks'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Saboteur's Map"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Scanner Baffler'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Assailer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Blood Crow'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bright Hope'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Broken Horn'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Corvus'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Dodonna's Pride"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Impetuous'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Insatiable Worrt'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Instigator'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Jaina's Light"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Liberator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Luminous'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Merchant One'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Quantum Storm'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Requiem'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Suppressor'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tantive IV'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Thunderstrike'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Vector'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Corsair Refit'
            type: 'upgrade'
            count: 2
        }
    ]
    'Tantive IV Expansion Pack': [
        {
            name: 'CR90 Corellian Corvette'
            type: 'ship'
            count: 1
        }
        {
            name: 'Alderaanian Guard'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Republic Judiciary'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Carlist Rieekan'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jan Dodonna'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Raymus Antilles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stalwart Captain'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Strategic Commander'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Point-Defense Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Turbolaser Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Toryn Farr'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agile Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bombardment Specialists'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Comms Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Damage Control Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gunnery Specialists'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sensor Experts'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Adaptive Shields'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Boosted Scanners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Optimized Power Core'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tibanna Reserves'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Dodonna's Pride"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Jaina's Light"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Liberator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tantive IV'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Thunderstrike'
            type: 'upgrade'
            count: 1
        }
    ]
    'C-ROC Cruiser Expansion Pack': [
        {
            name: 'C-ROC Cruiser'
            type: 'ship'
            count: 1
        }
        {
            name: 'Separatist Privateers'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Syndicate Smugglers'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Carlist Rieekan'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Azmorigan'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stalwart Captain'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Strategic Commander'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Point-Defense Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Turbolaser Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agile Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bombardment Specialists'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Comms Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Damage Control Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gunnery Specialists'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'IG-RM Droids'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sensor Experts'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Adaptive Shields'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Boosted Scanners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Optimized Power Core'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tibanna Reserves'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Quick-Release Locks'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Saboteur's Map"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Scanner Baffler'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Broken Horn'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Insatiable Worrt'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Merchant One'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Corsair Refit'
            type: 'upgrade'
            count: 1
        }
    ]

    'Epic Battles Multiplayer Expansion': [
        {
            name: 'Agent of the Empire'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Dreadnought Hunter'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'First Order Elite'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Veteran Wing Leader'
            type: 'upgrade'
            count: 4
        }
    ]
    "Major Vonreg's TIE Expansion Pack": [
        {
            name: 'TIE/ba Interceptor'
            type: 'ship'
            count: 1
        }
        {
            name: 'Major Vonreg'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Holo"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Ember"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'First Order Provocateur'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Mag-Pulse Warheads'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Munitions Failsafe'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Snap Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proud Tradition'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Deuterium Power Cells'
            type: 'upgrade'
            count: 1
        }
    ]
    "Fireball Expansion Pack": [
        {
            name: 'Fireball'
            type: 'ship'
            count: 1
        }
        {
            name: 'Jarek Yeager'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kazuda Xiono'
            type: 'pilot'
            count: 1
        }
        {
            name: 'R1-J5'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Colossus Station Mechanic'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Mag-Pulse Warheads'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Coaxium Hyperfuel'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced SLAM'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Computer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Snap Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Kaz's Fireball"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R1-J5'
            type: 'upgrade'
            count: 1
        }
    ]
    "RZ-1 A-Wing Expansion Pack": [
        {
            name: 'RZ-1 A-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Arvel Crynyd'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jake Farrell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Green Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Phoenix Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 1
        }
    ]
    "TIE/D Defender Expansion Pack": [
        {
            name: 'TIE/d Defender'
            type: 'ship'
            count: 1
        }
        {
            name: 'Rexler Brath'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Colonel Vessery'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Countess Ryad'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Onyx Squadron Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Delta Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 1
        }
    ]
    "TIE/in Interceptor Expansion Pack": [
        {
            name: 'TIE/in Interceptor'
            type: 'ship'
            count: 1
        }
        {
            name: 'Soontir Fel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Turr Phennir'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Saber Squadron Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Alpha Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 1
        }
    ]
    "Hound's Tooth Expansion Pack": [
        {
            name: 'YV-666 Light Freighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Z-95-AF4 Headhunter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Bossk'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Moralo Eval'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Latts Razzi'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Trandoshan Slaver'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bossk (Z-95 Headhunter)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nashtah Pup'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cikatro Vizago'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Freelance Slicer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'GNK "Gonk" Droid'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jabba the Hutt'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tactical Officer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bossk'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'BT-1'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Greedo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Feedback Array'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ablative Plating'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Hound's Tooth"
            type: 'upgrade'
            count: 1
        }
    ]
    "Xi-class Light Shuttle Expansion Pack": [
        {
            name: 'Xi-class Light Shuttle'
            type: 'ship'
            count: 1
        }
        {
            name: 'Commander Malarus (Xi Shuttle)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gideon Hask (Xi Shuttle)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Agent Terex'
            type: 'pilot'
            count: 1
        }
        {
            name: 'First Order Courier'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Agent Terex'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Commander Malarus'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Commander Pyre'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tactical Officer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Contraband Cybernetics'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Deadman's Switch"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Inertial Dampeners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Rigged Cargo Chute'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Deadeye Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Snap Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Automated Target Priority'
            type: 'upgrade'
            count: 2
        }
        {
            name: "Sensor Buoy Suite"
            type: 'upgrade'
            count: 1
        }
    ]
    "LAAT/i Gunship Expansion Pack": [
        {
            name: 'LAAT/i Gunship'
            type: 'ship'
            count: 1
        }
        {
            name: '"Hawk"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Warthog"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Hound"'
            type: 'pilot'
            count: 1
        }
        {
            name: '212th Battalion Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Aayla Secura'
            type: 'upgrade'
            count: 1
        }
        {
            name: '"Fives"'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Kit Fisto'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Plo Koon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Yoda'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ghost Company'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Wolfpack'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agile Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Clone Captain Rex'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Suppressive Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Multi-Missile Pods'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Deadeye Shot'
            type: 'upgrade'
            count: 1
        }
    ]
    "HMP Droid Gunship Expansion Pack": [
        {
            name: 'HMP Droid Gunship'
            type: 'ship'
            count: 1
        }
        {
            name: 'Onderon Oppressor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DGS-286'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Geonosian Prototype'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DGS-047'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Separatist Predator'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Baktoid Drone'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Synced Laser Cannons'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Repulsorlift Stabilizers'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Bombs'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Multi-Missile Pods'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Delayed Fuses'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Kalani'
            type: 'upgrade'
            count: 1
        }
    ]
    "Heralds of Hope Expansion Pack": [
        {
            name: 'T-70 X-wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'RZ-2 A-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Poe Dameron (HoH)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Temmin Wexley (HoH)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wrobie Tyce'
            type: 'pilot'
            count: 1
        }
        {
            name: "C'ai Threnalli"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Seftin Vanik'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Suralinda Javos'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Merl Cobben'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nimi Chireen'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Ace (T-70)'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Red Squadron Expert'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Blue Squadron Rookie'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Green Squadron Expert'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Recruit'
            type: 'pilot'
            count: 2
        }
        {
            name: 'R2-D2 (Resistance)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R6-D8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Integrated S-Foils'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Backwards Tailslide'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Deadeye Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Starbird Slash'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Snap Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Overdrive Thruster'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Integrated S-Foils'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Underslung Blaster Cannon'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Automated Target Priority'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Primed Thrusters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Black One'
            type: 'upgrade'
            count: 1
        }
    ]
    "TIE/rb Heavy Expansion Pack": [
        {
            name: 'TIE/rb Heavy'
            type: 'ship'
            count: 1
        }
        {
            name: '"Rampage"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lyttan Dree'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Onyx Squadron Sentry'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Carida Academy Cadet'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Target-Assist MGK-300'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Maneuver-Assist MGK-300'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Deadeye Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Limiter Override'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Snap Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ablative Plating'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Synced Laser Cannons'
            type: 'upgrade'
            count: 1
        }
    ]
    "Jango Fett's Slave I Expansion Pack": [
        {
            name: 'Firespray-class Patrol Craft'
            type: 'ship'
            count: 1
        }
        {
            name: 'Jango Fett'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zam Wesell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Boba Fett (Separatist)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Separatist Racketeer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Suppressive Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Weapons Systems Officer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Boba Fett (Separatist)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hondo Ohnaka'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jango Fett'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Zam Wesell'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'False Transponder Codes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ablative Plating'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Thermal Detonators'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Deadeye Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Debris Gambit'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jamming Beam'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Slave I (Separatist)'
            type: 'upgrade'
            count: 1
        }
    ]
    "Eta-2 Actis Expansion Pack": [
        {
            name: 'Eta-2 Actis'
            type: 'ship'
            count: 1
        }
        {
            name: 'Syliure-class Hyperspace Ring'
            type: 'ship'
            count: 1
        }
        {
            name: 'Anakin Skywalker (Eta-2)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Obi-Wan Kenobi (Eta-2)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Aayla Secura'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shaak Ti'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Yoda'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jedi General'
            type: 'pilot'
            count: 1
        }
        {
            name: 'TransGalMeg Control Link'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Extreme Maneuvers'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Patience'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marg Sabl Closure'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Syliure-31 Hyperdrive'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-D2 (Republic)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jedi Commander'
            type: 'upgrade'
            count: 1
        }
    ]
    "Droid Tri-Fighter Expansion Pack": [
        {
            name: 'Droid Tri-fighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Phlac-Arphocc Prototype'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DIS-T81'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DIS-347'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Fearsome Predator'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Separatist Interceptor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Colicoid Interceptor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Intercept Booster'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Discord Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'XX-23 S-Thread Tracers'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Independent Calculations'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marg Sabl Closure'
            type: 'upgrade'
            count: 1
        }
    ]
    "Nimbus-class V-Wing Expansion Pack": [
        {
            name: 'Nimbus-class V-wing'
            type: 'ship'
            count: 1
        }
        {
            name: '"Contrail"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Odd Ball" (V-wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Klick"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wilhuff Tarkin'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shadow Squadron Escort'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Loyalist Volunteer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'R7-A7'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Q7 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Alpha-3B "Besh"'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Alpha-3E "Esk"'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Precision Ion Engines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Thermal Detonators'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Limiter Override'
            type: 'upgrade'
            count: 1
        }
    ]
    "Phoenix Cell Squadron Pack": [
        {
            name: 'RZ-1 A-wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'A/SF-01 B-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Hera Syndulla (B-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Netrem Pollard'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blade Squadron Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hera Syndulla (A-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ahsoka Tano (A-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wedge Antilles (A-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sabine Wren (A-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shara Bey (A-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Derek Klivian'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Green Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Phoenix Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Phoenix Squadron'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Deadeye Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Debris Gambit'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hopeful'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Marg Sabl Closure'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Saturation Salvo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Starbird Slash'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tierfon Belly Run'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Extreme Maneuvers'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Instinctive Aim'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Patience'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sense'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Passive Sensors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Autoblasters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Synced Laser Cannons'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mag-Pulse Warheads'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'XX-23 S-Thread Tracers'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Sabine Wren (Gunner)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Suppressive Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Weapons Systems Officer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'B6 Blade Wing Prototype (Epic)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'B6 Blade Wing Prototype'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stabilized S-Foils'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Vectored Cannons (RZ-1)'
            type: 'upgrade'
            count: 4
        }
    ]
    "Skystrike Academy Squadron Pack": [
        {
            name: 'TIE/in Interceptor'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE/d Defender'
            type: 'ship'
            count: 1
        }
        {
            name: 'Ciena Ree'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Vult Skerris (TIE Interceptor)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Commandant Goran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gideon Hask (TIE Interceptor)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Lorrir'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nash Windrider'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Saber Squadron Ace'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Alpha Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Darth Vader (TIE Defender)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Vult Skerris'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Dobbs'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Onyx Squadron Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Delta Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shadow Wing'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Skystrike Academy Class'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Composure'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marg Sabl Closure'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Disciplined'
            type: 'upgrade'
            count: 4
        }
        {
            name: 'Interloper Turn'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Extreme Maneuvers'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Instinctive Aim'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sense'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Passive Sensors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Autoblasters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tractor Beam'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mag-Pulse Warheads'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'XX-23 S-Thread Tracers'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hull Upgrade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Precision Ion Engines'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Static Discharge Vanes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Computer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Sensitive Controls'
            type: 'upgrade'
            count: 4
        }
        {
            name: 'TIE Defender Elite'
            type: 'upgrade'
            count: 2
        }
    ]
    "Fugitives and Collaborators Squadron Pack": [
        {
            name: 'BTL-A4 Y-wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'HWK-290 Light Freighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Leema Kai'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Arliz Hadrassian'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Padric'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Amaxine Warrior'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Jinata Security Officer'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Gamut Key'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kanan Jarrus (HWK-290)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tápusk'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Spice Runner'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bounty'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'In It For The Money'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cutthroat'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Deadeye Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marg Sabl Closure'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Saturation Salvo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tierfon Belly Run'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Extreme Maneuvers'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Patience'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Automated Target Priority'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Targeting Synchronizer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Dorsal Turret'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gamut Key'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hondo Ohnaka'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jango Fett'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Protectorate Gleb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Zam Wesell'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Boba Fett (Separatist)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Suppressive Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Weapons Systems Officer'
            type: 'upgrade'
            count: 2
        }
        {
            name: '"Genius"'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4-B11'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-TK'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Thermal Detonators'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'False Transponder Codes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Engine Upgrade'
            type: 'upgrade'
            count: 1
        }
    ]
    "Fury of the First Order": [
        {
            name: 'TIE/se Bomber'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE/wi Whisper Modified Interceptor'
            type: 'ship'
            count: 1
        }
        {
            name: 'Kylo Ren (TIE Whisper)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Nightfall"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Whirlwind"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Wrath"'
            type: 'pilot'
            count: 1
        }
        {
            name: '709th Legion Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Fury Zealot'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Breach"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Dread"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Grudge"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Scorch" (TIE/Se Bomber)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'First Order Cadet'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Sienar-Jaemus Test Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Feedback Ping'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Limiter Override'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Compassion'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Malice'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Shattering Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Optics'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Primed Thrusters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sensor Scramblers'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Electro-Chaff Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'DT-798'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'First Order Ordnance Tech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Suppressive Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Concussion Bombs'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Delayed Fuses'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Engine Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Enhanced Jamming Suite'
            type: 'upgrade'
            count: 1
        }
    ]
    "BTA-NR2 Y-Wing Pack": [
        {
            name: 'BTA-NR2 Y-wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'Aftab Ackbar'
            type: 'pilot'
            count: 1
        }
        {
            name: "C'ai Threnalli (Y-Wing)"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Corus Kapellim'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lega Fossang'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shasa Zaro'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Teza Nasz'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wilsa Teshlo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zorii Bliss'
            type: 'pilot'
            count: 1
        }
        {
            name: 'New Republic Patrol'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Kijimi Spice Runner'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Babu Frik'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Delayed Fuses'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Electro-Chaff Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Engine Upgrade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tierfon Belly Run'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'L4E-R5'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Overtuned Modulators'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Wartime Loadout'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Watchful Astromech'
            type: 'upgrade'
            count: 2
        }
    ]

    "Trident-class Assault Ship Expansion Pack": [
        {
            name: 'Trident-class Assault Ship'
            type: 'ship'
            count: 1
        }
        {
            name: 'Colicoid Destroyer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lawless Pirates'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Strategic Commander'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stalwart Captain'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Asajj Ventress (Command)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Zealous Captain'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hondo Ohnaka (Command)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'General Grievous (Command)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mar Tuuk'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Riff Tamson'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tractor Tentacles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ordnance Tubes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Point-Defense Battery'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Drill Beak'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Enhanced Propulsion'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Cannon Battery'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Tracking Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Novice Technician'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seasoned Navigator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agile Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Corsair Crew'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tractor Technicians'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Droid Crew'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Bombardment Specialists'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Comms Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Damage Control Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gunnery Specialists'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ordnance Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sensor Experts'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Adaptive Shields'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Optimized Power Core'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tibanna Reserves'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Grappler'
            type: 'upgrade'
            count: 1
        }
        {
            name: "Nautolan's Revenge"
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Neimoidian Grasp'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Trident'
            type: 'upgrade'
            count: 1
        }
    ]


    "Hotshots and Aces Reinforcements Pack": [
        {
            name: 'Gina Moonsong'
            type: 'pilot'
            count: 1
        }
        {
            name: 'K-2SO'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Leia Organa'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Alexsandr Kallus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Fifth Brother'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Vagabond"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Morna Kee'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nom Lumb'
            type: 'pilot'
            count: 1
        }
        {
            name: 'G4R-GOR V/M'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bossk (Z-95 Headhunter)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Paige Tico'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ronith Blario'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zizi Tlo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Phasma'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant LeHuse'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Rush"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Composure'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Snap Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Brilliant Evasion'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Foresight'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hate'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Precognitive Reflexes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Predictive Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Advanced Optics'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Pattern Analyzer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Primed Thrusters'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Passive Sensors'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Autoblasters'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Mag-Pulse Warheads'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Barrage Rockets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Diamond-Boron Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: '0-0-0'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'K-2SO'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Maul'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Agile Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'BT-1'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Coaxium Hyperfuel'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Moldy Crow'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Angled Deflectors'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Targeting Computer'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Stabilized S-Foils'
            type: 'upgrade'
            count: 2
        }
    ]
    "Fully Loaded Devices Pack": [
        {
            name: 'Trajectory Simulator'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Cluster Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Conner Nets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bomblet Generator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Electro-Proton Bomb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Delayed Fuses'
            type: 'upgrade'
            count: 2
        }
    ]
    "Never Tell Me the Odds Obstacles Pack": [
        {
            name: 'Rigged Cargo Chute'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Spare Parts Canisters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'coreasteroid0'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'coreasteroid3'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid0'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid3'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid4'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'core2asteroid5'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'yt2400debris0'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'yt2400debris1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'vt49decimatordebris0'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'gascloud4'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'gascloud5'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'gascloud6'
            type: 'obstacle'
            count: 1
        }
    ]
    "Gauntlet Fighter Expansion pack": [
        {
            name: 'Gauntlet Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Maul'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bo-Katan Kryze (Republic)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bo-Katan Kryze'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Hark'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Pre Vizsla'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rook Kast'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ezra Bridger (Gauntlet Fighter)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Chopper" (Gauntlet Fighter)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Mandalorian Resistance Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Death Watch Warrior'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nite Owl Liberator'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gar Saxon'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Imperial Super Commando'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shadow Collective Operator'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gauntlet'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Nightbrother'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swivel Wing'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Drop-Seat Bay'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Clan Wren Commandos'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Combat Boarding Tube'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mandalorian Super Commandos'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Imperial Super Commandos'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Nite Owl Commandos'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Death Watch Commandos'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Blazer Bomb'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Veteran Tail Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Enduring'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Shattering Shot'
            type: 'upgrade'
            count: 1
        }
    ]
    "Rogue-class Starfighter Expansion pack": [
        {
            name: 'Rogue-class Starfighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'Cad Bane (Separatist)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'IG-101'
            type: 'pilot'
            count: 1
        }
        {
            name: 'IG-102'
            type: 'pilot'
            count: 1
        }
        {
            name: 'IG-111'
            type: 'pilot'
            count: 1
        }
        {
            name: 'MagnaGuard Executioner'
            type: 'pilot'
            count: 2
        }
        {
            name: 'MagnaGuard Protector'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Cad Bane'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Viktor Hel (Rogue)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nom Lumb (Rogue)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outer Rim Hunter'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Enduring'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Notorious'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Freelance Slicer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Cannons'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Synced Laser Cannons'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Blazer Bomb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Independent Calculations'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Tracking Fob'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Overtuned Modulators'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Xanadu Blood'
            type: 'upgrade'
            count: 1
        }
    ]
    "Clone Z-95 Headhunter Expansion pack": [
        {
            name: 'Clone Z-95 Headhunter'
            type: 'ship'
            count: 2
        }
        {
            name: '"Boost"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Drift"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Hawk" (Z-95)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Killer"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Knack"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Slider"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Stub"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Warthog" (Z-95)'
            type: 'pilot'
            count: 1
        }
        {
            name: '7th Sky Corps Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Reaper Squadron Scout'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Enduring'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Angled Deflectors'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Homing Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mag-Pulse Warheads'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Marg Sabl Closure'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Squad Leader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'XX-23 S-Thread Tracers'
            type: 'upgrade'
            count: 2
        }
    ]
    "Pride of Mandalore Reinforcements Pack": [
        {
            name: 'Fenn Rau (Rebel Fang)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bodica Venj'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dirk Ullodin'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Clan Wren Volunteer'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Mandalorian Royal Guard'
            type: 'pilot'
            count: 2
        }
        {
            name: 'ISB Jingoist'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Moff Gideon'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ahsoka Tano (Crew)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bo-Katan Kryze (Republic/Separatist)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bo-Katan Kryze (Rebel/Scum)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Captain Hark'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Fenn Rau'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gar Saxon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gar Saxon (Gunner)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Korkie Kryze'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Obi-Wan Kenobi'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Pre Vizsla'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Rook Kast'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Satine Kryze'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Savage Opress'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tal Merrik'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tiber Saxon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tristan Wren'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ursa Wren'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ursa Wren (Gunner)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sabine Wren (Command)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Prime Minister Almec'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Maul (Mandalore)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Beskar Reinforced Plating'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Blazer Bomb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Thermal Detonators'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mandalorian Optics'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Clan Training'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Deadeye Shot'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Limiter Override'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Marg Sabl Closure'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Compassion'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Malice'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Electro-Chaff Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Suppressive Gunner'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Weapons Systems Officer'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'False Transponder Codes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Delayed Fuses'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Overtuned Modulators'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'pomasteroid1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'pomasteroid2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'pomasteroid3'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'pomdebris1'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'pomdebris2'
            type: 'obstacle'
            count: 1
        }
        {
            name: 'pomdebris3'
            type: 'obstacle'
            count: 1
        }
    ]
    "Razor Crest Expansion Pack": [
        {
            name: 'ST-70 Assault Ship'
            type: 'ship'
            count: 1
        }
        {
            name: 'The Mandalorian'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Q9-0'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Guild Bounty Hunter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outer Rim Enforcer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Razor Crest'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'The Mandalorian'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'The Child'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tracking Fob'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Notorious'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Enduring'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'IG-11'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Greef Karga'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Kuiil'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Peli Motto'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Migs Mayfeld'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Burnout Thrusters'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Overtuned Modulators'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hotshot Tail Blaster'
            type: 'upgrade'
            count: 1
        }
    ]
    "Battle of Yavin Battle Pack": [
        {
            name: 'Garven Dreis (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Luke Skywalker (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jek Porkins (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Biggs Darklighter (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wedge Antilles (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Han Solo (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Dutch" Vander (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dex Tiree (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Pops" Krail (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hol Okand (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Darth Vader (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Backstabber" (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Mauler" Mithel (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Dark Curse" (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Wampa" (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Iden Versio (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sigma 4 (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sigma 5 (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sigma 6 (BoY)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sigma 7 (BoY)'
            type: 'pilot'
            count: 1
        }
    ]
    "Siege of Coruscant Battle Pack": [
        {
            name: 'Anakin Skywalker (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Obi-Wan Kenobi (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shaak Ti (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Odd Ball" (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Wolffe" (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Jag" (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Contrail" (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Klick" (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Kickback" (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Axe" (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Count Dooku (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DBS-32C (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DBS-404 (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Baktoid Prototype (SoC)'
            type: 'pilot'
            count: 2
        }
        {
            name: 'DIS-347 (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DIS-T81 (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Phlac-Arphocc Prototype (SoC)'
            type: 'pilot'
            count: 2
        }
        {
            name: 'DFS-081 (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DFS-311 (SoC)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Haor Chall Prototype (SoC)'
            type: 'pilot'
            count: 2
        }
    ]
    "Hotshots and Aces II Reinforcements Pack": [
        {
            name: 'Corran Horn (X-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wes Janson'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tycho Celchu'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Keo Venzee'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Pops" Krail'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Flight Leader Ubbel'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Juno Eclipse'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Second Sister'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Magna Tolvan'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Yrica Quell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Poe Dameron (YT-1300)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lando Calrissian (Resistance)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Venisa Doza'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zay Versio'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Taka Jamoreesa'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Hondo Ohnaka'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tor Phun'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Durge'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Doctor Aphra'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lapin'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Volan Das'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Aurra Sing'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Durge (Separatist)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'The Iron Assembler'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kelrodo-Ai Holdout'
            type: 'pilot'
            count: 3
        }
        {
            name: 'Adi Gallia'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Adi Gallia (Delta-7B)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Sicko"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kit Fisto'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Slammer"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gavyn Sykes'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Galek'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jul Jerjerrod'
            type: 'pilot'
            count: 1
        }
        {
            name: 'DT-798'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lin Gaava'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Agent Tierny'
            type: 'pilot'
            count: 1
        }
    ]
    "Galactic Empire Squadron Starter Pack": [
        {
            name: 'TIE Advanced x1'
            type: 'ship'
            count: 1
        }
        {
            name: 'TIE/ln Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE/sa Bomber'
            type: 'ship'
            count: 1
        }
        {
            name: 'Darth Vader (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Maarek Stele (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Jonus (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tomax Bren (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Night Beast" (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Valen Rudor (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Iden Versio (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Darth Vader'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Maarek Stele'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Jonus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tomax Bren'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Night Beast"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Valen Rudor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Iden Versio'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Feedback Ping'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Instinctive Aim'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Barrage Rockets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heightened Perception'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Disciplined'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Hate'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Pattern Analyzer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Precision Ion Engines'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Passive Sensors'
            type: 'upgrade'
            count: 1
        }
    ]
    "Rebel Alliance Squadron Starter Pack": [
        {
            name: 'T-65 X-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'RZ-1 A-wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'BTL-A4 Y-wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Luke Skywalker (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jek Porkins (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Dutch" Vander (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Horton Salm (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Arvel Crynyd (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jake Farrell (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shara Bey (SSP)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Luke Skywalker'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jek Porkins'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Dutch" Vander'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Horton Salm'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Arvel Crynyd'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jake Farrell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shara Bey (A-Wing)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Elusive'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hopeful'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heightened Perception'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-D2'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-D8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Instinctive Aim'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'R4 Astromech'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Vectored Cannons (RZ-1)'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Afterburners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Shield Upgrade'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Servomotor S-Foils'
            type: 'upgrade'
            count: 1
        }
    ]
    "YT-2400 Light Freighter Expansion Pack": [
        {
            name: 'YT-2400 Light Freighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Dash Rendar (YLF)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Leebo" (YLF)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dash Rendar (YLF-SL)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Leebo" (YLF-SL)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dash Rendar (Scum)'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Leebo" (Scum)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lando Calrissian'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hotshot Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Veteran Turret Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Rigged Cargo Chute'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Outrider'
            type: 'upgrade'
            count: 1
        }
    ]
    "TIE/sa TIE Bomber Expansion Pack": [
        {
            name: 'TIE/sa Bomber'
            type: 'ship'
            count: 2
        }
        {
            name: '"Deathfire"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Jonus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tomax Bren'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Major Rhymer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Scimitar Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Gamma Squadron Ace'
            type: 'pilot'
            count: 2
        }
        {
            name: '"Deathfire" (TBE)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Jonus (TBE)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tomax Bren (TBE)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Major Rhymer (TBE)'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Adv. Proton Torpedoes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Conner Nets'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Saturation Salvo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Skilled Bombardier'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Bombs'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Feedback Ping'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Disciplined'
            type: 'upgrade'
            count: 2
        }
    ]

    'Loose Ships': [
        {
            name: 'Auzituck Gunship'
            type: 'ship'
            count: 2
        }
        {
            name: 'E-wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'BTL-S8 K-wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'Attack Shuttle'
            type: 'ship'
            count: 2
        }
        {
            name: 'Alpha-Class Star Wing'
            type: 'ship'
            count: 3
        }
        {
            name: 'Lambda-class T-4a Shuttle'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE/ag Aggressor'
            type: 'ship'
            count: 3
        }
        {
            name: 'TIE/ph Phantom'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE/ca Punisher'
            type: 'ship'
            count: 2
        }
        {
            name: 'Kihraxz Fighter'
            type: 'ship'
            count: 3
        }
        {
            name: 'Aggressor Assault Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'M12-L Kimogila Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'G-1A Starfighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'Quadrijet Transfer Spacetug'
            type: 'ship'
            count: 3
        }
        {
            name: 'Scurrg H-6 Bomber'
            type: 'ship'
            count: 2
        }
        {
            name: 'Lancer-Class Pursuit Craft'
            type: 'ship'
            count: 2
        }
        {
            name: 'StarViper-class Attack Platform'
            type: 'ship'
            count: 2
        }
        {
            name: 'MG-100 StarFortress'
            type: 'ship'
            count: 3
        }
        {
            name: 'Upsilon-Class Command Shuttle'
            type: 'ship'
            count: 3
        }
        {
            name: 'Scavenged YT-1300'
            type: 'ship'
            count: 3
        }
        {
            name: 'Raider-class Corvette'
            type: 'ship'
            count: 3
        }
        {
            name: 'GR-75 Medium Transport'
            type: 'ship'
            count: 3
        }
        {
            name: 'Gozanti-class Cruiser'
            type: 'ship'
            count: 3
        }
    ]

class exportObj.Collection

    constructor: (args) ->
        @expansions = args.expansions ? {}
        @singletons = args.singletons ? {}
        @checks = args.checks ? {}
        # To save collection (optional)
        @backend = args.backend
        
        @setupUI()
        @setupHandlers()

        @reset()
        
        @language = 'English'

    reset: ->
        @shelf = {}
        @table = {}
        
        for expansion, count of @expansions
            try
                count = parseInt count
            catch
                count = 0
            for _ in [0...count]
                for card in (exportObj.manifestByExpansion[expansion] ? [])
                    for _ in [0...card.count]
                        ((@shelf[card.type] ?= {})[card.name] ?= []).push expansion

        for type, counts of @singletons
            for name, count of counts
                if count > 0
                    for _ in [0...count]
                        ((@shelf[type] ?= {})[name] ?= []).push 'singleton'
                else if count < 0
                    for _ in [0...count]
                        if ((@shelf[type] ?= {})[name] ?= []).length > 0
                            @shelf[type][name].pop()

        @counts = {}
        for own type of @shelf
            for own thing of @shelf[type]
                (@counts[type] ?= {})[thing] ?= 0
                @counts[type][thing] += @shelf[type][thing].length

                
        # Create list of released singletons
        singletonsByType = {}
        for expname, items of exportObj.manifestByExpansion
            for item in items
                (singletonsByType[item.type] ?= {})[item.name] = true
        for type, names of singletonsByType
            sorted_names = (name for name of names).sort((a,b) -> sortWithoutQuotes(a,b,type))
            singletonsByType[type] = sorted_names
                
        component_content = $ @modal.find('.collection-inventory-content')
        component_content.text ''
        card_totals_by_type = {}
        card_different_by_type = {}
        for own type, things of @counts
            if singletonsByType[type]?
                card_totals_by_type[type] = 0
                card_different_by_type[type] = 0
                contents = component_content.append $.trim """
                    <div class="row">
                        <div class="col"><h5>#{type.capitalize()}</h5></div>
                    </div>
                    <div class="row">
                        <ul id="counts-#{type}" class="col"></ul>
                    </div>
                """
                ul = $ contents.find("ul#counts-#{type}")
                for thing in Object.keys(things).sort((a,b) -> sortWithoutQuotes(a,b,type))
                    if thing in singletonsByType[type]
                        card_totals_by_type[type] += things[thing]
                        card_different_by_type[type]++
                        if type == 'pilot'
                            ul.append """<li>#{if exportObj.pilots[thing].display_name then exportObj.pilots[thing].display_name else thing} - #{things[thing]}</li>"""
                        if type == 'upgrade'
                            ul.append """<li>#{if exportObj.upgrades[thing].display_name then exportObj.upgrades[thing].display_name else thing} - #{things[thing]}</li>"""
                        if type == 'ship'
                            ul.append """<li>#{if exportObj.ships[thing].display_name then exportObj.ships[thing].display_name else thing} - #{things[thing]}</li>"""

        summary = ""
        for type in Object.keys(card_totals_by_type)
            summary += """<li>#{type.capitalize()} - #{card_totals_by_type[type]} (#{card_different_by_type[type]} different)</li>"""

        component_content.append $.trim """
            <div class="row">
                <div class="col"><h5>Summary</h5></div>
            </div>
            <div class = "row">
                <ul id="counts-summary" class="col">
                    #{summary}
                </ul>
            </div>
        """


    check: (where, type, name) ->
        (((where[type] ? {})[name] ? []).length ? 0) != 0

    checkShelf: (type, name) ->
        @check @shelf, type, name

    checkTable: (type, name) ->
        @check @table, type, name

    use: (type, name) ->
        try
            card = @shelf[type][name].pop()
        catch e
            return false unless card?

        if card?
            ((@table[type] ?= {})[name] ?= []).push card
            true
        else
            false

    release: (type, name) ->
        try
            card = @table[type][name].pop()
        catch e
            return false unless card?

        if card?
            ((@shelf[type] ?= {})[name] ?= []).push card
            true
        else
            false

    save: (cb=$.noop) ->
        @backend.saveCollection(this, cb) if @backend?

    @load: (backend, cb) ->
        backend.loadCollection cb

    setupUI: ->
        # Create list of released singletons
        singletonsByType = {}
        for expname, items of exportObj.manifestByExpansion
            for item in items
                (singletonsByType[item.type] ?= {})[item.name] = true
        for type, names of singletonsByType
            sorted_names = (name for name of names).sort((a,b) -> sortWithoutQuotes(a,b,type))
            singletonsByType[type] = sorted_names
        
        @modal = $ document.createElement 'DIV'
        @modal.addClass 'modal fade collection-modal d-print-none'
        @modal.tabindex = "-1"
        @modal.role = "dialog"
        $('body').append @modal
        @modal.append $.trim """
    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Your Collection</h4>
                <button type="button" class="close d-print-none" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <ul class="nav nav-pills mb-2" id="collectionTabs" role="tablist">
                    <li class="nav-item active" id="collection-expansions-tab" role="presentation"><a data-target="#collection-expansions" class="nav-link" data-toggle="tab" role="tab" aria-controls="collection-expansions" aria-selected="true">Expansions</a><li>
                    <li class="nav-item" id="collection-ships-tab" role="presentation"><a href="#collection-ships" class="nav-link" data-toggle="tab" role="tab" aria-controls="collection-ships" aria-selected="false">Ships</a><li>
                    <li class="nav-item" id="collection-pilots-tab" role="presentation"><a href="#collection-pilots" class="nav-link" data-toggle="tab" role="tab" aria-controls="collection-pilots" aria-selected="false">Pilots</a><li>
                    <li class="nav-item" id="collection-upgrades-tab" role="presentation"><a href="#collection-upgrades" class="nav-link" data-toggle="tab" role="tab" aria-controls="collection-upgrades" aria-selected="false">Upgrades</a><li>
                    <li class="nav-item" id="collection-components-tab" role="presentation"><a href="#collection-components" class="nav-link" data-toggle="tab" role="tab" aria-controls="collection-components" aria-selected="false">Inventory</a><li>
                </ul>
                <div class="tab-content" id="collectionTabContent">
                    <div id="collection-expansions" role="tabpanel" aria-labelledby="collection-expansions-tab" class="tab-pane fade show active container-fluid collection-content"></div>
                    <div id="collection-ships" role="tabpanel" aria-labelledby="collection-ships-tab" class="tab-pane fade container-fluid collection-ship-content"></div>
                    <div id="collection-pilots" role="tabpanel" aria-labelledby="collection-pilots-tab" class="tab-pane fade container-fluid collection-pilot-content"></div>
                    <div id="collection-upgrades" role="tabpanel" aria-labelledby="collection-upgrades-tab" class="tab-pane fade container-fluid collection-upgrade-content"></div>
                    <div id="collection-components" role="tabpanel" aria-labelledby="collection-components-tab" class="tab-pane fade container-fluid collection-inventory-content"></div>
                </div>
            </div>
            <div class="modal-footer d-print-none">
                <span class="collection-status"></span>
                &nbsp;
                <label class="checkbox-check-collection">
                    Check Collection Requirements <input type="checkbox" class="check-collection"/>
                </label>
                &nbsp;
                <button class="btn btn-danger reset-collection" aria-hidden="true">Reset</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
            <div id="reset-check" class="modal-footer d-print-none">
                <button class="btn btn-modal cancel-reset translated" aria-hidden="true" defaultText="Go Back"></button>
                <button class="btn btn-danger confirm-reset translated" aria-hidden="true" defaultText="Reset Collection"></button>
            </div>
        </div>
    </div>
        """
        @modal_status = $ @modal.find('.collection-status')
        @modal.find('#reset-check').hide()

        if @checks.collectioncheck?
            if @checks.collectioncheck != "false"
                @modal.find('.check-collection').prop('checked', true)
        else
            @checks.collectioncheck = true
            @modal.find('.check-collection').prop('checked', true)
        @modal.find('.checkbox-check-collection').show()
        
        collection_content = $ @modal.find('.collection-content')
        for expansion in exportObj.expansions
            count = parseInt(@expansions[expansion] ? 0)
            row = $.parseHTML $.trim """
                <div class="row">
                    <div class="col">
                        <label>
                            <input class="expansion-count" type="number" size="3" value="#{count}" />
                            <span class="expansion-name">#{expansion}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'expansion', expansion
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.expansion-name').data 'name', expansion
            if expansion != 'Loose Ships' or 'Hyperspace'
                collection_content.append row

        shipcollection_content = $ @modal.find('.collection-ship-content')
        for ship in singletonsByType.ship
            count = parseInt(@singletons.ship?[ship] ? 0)
            row = $.parseHTML $.trim """
                <div class="row">
                    <div class="col">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="ship-name">#{if exportObj.ships[ship].display_name then exportObj.ships[ship].display_name else ship}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'ship'
            input.data 'singletonName', ship
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.ship-name').data 'name', ship
            shipcollection_content.append row

        pilotcollection_content = $ @modal.find('.collection-pilot-content')
        for pilot in singletonsByType.pilot
            count = parseInt(@singletons.pilot?[pilot] ? 0)
            row = $.parseHTML $.trim """
                <div class="row">
                    <div class="col">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="pilot-name"><i class="xwing-miniatures-ship xwing-miniatures-ship-#{if exportObj.ships[exportObj.pilots[pilot].ship].icon then exportObj.ships[exportObj.pilots[pilot].ship].icon else exportObj.ships[exportObj.pilots[pilot].ship].xws}"></i> #{if exportObj.pilots[pilot].display_name then exportObj.pilots[pilot].display_name else pilot}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'pilot'
            input.data 'singletonName', pilot
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.pilot-name').data 'name', pilot
            pilotcollection_content.append row

        upgradecollection_content = $ @modal.find('.collection-upgrade-content')
        for upgrade in singletonsByType.upgrade
            count = parseInt(@singletons.upgrade?[upgrade] ? 0)
            row = $.parseHTML $.trim """
                <div class="row">
                    <div class="col">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="upgrade-name">#{if exportObj.upgrades[upgrade].slot then exportObj.translate('sloticon', exportObj.upgrades[upgrade].slot)} #{if exportObj.upgrades[upgrade].display_name then exportObj.upgrades[upgrade].display_name else upgrade} 
                            #{if exportObj.upgrades[upgrade].faction then "(#{exportObj.upgrades[upgrade].faction})" else ''}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'upgrade'
            input.data 'singletonName', upgrade
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.upgrade-name').data 'name', upgrade
            upgradecollection_content.append row

    destroyUI: ->
        @modal.modal 'hide'
        @modal.remove()
        $(exportObj).trigger 'xwing-collection:destroyed', this

    setupHandlers: ->
        $(exportObj).trigger 'xwing-collection:created', this

        $(exportObj).on 'xwing-backend:authenticationChanged', (e, authenticated, backend) =>
            # console.log "deauthed, destroying collection UI"
            @destroyUI() unless authenticated
        .on 'xwing-collection:saved', (e, collection) =>
            @modal_status.text 'Saved!'
            @modal_status.fadeIn 100, =>
                @modal_status.fadeOut 1000
                
        .on 'xwing:CollectionCheck', @onCollectionCheckSet

        $ @modal.find('input.expansion-count').change (e) =>
            target = $(e.target)
            val = target.val()
            target.val(0) if val < 0 or isNaN(parseInt(val))
            @expansions[target.data 'expansion'] = parseInt(target.val())

            target.closest('div').css 'background-color', @countToBackgroundColor(target.val())

            # console.log "Input changed, triggering collection change"
            $(exportObj).trigger 'xwing-collection:changed', this

        $ @modal.find('input.singleton-count').change (e) =>
            target = $(e.target)
            val = target.val()
            target.val(0) if isNaN(parseInt(val))
            (@singletons[target.data 'singletonType'] ?= {})[target.data 'singletonName'] = parseInt(target.val())

            target.closest('div').css 'background-color', @countToBackgroundColor(target.val())

            # console.log "Input changed, triggering collection change"
            $(exportObj).trigger 'xwing-collection:changed', this

        $ @modal.find('.check-collection').change (e) =>
            if @modal.find('.check-collection').prop('checked') == false
                result = false
                @modal_status.text """Collection Tracking Disabled"""
            else
                result = true
                @modal_status.text """Collection Tracking Active"""
            @checks.collectioncheck = result
            @modal_status.fadeIn 100, =>
                @modal_status.fadeOut 1000
            $(exportObj).trigger 'xwing-collection:changed', this

        $ @modal.find('.reset-collection').click (e) =>
            $ @modal.find('#reset-check').fadeIn 100

        $ @modal.find('button.cancel-reset').click (e) =>
            $ @modal.find('#reset-check').fadeOut()

        $ @modal.find('button.confirm-reset').click (e) =>
            $(exportObj).trigger 'xwing-collection:reset', this
            $ @modal.find('#reset-check').fadeOut()
            $ @modal.find('.expansion-count').val 0
            $ @modal.find('.expansion-count').css 'background-color', @countToBackgroundColor(target.val())
            $ @modal.find('.singleton-count').val 0
            $ @modal.find('.singleton-count').css 'background-color', @countToBackgroundColor(target.val())

    countToBackgroundColor: (count) ->
        count = parseInt(count)
        switch
            when count < 0
                'red'
            when count == 0
                ''
            when count > 0
                i = parseInt(200 * Math.pow(0.9, count - 1))
                "rgb(#{i}, 255, #{i})"
            else
                ''
