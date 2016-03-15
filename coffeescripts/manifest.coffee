exportObj = exports ? this

String::startsWith ?= (t) ->
    @indexOf t == 0

sortWithoutQuotes = (a, b) ->
    a_name = a.replace /[^a-z0-9]/ig, ''
    b_name = b.replace /[^a-z0-9]/ig, ''
    if a_name < b_name
        -1
    else if a_name > b_name
        1
    else
        0

exportObj.manifestByExpansion =
    'Core': [
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
            name: 'Biggs Darklighter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rookie Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Mauler Mithel"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Dark Curse"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Night Beast"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Pilot'
            type: 'pilot'
            count: 2
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
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-F2'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-D2'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Determination'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 1
        }
    ]
    'X-Wing Expansion Pack': [
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
            name: 'Garven Dreis'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rookie Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-K6'
            type: 'upgrade'
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
            name: 'Marksmanship'
            type: 'upgrade'
            count: 1
        }
    ]
    'Y-Wing Expansion Pack': [
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
            name: '"Dutch" Vander'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gray Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gold Squadron Pilot'
            type: 'pilot'
            count: 1
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
            name: 'R5-D8'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2 Astromech'
            type: 'upgrade'
            count: 1
        }
    ]
    'TIE Fighter Expansion Pack': [
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
            name: '"Backstabber"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Winged Gundark"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Squadron Pilot'
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
            name: 'Determination'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Swarm Tactics'
            type: 'upgrade'
            count: 1
        }
    ]
    'TIE Advanced Expansion Pack': [
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
            name: 'Storm Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tempest Squadron Pilot'
            type: 'pilot'
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
            name: 'Expert Handling'
            type: 'upgrade'
            count: 1
        }
    ]
    'A-Wing Expansion Pack': [
        {
            name: 'A-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Tycho Celchu'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Arvel Crynyd'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Green Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Prototype Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Push the Limit'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Deadeye'
            type: 'upgrade'
            count: 1
        }
    ]
    'Millennium Falcon Expansion Pack': [
        {
            name: 'YT-1300'
            type: 'ship'
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
            name: 'Chewbacca'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Outer Rim Smuggler'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Concussion Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Assault Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Elusiveness'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Draw Their Fire'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Veteran Instincts'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Luke Skywalker'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Nien Nunb'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Chewbacca'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Weapons Engineer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Shield Upgrade'
            type: 'modification'
            count: 2
        }
        {
            name: 'Engine Upgrade'
            type: 'modification'
            count: 2
        }
        {
            name: 'Millennium Falcon'
            type: 'title'
            count: 1
        }
    ]
    'TIE Interceptor Expansion Pack': [
        {
            name: 'TIE Interceptor'
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
            name: '''"Fel's Wrath"'''
            type: 'pilot'
            count: 1
        }
        {
            name: 'Saber Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Avenger Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Alpha Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Daredevil'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Elusiveness'
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
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Assault Missiles'
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
            name: 'Veteran Instincts'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Expose'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proximity Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mercenary Copilot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stealth Device'
            type: 'modification'
            count: 2
        }
        {
            name: 'Slave I'
            type: 'title'
            count: 1
        }
    ]
    'B-Wing Expansion Pack': [
        {
            name: 'B-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Ten Numb'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ibtisam'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dagger Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Autoblaster'
            type: 'upgrade'
            count: 1
        }
    ]
    "HWK-290 Expansion Pack": [
        {
            name: 'HWK-290'
            type: 'ship'
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
            name: 'Rebel Operative'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ion Cannon Turret'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Recon Specialist'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Moldy Crow'
            type: 'title'
            count: 1
        }
        {
            name: 'Blaster Turret'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Saboteur'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Intelligence Agent'
            type: 'upgrade'
            count: 1
        }
    ]
    "TIE Bomber Expansion Pack": [
        {
            name: 'TIE Bomber'
            type: 'ship'
            count: 1
        }
        {
            name: 'Major Rhymer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Captain Jonus'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gamma Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Scimitar Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Assault Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Seismic Charges'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Adrenaline Rush'
            type: 'upgrade'
            count: 1
        }
    ]
    "Lambda-Class Shuttle Expansion Pack": [
        {
            name: 'Lambda-Class Shuttle'
            type: 'ship'
            count: 1
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
            name: 'Captain Yorr'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Omicron Group Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sensor Jammer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Rebel Captive'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'ST-321'
            type: 'title'
            count: 1
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Weapons Engineer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Darth Vader'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Intelligence Agent'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Navigator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Flight Instructor'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Anti-Pursuit Lasers'
            type: 'modification'
            count: 2
        }
    ]
    "Z-95 Headhunter Expansion Pack": [
        {
            name: 'Z-95 Headhunter'
            type: 'ship'
            count: 1
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
            name: 'Tala Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Bandit Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Munitions Failsafe'
            type: 'modification'
            count: 1
        }
        {
            name: 'Decoy'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Wingman'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Pulse Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Assault Missiles'
            type: 'upgrade'
            count: 1
        }
    ]
    'E-Wing Expansion Pack': [
        {
            name: 'E-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Corran Horn'
            type: 'pilot'
            count: 1
        }
        {
            name: "Etahn A'baht"
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blackmoon Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Knave Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Advanced Sensors'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R7-T1'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R7 Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Flechette Torpedoes'
            type: 'upgrade'
            count: 1
        }
    ]
    'TIE Defender Expansion Pack': [
        {
            name: 'TIE Defender'
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
            name: 'Onyx Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Delta Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Munitions Failsafe'
            type: 'modification'
            count: 1
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Outmaneuver'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Pulse Missiles'
            type: 'upgrade'
            count: 1
        }
    ]
    'TIE Phantom Expansion Pack': [
        {
            name: 'TIE Phantom'
            type: 'ship'
            count: 1
        }
        {
            name: '"Whisper"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Echo"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Shadow Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Sigma Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Fire-Control System'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tactician'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Recon Specialist'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced Cloaking Device'
            type: 'modification'
            count: 1
        }
        {
            name: 'Stygium Particle Accelerator'
            type: 'modification'
            count: 1
        }
    ]
    'YT-2400 Freighter Expansion Pack': [
        {
            name: 'YT-2400'
            type: 'ship'
            count: 1
        }
        {
            name: 'Dash Rendar'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Eaden Vrill'
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
            name: 'Experimental Interface'
            type: 'modification'
            count: 1
        }
        {
            name: 'Countermeasures'
            type: 'modification'
            count: 2
        }
        {
            name: 'Outrider'
            type: 'title'
            count: 1
        }
        {
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: '"Leebo"'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lando Calrissian'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stay On Target'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Dash Rendar'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gunner'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mercenary Copilot'
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
    ]
    "VT-49 Decimator Expansion Pack": [
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
            name: 'Commander Kenkirk'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Patrol Leader'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Ruthlessness'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Dauntless'
            type: 'title'
            count: 1
        }
        {
            name: 'Ysanne Isard'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Moff Jerjerrod'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Intimidation'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tactical Jammer'
            type: 'modification'
            count: 2
        }
        {
            name: 'Proton Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Mara Jade'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Fleet Officer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 2
        }
    ]
    'Imperial Aces Expansion Pack': [
        {
            name: 'TIE Interceptor'
            type: 'ship'
            count: 2
        }
        {
            name: 'Carnor Jax'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Kir Kanos'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Royal Guard Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Tetran Cowall'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Lieutenant Lorrir'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Saber Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Royal Guard TIE'
            type: 'title'
            count: 2
        }
        {
            name: 'Targeting Computer'
            type: 'modification'
            count: 2
        }
        {
            name: 'Hull Upgrade'
            type: 'modification'
            count: 2
        }
        {
            name: 'Push the Limit'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Opportunist'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Shield Upgrade'
            type: 'modification'
            count: 2
        }
    ]
    'Rebel Aces Expansion Pack': [
        {
            name: 'A-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'B-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Jake Farrell'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Gemmer Sojan'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Green Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Prototype Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Keyan Farlander'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Nera Dantels'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dagger Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Chardaan Refit'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'A-Wing Test Pilot'
            type: 'title'
            count: 2
        }
        {
            name: 'Enhanced Scopes'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Proton Rockets'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'B-Wing/E2'
            type: 'modification'
            count: 2
        }
        {
            name: 'Kyle Katarn'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jan Ors'
            type: 'upgrade'
            count: 1
        }
    ]
    'Rebel Transport Expansion Pack': [
        {
            name: 'X-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'GR-75 Medium Transport'
            type: 'ship'
            count: 1
        }
        {
            name: 'GR-75 Medium Transport'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Wes Janson'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Jek Porkins'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Hobbie" Klivian'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Tarn Mison'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Rookie Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Dutyfree'
            type: 'title'
            count: 1
        }
        {
            name: 'Quantum Storm'
            type: 'title'
            count: 1
        }
        {
            name: 'Bright Hope'
            type: 'title'
            count: 1
        }
        {
            name: 'Expanded Cargo Hold'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-D6'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R4-D6'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Flechette Torpedoes'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'R3-A2'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'WED-15 Repair Droid'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Backup Shield Generator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Carlist Rieekan'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'EM Emitter'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Engine Booster'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R5-P9'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Comms Booster'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Frequency Jammer'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Shield Projector'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tibanna Gas Supplies'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Jan Dodonna'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Toryn Farr'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Slicer Tools'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Combat Retrofit'
            type: 'modification'
            count: 1
        }
    ]
    'Tantive IV Expansion Pack': [
        {
            name: 'CR90 Corvette (Fore)'
            type: 'ship'
            count: 1
        }
        {
            name: 'CR90 Corvette (Aft)'
            type: 'ship'
            count: 1
        }
        {
            name: 'CR90 Corvette (Fore)'
            type: 'pilot'
            count: 1
        }
        # {
        #     name: 'CR90 Corvette (Crippled Fore)'
        #     type: 'pilot'
        #     count: 1
        # }
        {
            name: 'CR90 Corvette (Aft)'
            type: 'pilot'
            count: 1
        }
        # {
        #     name: 'CR90 Corvette (Crippled Aft)'
        #     type: 'pilot'
        #     count: 1
        # }
        {
            name: "Jaina's Light"
            type: 'title'
            count: 1
        }
        {
            name: "Dodonna's Pride"
            type: 'title'
            count: 1
        }
        {
            name: 'Tantive IV'
            type: 'title'
            count: 1
        }
        {
            name: 'Backup Shield Generator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Han Solo'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'C-3PO'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Engine Booster'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Comms Booster'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Engineering Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Gunnery Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ionization Reactor'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Leia Organa'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'R2-D2 (Crew)'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Sensor Team'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Coordinator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Tibanna Gas Supplies'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Raymus Antilles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Quad Laser Cannons'
            type: 'upgrade'
            count: 3
        }
        {
            name: 'Single Turbolasers'
            type: 'upgrade'
            count: 3
        }
    ]
    'StarViper Expansion Pack': [
        {
            name: 'StarViper'
            type: 'ship'
            count: 1
        }
        {
            name: 'Prince Xizor'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Guri'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Sun Vigo'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Sun Enforcer'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Virago'
            type: 'title'
            count: 1
        }
        {
            name: 'Bodyguard'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Accuracy Corrector'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Inertial Dampeners'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Autothrusters'
            type: 'modification'
            count: 2
        }
        {
            name: 'Calculation'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Hull Upgrade'
            type: 'modification'
            count: 1
        }
    ]
    "M3-A Interceptor Expansion Pack": [
        {
            name: 'M3-A Interceptor'
            type: 'ship'
            count: 1
        }
        {
            name: 'Serissu'
            type: 'pilot'
            count: 1
        }
        {
            name: "Laetin A'shera"
            type: 'pilot'
            count: 1
        }
        {
            name: "Tansarii Point Veteran"
            type: 'pilot'
            count: 1
        }
        {
            name: "Cartel Spacer"
            type: 'pilot'
            count: 1
        }
        {
            name: '"Heavy Scyk" Interceptor'
            type: 'title'
            count: 1
            skipForSource: true # special :(
        }
        {
            name: '"Heavy Scyk" Interceptor (Cannon)'
            type: 'title'
            count: 0 # special :(
        }
        {
            name: '"Heavy Scyk" Interceptor (Missile)'
            type: 'title'
            count: 0 # special :(
        }
        {
            name: '"Heavy Scyk" Interceptor (Torpedo)'
            type: 'title'
            count: 0 # special :(
        }
        {
            name: 'Flechette Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: '"Mangler" Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stealth Device'
            type: 'modification'
            count: 1
        }
    ]
    "IG-2000 Expansion Pack": [
        {
            name: 'Aggressor'
            type: 'ship'
            count: 1
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
            name: 'IG-2000'
            type: 'title'
            count: 1
        }
        {
            name: 'Accuracy Corrector'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Autoblaster'
            type: 'upgrade'
            count: 1
        }
        {
            name: '"Mangler" Cannon'
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
            name: "Dead Man's Switch"
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Feedback Array'
            type: 'upgrade'
            count: 2
        }
        {
            name: '"Hot Shot" Blaster'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Inertial Dampeners'
            type: 'upgrade'
            count: 1
        }
    ]
    "Most Wanted Expansion Pack": [
        {
            name: 'Z-95 Headhunter'
            type: 'ship'
            count: 2
        }
        {
            name: 'Y-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: "N'Dru Suhlak"
            type: 'pilot'
            count: 1
        }
        {
            name: "Kaa'To Leeachos"
            type: 'pilot'
            count: 1
        }
        {
            name: "Black Sun Soldier"
            type: 'pilot'
            count: 2
        }
        {
            name: "Binayre Pirate"
            type: 'pilot'
            count: 2
        }
        {
            name: "Kavil"
            type: 'pilot'
            count: 1
        }
        {
            name: "Drea Renthal"
            type: 'pilot'
            count: 1
        }
        {
            name: "Hired Gun"
            type: 'pilot'
            count: 2
        }
        {
            name: "Syndicate Thug"
            type: 'pilot'
            count: 2
        }
        {
            name: "Boba Fett (Scum)"
            type: 'pilot'
            count: 1
        }
        {
            name: "Kath Scarlet (Scum)"
            type: 'pilot'
            count: 1
        }
        {
            name: "Emon Azzameen"
            type: 'pilot'
            count: 1
        }
        {
            name: "Mandalorian Mercenary"
            type: 'pilot'
            count: 1
        }
        {
            name: "Dace Bonearm"
            type: 'pilot'
            count: 1
        }
        {
            name: "Palob Godalhi"
            type: 'pilot'
            count: 1
        }
        {
            name: "Torkil Mux"
            type: 'pilot'
            count: 1
        }
        {
            name: "Spice Runner"
            type: 'pilot'
            count: 1
        }
        {
            name: "Greedo"
            type: 'upgrade'
            count: 1
        }
        {
            name: "K4 Security Droid"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Outlaw Tech"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Autoblaster Turret"
            type: 'upgrade'
            count: 2
        }
        {
            name: "Bomb Loadout"
            type: 'upgrade'
            count: 2
        }
        {
            name: "R4-B11"
            type: 'upgrade'
            count: 1
        }
        {
            name: '"Genius"'
            type: 'upgrade'
            count: 1
        }
        {
            name: "R4 Agromech"
            type: 'upgrade'
            count: 2
        }
        {
            name: "Salvaged Astromech"
            type: 'upgrade'
            count: 2
        }
        {
            name: "Unhinged Astromech"
            type: 'upgrade'
            count: 2
        }
        {
            name: "BTL-A4 Y-Wing"
            type: 'title'
            count: 2
        }
        {
            name: "Andrasta"
            type: 'title'
            count: 1
        }
        {
            name: '"Hot Shot" Blaster'
            type: 'upgrade'
            count: 1
        }
    ]
    "Hound's Tooth Expansion Pack": [
        {
            name: 'YV-666'
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
            name: 'Lone Wolf'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Stay On Target'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Heavy Laser Cannon'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bossk'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'K4 Security Droid'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Outlaw Tech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Glitterstim'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Engine Upgrade'
            type: 'modification'
            count: 1
        }
        {
            name: 'Ion Projector'
            type: 'modification'
            count: 2
        }
        {
            name: 'Maneuvering Fins'
            type: 'modification'
            count: 1
        }
        {
            name: "Hound's Tooth"
            type: 'title'
            count: 1
        }
    ]
    'Kihraxz Fighter Expansion Pack': [
        {
            name: 'Kihraxz Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: 'Talonbane Cobra'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Graz the Hunter'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Black Sun Ace'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cartel Marauder'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Crack Shot'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Lightning Reflexes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Predator'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Glitterstim'
            type: 'upgrade'
            count: 1
        }
    ]
    'K-Wing Expansion Pack': [
        {
            name: 'K-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Miranda Doni'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Esege Tuketu'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Guardian Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Warden Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Twin Laser Turret'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Bombardier'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Conner Net'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Extra Munitions'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced SLAM'
            type: 'modification'
            count: 1
        }
    ]
    'TIE Punisher Expansion Pack': [
        {
            name: 'TIE Punisher'
            type: 'ship'
            count: 1
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
            name: 'Black Eight Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cutlass Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Enhanced Scopes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Extra Munitions'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Flechette Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Plasma Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Advanced Homing Missiles'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Mines'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ion Bombs'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Twin Ion Engine Mk. II'
            type: 'modification'
            count: 2
        }
    ]
    "Imperial Raider Expansion Pack": [
        {
            name: "Raider-class Corvette (Fore)"
            type: 'ship'
            count: 1
        }
        {
            name: "Raider-class Corvette (Aft)"
            type: 'ship'
            count: 1
        }
        {
            name: "TIE Advanced"
            type: 'ship'
            count: 1
        }
        {
            name: "Raider-class Corvette (Fore)"
            type: 'pilot'
            count: 1
        }
        {
            name: "Raider-class Corvette (Aft)"
            type: 'pilot'
            count: 1
        }
        {
            name: "Juno Eclipse"
            type: 'pilot'
            count: 1
        }
        {
            name: "Zertik Strom"
            type: 'pilot'
            count: 1
        }
        {
            name: "Commander Alozen"
            type: 'pilot'
            count: 1
        }
        {
            name: "Lieutenant Colzet"
            type: 'pilot'
            count: 1
        }
        {
            name: "Storm Squadron Pilot"
            type: 'pilot'
            count: 1
        }
        {
            name: "Tempest Squadron Pilot"
            type: 'pilot'
            count: 1
        }
        {
            name: "Advanced Targeting Computer"
            type: 'upgrade'
            count: 4
        }
        {
            name: "TIE/x1"
            type: 'title'
            count: 4
        }
        {
            name: "Cluster Missiles"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Proton Rockets"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Captain Needa"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Grand Moff Tarkin"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Emperor Palpatine"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Admiral Ozzel"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Shield Technician"
            type: 'upgrade'
            count: 2
        }
        {
            name: "Gunnery Team"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Engineering Team"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Sensor Team"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Single Turbolasers"
            type: 'upgrade'
            count: 2
        }
        {
            name: "Ion Cannon Battery"
            type: 'upgrade'
            count: 4
        }
        {
            name: "Quad Laser Cannons"
            type: 'upgrade'
            count: 2
        }
        {
            name: "Tibanna Gas Supplies"
            type: 'upgrade'
            count: 2
        }
        {
            name: "Engine Booster"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Backup Shield Generator"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Comms Booster"
            type: 'upgrade'
            count: 1
        }
        {
            name: "Assailer"
            type: 'title'
            count: 1
        }
        {
            name: "Instigator"
            type: 'title'
            count: 1
        }
        {
            name: "Impetuous"
            type: 'title'
            count: 1
        }
    ]
    'The Force Awakens Core Set': [
        {
            name: 'T-70 X-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'TIE/fo Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'Poe Dameron'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Blue Ace"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Novice'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Omega Ace"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Epsilon Leader"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Zeta Ace"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Omega Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Zeta Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Epsilon Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Wired'
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
            name: 'Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Weapons Guidance'
            type: 'upgrade'
            count: 1
        }
    ]
    'Imperial Assault Carrier Expansion Pack': [
        {
            name: 'TIE Fighter'
            type: 'ship'
            count: 2
        }
        {
            name: 'Gozanti-class Cruiser'
            type: 'ship'
            count: 1
        }
        {
            name: 'Gozanti-class Cruiser'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Scourge"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Wampa"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Youngster"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Chaser"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Academy Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Black Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Obsidian Squadron Pilot'
            type: 'pilot'
            count: 2
        }
        {
            name: 'Marksmanship'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Expert Handling'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Expose'
            type: 'upgrade'
            count: 1
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
            name: 'Dual Laser Turret'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Broadcast Array'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Construction Droid'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Agent Kallus'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Rear Admiral Chiraneau'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Ordnance Experts'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Docking Clamps'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Cluster Bombs'
            type: 'upgrade'
            count: 2
        }
        {
            name: 'Automated Protocols'
            type: 'modification'
            count: 3
        }
        {
            name: 'Optimized Generators'
            type: 'modification'
            count: 3
        }
        {
            name: 'Ordnance Tubes'
            type: 'modification'
            count: 3
        }
        {
            name: 'Requiem'
            type: 'title'
            count: 1
        }
        {
            name: 'Vector'
            type: 'title'
            count: 1
        }
        {
            name: 'Suppressor'
            type: 'title'
            count: 1
        }
    ]
    'T-70 X-Wing Expansion Pack': [
        {
            name: 'T-70 X-Wing'
            type: 'ship'
            count: 1
        }
        {
            name: 'Ello Asty'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Red Ace"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Red Squadron Veteran'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Blue Squadron Novice'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Cool Hand'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Targeting Astromech'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Weapons Guidance'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Integrated Astromech'
            type: 'modification'
            count: 1
        }
        {
            name: 'Advanced Proton Torpedoes'
            type: 'upgrade'
            count: 1
        }
    ]
    'TIE/fo Fighter Expansion Pack': [
        {
            name: 'TIE/fo Fighter'
            type: 'ship'
            count: 1
        }
        {
            name: '"Omega Leader"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Zeta Leader"'
            type: 'pilot'
            count: 1
        }
        {
            name: '"Epsilon Ace"'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Omega Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Zeta Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Epsilon Squadron Pilot'
            type: 'pilot'
            count: 1
        }
        {
            name: 'Juke'
            type: 'upgrade'
            count: 1
        }
        {
            name: 'Comm Relay'
            type: 'upgrade'
            count: 1
        }
    ]


