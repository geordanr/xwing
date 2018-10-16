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
    'Second Edition Core Set': [
        {
            name: 'X-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'TIE Fighter'
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
            name: 'U-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'X-Wing'
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
            name: 'Benthic Two-Tubes'
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
            name: 'Edrio Two-Tubes'
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
            count: 2
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
            count: 1
        }
        {
            name: 'Tactical Officer'
            type: 'upgrade'
            count: 1
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
            name: 'X-Wing'
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
            name: 'Y-Wing'
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
            name: 'TIE Fighter'
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
            name: 'TIE Advanced'
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
            name: 'Firespray-31'
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
            name: 'Customized YT-1300'
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
    'Loose Ships': [
        {
            name: 'A-Wing'
            type: 'ship'
            count: 3
        }
        {
            name: 'ARC-170'
            type: 'ship'
            count: 2
        }
        {
            name: 'Auzituck Gunship'
            type: 'ship'
            count: 2
        }
        {
            name: 'B-Wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'E-Wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'VCX-100'
            type: 'ship'
            count: 2
        }
        {
            name: 'HWK-290'
            type: 'ship'
            count: 2
        }
        {
            name: 'K-Wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'YT-1300'
            type: 'ship'
            count: 2
        }
        {
            name: 'Attack Shuttle'
            type: 'ship'
            count: 2
        }
        {
            name: 'Sheathipede-Class Shuttle'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'U-Wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'X-Wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'Y-Wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'YT-2400'
            type: 'ship'
            count: 2
        }
        {
            name: 'Z-95 Headhunter'
            type: 'ship'
            count: 4
        }
        {
            name: 'Alpha-Class Star Wing'
            type: 'ship'
            count: 3
        }
        {
            name: 'TIE Advanced Prototype'
            type: 'ship'
            count: 3
        }
        {
            name: 'Lambda-Class Shuttle'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE Advanced'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE Aggressor'
            type: 'ship'
            count: 3
        }
        {
            name: 'TIE Bomber'
            type: 'ship'
            count: 3
        }
        {
            name: 'TIE Defender'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE Fighter'
            type: 'ship'
            count: 4
        }
        {
            name: 'TIE Interceptor'
            type: 'ship'
            count: 3
        }
        {
            name: 'TIE Phantom'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE Punisher'
            type: 'ship'
            count: 2
        }
        {
            name: 'TIE Striker'
            type: 'ship'
            count: 3
        }
        {
            name: 'VT-49 Decimator'
            type: 'ship'
            count: 2
        }        
        {
            name: 'Kihraxz Fighter'
            type: 'ship'
            count: 3
        }
        {
            name: 'YV-666'
            type: 'ship'
            count: 2
        }
        {
            name: 'Aggressor'
            type: 'ship'
            count: 2
        }
        {
            name: 'HWK-290'
            type: 'ship'
            count: 2
        }
        {
            name: 'M12-L Kimogila Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'M3-A Interceptor'
            type: 'ship'
            count: 4
        }
        {
            name: 'G-1A Starfighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'Fang Fighter'
            type: 'ship'
            count: 3
        }
        {
            name: 'JumpMaster 5000'
            type: 'ship'
            count: 2
        }
        {
            name: 'Quadjumper'
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
            name: 'Firespray-31'
            type: 'ship'
            count: 2
        }
        {
            name: 'StarViper'
            type: 'ship'
            count: 2
        }
        {
            name: 'Y-Wing'
            type: 'ship'
            count: 2
        }
        {
            name: 'Z-95 Headhunter'
            type: 'ship'
            count: 4
        }
        {
            name: 'T-70 X-Wing'
            type: 'ship'
            count: 3
        }
        {
            name: 'B/SF-17 Bomber'
            type: 'ship'
            count: 3
        }
        {
            name: 'TIE/SF Fighter'
            type: 'ship'
            count: 3
        }
        {
            name: 'TIE/FO Fighter'
            type: 'ship'
            count: 3
        }
        {
            name: 'TIE Silencer'
            type: 'ship'
            count: 3
        }
        {
            name: 'Upsilon-Class Shuttle'
            type: 'ship'
            count: 3
        }
        {
            name: 'Scavenged YT-1300'
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
                    <div class="row-fluid">
                        <div class="span12"><h5>#{type.capitalize()}</h5></div>
                    </div>
                    <div class="row-fluid">
                        <ul id="counts-#{type}" class="span12"></ul>
                    </div>
                """
                ul = $ contents.find("ul#counts-#{type}")
                for thing in Object.keys(things).sort((a,b) -> sortWithoutQuotes(a,b,type))
                    card_totals_by_type[type] += things[thing]
                    if thing in singletonsByType[type]
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
            <div class="row-fluid">
                <div class="span12"><h5>Summary</h5></div>
            </div>
            <div class = "row-fluid">
                <ul id="counts-summary" class="span12">
                    #{summary}
                </ul>
            </div>
        """

                
    fixName: (name) ->
        # Special case handling for Heavy Scyk :(
        if name.indexOf('"Heavy Scyk" Interceptor') == 0
            '"Heavy Scyk" Interceptor'
        else
            name

    check: (where, type, name) ->
        (((where[type] ? {})[@fixName name] ? []).length ? 0) != 0

    checkShelf: (type, name) ->
        @check @shelf, type, name

    checkTable: (type, name) ->
        @check @table, type, name

    use: (type, name) ->
        name = @fixName name
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
        name = @fixName name
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
        @modal.addClass 'modal hide fade collection-modal hidden-print'
        $('body').append @modal
        @modal.append $.trim """
            <div class="modal-header">
                <button type="button" class="close hidden-print" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4>Your Collection</h4>
            </div>
            <div class="modal-body">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-target="#collection-expansions" data-toggle="tab">Expansions</a><li>
                    <li><a data-target="#collection-ships" data-toggle="tab">Ships</a><li>
                    <li><a data-target="#collection-pilots" data-toggle="tab">Pilots</a><li>
                    <li><a data-target="#collection-upgrades" data-toggle="tab">Upgrades</a><li>
                    <li><a data-target="#collection-components" data-toggle="tab">Inventory</a><li>
                </ul>
                <div class="tab-content">
                    <div id="collection-expansions" class="tab-pane active container-fluid collection-content"></div>
                    <div id="collection-ships" class="tab-pane active container-fluid collection-ship-content"></div>
                    <div id="collection-pilots" class="tab-pane active container-fluid collection-pilot-content"></div>
                    <div id="collection-upgrades" class="tab-pane active container-fluid collection-upgrade-content"></div>
                    <div id="collection-components" class="tab-pane container-fluid collection-inventory-content"></div>
                </div>
            </div>
            <div class="modal-footer hidden-print">
                <span class="collection-status"></span>
                &nbsp;
                <label class="checkbox-check-collection">
                    Check Collection Requirements <input type="checkbox" class="check-collection"/>
                </label>
                &nbsp;
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @modal_status = $ @modal.find('.collection-status')

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
                <div class="row-fluid">
                    <div class="span12">
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
            if expansion != 'Loose Ships'
                collection_content.append row

        shipcollection_content = $ @modal.find('.collection-ship-content')
        for ship in singletonsByType.ship
            count = parseInt(@singletons.ship?[ship] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
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
            $(row).find('.ship-name').data 'name', expansion
            shipcollection_content.append row

        pilotcollection_content = $ @modal.find('.collection-pilot-content')
        for pilot in singletonsByType.pilot
            count = parseInt(@singletons.pilot?[pilot] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="pilot-name">#{if exportObj.pilots[pilot].display_name then exportObj.pilots[pilot].display_name else pilot}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'pilot'
            input.data 'singletonName', pilot
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.pilot-name').data 'name', expansion
            pilotcollection_content.append row

        upgradecollection_content = $ @modal.find('.collection-upgrade-content')
        for upgrade in singletonsByType.upgrade
            count = parseInt(@singletons.upgrade?[upgrade] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="upgrade-name">#{if exportObj.upgrades[upgrade].display_name then exportObj.upgrades[upgrade].display_name else upgrade}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'upgrade'
            input.data 'singletonName', upgrade
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.upgrade-name').data 'name', expansion
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
            @modal_status.text 'Collection saved'
            @modal_status.fadeIn 100, =>
                @modal_status.fadeOut 1000
        .on 'xwing:languageChanged', @onLanguageChange

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

    onLanguageChange:
        (e, language) =>
            if language != @language
                # console.log "language changed to #{language}"
                do (language) =>
                    @modal.find('.expansion-name').each ->
                        # console.log "translating #{$(this).text()} (#{$(this).data('name')}) to #{language}"
                        $(this).text exportObj.translate language, 'sources', $(this).data('name')
                @language = language