class exportObj.Collection
    # collection = new exportObj.Collection
    #   expansions:
    #     "Core": 2
    #     "TIE Fighter Expansion Pack": 4
    #     "B-Wing Expansion Pack": 2
    #   singletons:
    #     ship:
    #       "T-70 X-Wing": 1
    #     pilot:
    #       "Academy Pilot": 16
    #     upgrade:
    #       "C-3PO": 4
    #       "Gunner": 5
    #     modification:
    #       "Engine Upgrade": 2
    #     title:
    #       "TIE/x1": 1
    #
    # # or
    #
    # collection = exportObj.Collection.load(backend)
    #
    # collection.use "pilot", "Red Squadron Pilot"
    # collection.use "upgrade", "R2-D2"
    # collection.use "upgrade", "Ion Pulse Missiles" # returns false
    #
    # collection.release "pilot", "Red Squadron Pilot"
    # collection.release "pilot", "Sigma Squadron Pilot" # returns false

    constructor: (args) ->
        @expansions = args.expansions ? {}
        @singletons = args.singletons ? {}
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
                for _ in [0...count]
                    ((@shelf[type] ?= {})[name] ?= []).push 'singleton'

        @counts = {}
        for own type of @shelf
            for own thing of @shelf[type]
                (@counts[type] ?= {})[thing] ?= 0
                @counts[type][thing] += @shelf[type][thing].length

        component_content = $ @modal.find('.collection-inventory-content')
        component_content.text ''
        for own type, things of @counts
            contents = component_content.append $.trim """
                <div class="row-fluid">
                    <div class="span12"><h5>#{type.capitalize()}</h5></div>
                </div>
                <div class="row-fluid">
                    <ul id="counts-#{type}" class="span12"></ul>
                </div>
            """
            ul = $ contents.find("ul#counts-#{type}")
            for thing in Object.keys(things).sort(sortWithoutQuotes)
                ul.append """<li>#{thing} - #{things[thing]}</li>"""

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
            sorted_names = (name for name of names).sort(sortWithoutQuotes)
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
                    <li><a data-target="#collection-modifications" data-toggle="tab">Mods</a><li>
                    <li><a data-target="#collection-titles" data-toggle="tab">Titles</a><li>
                    <li><a data-target="#collection-components" data-toggle="tab">Inventory</a><li>
                </ul>
                <div class="tab-content">
                    <div id="collection-expansions" class="tab-pane active container-fluid collection-content"></div>
                    <div id="collection-ships" class="tab-pane active container-fluid collection-ship-content"></div>
                    <div id="collection-pilots" class="tab-pane active container-fluid collection-pilot-content"></div>
                    <div id="collection-upgrades" class="tab-pane active container-fluid collection-upgrade-content"></div>
                    <div id="collection-modifications" class="tab-pane active container-fluid collection-modification-content"></div>
                    <div id="collection-titles" class="tab-pane active container-fluid collection-title-content"></div>
                    <div id="collection-components" class="tab-pane container-fluid collection-inventory-content"></div>
                </div>
            </div>
            <div class="modal-footer hidden-print">
                <span class="collection-status"></span>
                &nbsp;
                <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
            </div>
        """
        @modal_status = $ @modal.find('.collection-status')

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
            $(row).find('.expansion-name').data 'english_name', expansion
            collection_content.append row

        shipcollection_content = $ @modal.find('.collection-ship-content')
        for ship in singletonsByType.ship
            count = parseInt(@singletons.ship?[ship] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="ship-name">#{ship}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'ship'
            input.data 'singletonName', ship
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.ship-name').data 'english_name', expansion
            shipcollection_content.append row

        pilotcollection_content = $ @modal.find('.collection-pilot-content')
        for pilot in singletonsByType.pilot
            count = parseInt(@singletons.pilot?[pilot] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="pilot-name">#{pilot}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'pilot'
            input.data 'singletonName', pilot
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.pilot-name').data 'english_name', expansion
            pilotcollection_content.append row

        upgradecollection_content = $ @modal.find('.collection-upgrade-content')
        for upgrade in singletonsByType.upgrade
            count = parseInt(@singletons.upgrade?[upgrade] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="upgrade-name">#{upgrade}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'upgrade'
            input.data 'singletonName', upgrade
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.upgrade-name').data 'english_name', expansion
            upgradecollection_content.append row

        modificationcollection_content = $ @modal.find('.collection-modification-content')
        for modification in singletonsByType.modification
            count = parseInt(@singletons.modification?[modification] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="modification-name">#{modification}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'modification'
            input.data 'singletonName', modification
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.modification-name').data 'english_name', expansion
            modificationcollection_content.append row

        titlecollection_content = $ @modal.find('.collection-title-content')
        for title in singletonsByType.title
            count = parseInt(@singletons.title?[title] ? 0)
            row = $.parseHTML $.trim """
                <div class="row-fluid">
                    <div class="span12">
                        <label>
                            <input class="singleton-count" type="number" size="3" value="#{count}" />
                            <span class="title-name">#{title}</span>
                        </label>
                    </div>
                </div>
            """
            input = $ $(row).find('input')
            input.data 'singletonType', 'title'
            input.data 'singletonName', title
            input.closest('div').css 'background-color', @countToBackgroundColor(input.val())
            $(row).find('.title-name').data 'english_name', expansion
            titlecollection_content.append row

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
                @modal_status.fadeOut 5000
        .on 'xwing:languageChanged', @onLanguageChange

        $ @modal.find('input.expansion-count').change (e) =>
            target = $(e.target)
            val = target.val()
            target.val(0) if val < 0 or isNaN(parseInt(val))
            @expansions[target.data 'expansion'] = parseInt(target.val())

            target.closest('div').css 'background-color', @countToBackgroundColor(val)

            # console.log "Input changed, triggering collection change"
            $(exportObj).trigger 'xwing-collection:changed', this

        $ @modal.find('input.singleton-count').change (e) =>
            target = $(e.target)
            val = target.val()
            target.val(0) if val < 0 or isNaN(parseInt(val))
            (@singletons[target.data 'singletonType'] ?= {})[target.data 'singletonName'] = parseInt(target.val())

            target.closest('div').css 'background-color', @countToBackgroundColor(val)

            # console.log "Input changed, triggering collection change"
            $(exportObj).trigger 'xwing-collection:changed', this

    countToBackgroundColor: (count) ->
        count = parseInt(count)
        switch
            when count == 0
                ''
            when count < 12
                i = parseInt(200 * Math.pow(0.9, count - 1))
                "rgb(#{i}, 255, #{i})"
            else
                'red'

    onLanguageChange:
        (e, language) =>
            if language != @language
                # console.log "language changed to #{language}"
                do (language) =>
                    @modal.find('.expansion-name').each ->
                        # console.log "translating #{$(this).text()} (#{$(this).data('english_name')}) to #{language}"
                        $(this).text exportObj.translate language, 'sources', $(this).data('english_name')
                @language = language
