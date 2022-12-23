# This must be loaded before any of the card language modules!
exportObj = exports ? this

# Returns an independent copy of the data which can be modified by translation
# modules.
exportObj.basicQuickBuilds = ->
    quickbuildsById: [
        {
            id: 0
            faction: "Galactic Empire"
            pilot: "Valen Rudor"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Shield Upgrade"
            ]
        }
        {
            id: 1
            faction: "Galactic Empire"
            pilot: "Black Squadron Ace"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 2
            faction: "Galactic Empire"
            pilot: "Academy Pilot"
            ship: "TIE/ln Fighter"
            threat: 1
        }
        {
            id: 3
            faction: "Galactic Empire"
            pilot: "Iden Versio"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Shield Upgrade"
            ]
        }
        {
            id: 4
            faction: "Galactic Empire"
            pilot: '"Night Beast"'
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Predator"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 5
            faction: "Galactic Empire"
            pilot: "Obsidian Squadron Pilot"
            ship: "TIE/ln Fighter"
            threat: 1
        }
        {
            id: 6
            faction: "Galactic Empire"
            pilot: '"Scourge" Skutu'
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Predator"
                "Shield Upgrade"
            ]
        }
        {
            id: 7
            faction: "Galactic Empire"
            pilot: '"Wampa"'
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Hull Upgrade"
                "Stealth Device"
            ]
        }
        {
            id: 8
            faction: "Galactic Empire"
            pilot: "Black Squadron Ace"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 9
            faction: "Galactic Empire"
            pilot: "Gideon Hask"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Shield Upgrade"
            ]
        }
        {
            id: 10
            faction: "Galactic Empire"
            pilot: "Del Meeko"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Juke"
                "Stealth Device"
            ]
        }
        {
            id: 11
            faction: "Galactic Empire"
            pilot: "Obsidian Squadron Pilot"
            ship: "TIE/ln Fighter"
            threat: 1
            skip: true
        }
        {
            id: 12
            faction: "Galactic Empire"
            pilot: '"Howlrunner"'
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Juke"
                "Shield Upgrade"
            ]
        }
        {
            id: 13
            faction: "Galactic Empire"
            pilot: "Seyn Marana"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Marksmanship"
                "Afterburners"
            ]
        }
        {
            id: 14
            faction: "Galactic Empire"
            pilot: "Black Squadron Ace"
            suffix: " (x2)"
            linkedId: 14
            ship: "TIE/ln Fighter"
            threat: 3
            upgrades: [
                "Juke"
                "Stealth Device"
            ]
        }
        {
            id: 15
            faction: "Galactic Empire"
            pilot: "Obsidian Squadron Pilot"
            suffix: " (x2)"
            linkedId: 15
            ship: "TIE/ln Fighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Shield Upgrade"
            ]
        }
        {
            id: 16
            faction: "Galactic Empire"
            pilot: "Academy Pilot"
            suffix: " (x2)"
            linkedId: 16
            ship: "TIE/ln Fighter"
            threat: 2
        }
        {
            id: 17
            faction: "Galactic Empire"
            pilot: "Academy Pilot"
            ship: "TIE/ln Fighter"
            threat: 1
            skip: true
        }
        {
            id: 18
            faction: "Galactic Empire"
            pilot: "Darth Vader"
            ship: "TIE Advanced x1"
            threat: 4
            upgrades: [
                "Supernatural Reflexes"
                "Fire-Control System"
                "Afterburners"
                "Shield Upgrade"
                "Cluster Missiles"
            ]
        }
        {
            id: 19
            faction: "Galactic Empire"
            pilot: "Maarek Stele"
            ship: "TIE Advanced x1"
            threat: 3
            upgrades: [
                "Ruthless"
                "Fire-Control System"
                "Cluster Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 20
            faction: "Galactic Empire"
            pilot: "Storm Squadron Ace"
            ship: "TIE Advanced x1"
            threat: 2
            upgrades: [
                "Fire-Control System"
            ]
        }
        {
            id: 21
            faction: "Galactic Empire"
            pilot: "Ved Foslo"
            ship: "TIE Advanced x1"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Fire-Control System"
                "Cluster Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 22
            faction: "Galactic Empire"
            pilot: "Zertik Strom"
            ship: "TIE Advanced x1"
            threat: 3
            upgrades: [
                "Squad Leader"
                "Fire-Control System"
                "Cluster Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 23
            faction: "Galactic Empire"
            pilot: "Tempest Squadron Pilot"
            ship: "TIE Advanced x1"
            threat: 2
            upgrades: [
                "Cluster Missiles"
            ]
        }
        {
            id: 24
            faction: "Galactic Empire"
            pilot: "Colonel Jendon"
            ship: "Lambda-class T-4a Shuttle"
            threat: 3
            upgrades: [
                "Collision Detector"
                "Ion Cannon"
                "Darth Vader"
                "Freelance Slicer"
                "ST-321"
            ]
        }
        {
            id: 25
            faction: "Galactic Empire"
            pilot: "Captain Kagi"
            ship: "Lambda-class T-4a Shuttle"
            threat: 3
            upgrades: [
                "Collision Detector"
                "Tractor Beam"
                "Emperor Palpatine"
                "Shield Upgrade"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 26
            faction: "Galactic Empire"
            pilot: "Lieutenant Sai"
            ship: "Lambda-class T-4a Shuttle"
            threat: 3
            upgrades: [
                "Ciena Ree"
                'GNK "Gonk" Droid'
                "Advanced Sensors"
                "Jamming Beam"
            ]
        }
        {
            id: 27
            faction: "Galactic Empire"
            pilot: "Omicron Group Pilot"
            ship: "Lambda-class T-4a Shuttle"
            threat: 2
            upgrades: [
                "Admiral Sloane"
                "Jamming Beam"
            ]
        }
        {
            id: 28
            faction: "Galactic Empire"
            pilot: "Lieutenant Kestal"
            ship: "TIE/ag Aggressor"
            threat: 2
            upgrades: [
                "Elusive"
                "Barrage Rockets"
                "Shield Upgrade"
            ]
        }
        {
            id: 29
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Scout"
            ship: "TIE/ag Aggressor"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Dorsal Turret"
                "Proton Rockets"
            ]
        }
        {
            id: 30
            faction: "Galactic Empire"
            pilot: '"Double Edge"'
            ship: "TIE/ag Aggressor"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Concussion Missiles"
                "Hotshot Gunner"
            ]
        }
        {
            id: 31
            faction: "Galactic Empire"
            pilot: "Sienar Specialist"
            ship: "TIE/ag Aggressor"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Homing Missiles"
                "Veteran Turret Gunner"
                "Hull Upgrade"
            ]
        }
        {
            id: 32
            faction: "Galactic Empire"
            pilot: '"Whisper"'
            ship: "TIE/ph Phantom"
            threat: 3
            upgrades: [
                "Juke"
                "Advanced Sensors"
                "Agent Kallus"
                "Stealth Device"
            ]
        }
        {
            id: 33
            faction: "Galactic Empire"
            pilot: "Sigma Squadron Ace"
            ship: "TIE/ph Phantom"
            threat: 3
            upgrades: [
                "Predator"
                "Advanced Sensors"
                "Grand Inquisitor"
            ]
        }
        {
            id: 34
            faction: "Galactic Empire"
            pilot: '"Echo"'
            ship: "TIE/ph Phantom"
            threat: 3
            upgrades: [
                "Lone Wolf"
                "Collision Detector"
                "Perceptive Copilot"
                "Stealth Device"
            ]
        }
        {
            id: 35
            faction: "Galactic Empire"
            pilot: "Imdaar Test Pilot"
            ship: "TIE/ph Phantom"
            threat: 2
            upgrades: [
                "Moff Jerjerrod"
            ]
        }
        {
            id: 36
            faction: "Galactic Empire"
            pilot: '"Duchess"'
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Trick Shot"
                "Shield Upgrade"
            ]
        }
        {
            id: 37
            faction: "Galactic Empire"
            pilot: "Black Squadron Scout"
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Skilled Bombardier"
                "Proximity Mines"
                "Hull Upgrade"
            ]
        }
        {
            id: 38
            faction: "Galactic Empire"
            pilot: '"Countdown"'
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Shield Upgrade"
            ]
        }
        {
            id: 39
            faction: "Galactic Empire"
            pilot: "Planetary Sentinel"
            suffix: " x2"
            linkedId: 39
            ship: "TIE/sk Striker"
            threat: 3
            upgrades: [
                "Conner Nets"
            ]
        }
        {
            id: 40
            faction: "Galactic Empire"
            pilot: '"Pure Sabacc"'
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Stealth Device"
            ]
        }
        {
            id: 41
            faction: "Galactic Empire"
            pilot: "Black Squadron Scout"
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Skilled Bombardier"
                "Proximity Mines"
                "Hull Upgrade"
            ]
            skip: true
        }
        {
            id: 42
            faction: "Galactic Empire"
            pilot: "Countess Ryad"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Afterburners"
            ]
        }
        {
            id: 43
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Ace"
            ship: "TIE/d Defender"
            threat: 3
        }
        {
            id: 44
            faction: "Galactic Empire"
            pilot: "Rexler Brath"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Juke"
                "Collision Detector"
                "Cluster Missiles"
            ]
        }
        {
            id: 45
            faction: "Galactic Empire"
            pilot: "Colonel Vessery"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Juke"
                "Fire-Control System"
                "Cluster Missiles"
            ]
        }
        {
            id: 46
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Ace"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Elusive"
                "Advanced Sensors"
                "Proton Rockets"
            ]
        }
        {
            id: 47
            faction: "Galactic Empire"
            pilot: "Tomax Bren"
            ship: "TIE/sa Bomber"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Proton Torpedoes"
                "Proton Bombs"
            ]
        }
        {
            id: 48
            faction: "Galactic Empire"
            pilot: '"Deathfire"'
            ship: "TIE/sa Bomber"
            threat: 2
            upgrades: [
                "Cluster Missiles"
                "Skilled Bombardier"
                "Seismic Charges"
                "Proximity Mines"
                "Electronic Baffle"
            ]
        }
        {
            id: 49
            faction: "Galactic Empire"
            pilot: "Major Rhymer"
            ship: "TIE/sa Bomber"
            threat: 2
            upgrades: [
                "Intimidation"
                "Adv. Proton Torpedoes"
                "Cluster Missiles"
            ]
        }
        {
            id: 50
            faction: "Galactic Empire"
            pilot: "Scimitar Squadron Pilot"
            suffix: " x2"
            linkedId: 50
            ship: "TIE/sa Bomber"
            threat: 3
            upgrades: [
                "Ion Missiles"
                "Proton Bombs"
            ]
        }
        {
            id: 51
            faction: "Galactic Empire"
            pilot: "Captain Jonus"
            ship: "TIE/sa Bomber"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Shield Upgrade"
            ]
        }
        {
            id: 52
            faction: "Galactic Empire"
            pilot: "Gamma Squadron Ace"
            ship: "TIE/sa Bomber"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Skilled Bombardier"
                "Bomblet Generator"
                "Shield Upgrade"
            ]
        }
        {
            id: 53
            faction: "Galactic Empire"
            pilot: "Grand Inquisitor"
            ship: "TIE Advanced v1"
            threat: 3
            upgrades: [
                "Supernatural Reflexes"
                "Concussion Missiles"
            ]
        }
        {
            id: 54
            faction: "Galactic Empire"
            pilot: "Inquisitor"
            ship: "TIE Advanced v1"
            threat: 2
            upgrades: [
                "Instinctive Aim"
                "Cluster Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            id: 55
            faction: "Galactic Empire"
            pilot: "Seventh Sister"
            ship: "TIE Advanced v1"
            threat: 2
            upgrades: [
                "Homing Missiles"
            ]
        }
        {
            id: 56
            faction: "Galactic Empire"
            pilot: "Baron of the Empire"
            ship: "TIE Advanced v1"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Proton Rockets"
                "Stealth Device"
            ]
        }
        {
            id: 57
            faction: "Galactic Empire"
            pilot: "Soontir Fel"
            ship: "TIE/in Interceptor"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Stealth Device"
            ]
        }
        {
            id: 58
            faction: "Galactic Empire"
            pilot: "Alpha Squadron Pilot"
            suffix: " x2"
            linkedId: 58
            ship: "TIE/in Interceptor"
            threat: 3
            upgrades: [
                "Ablative Plating"
            ]
        }
        {
            id: 59
            faction: "Galactic Empire"
            pilot: "Turr Phennir"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Daredevil"
                "Electronic Baffle"
            ]
        }
        {
            id: 60
            faction: "Galactic Empire"
            pilot: "Saber Squadron Ace"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Predator"
                "Stealth Device"
            ]
        }
        {
            id: 61
            faction: "Galactic Empire"
            pilot: "Lieutenant Karsabi"
            ship: "Alpha-Class Star Wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Heavy Laser Cannon"
                "Advanced SLAM"
                "Xg-1 Assault Configuration"
            ]
        }
        {
            id: 62
            faction: "Galactic Empire"
            pilot: "Nu Squadron Pilot"
            ship: "Alpha-Class Star Wing"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Proton Torpedoes"
                "Advanced SLAM"
                "Os-1 Arsenal Loadout"
            ]
        }
        {
            id: 63
            faction: "Galactic Empire"
            pilot: "Major Vynder"
            ship: "Alpha-Class Star Wing"
            threat: 2
            upgrades: [
                "Saturation Salvo"
                "Barrage Rockets"
                "Advanced SLAM"
                "Os-1 Arsenal Loadout"
            ]
        }
        {
            id: 64
            faction: "Galactic Empire"
            pilot: "Rho Squadron Pilot"
            ship: "Alpha-Class Star Wing"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Ion Cannon"
                "Homing Missiles"
                "Advanced SLAM"
                "Xg-1 Assault Configuration"
            ]
        }
        {
            id: 65
            faction: "Galactic Empire"
            pilot: '"Deathrain"'
            ship: "TIE/ca Punisher"
            threat: 2
            upgrades: [
                "Trajectory Simulator"
                "Homing Missiles"
                "Bomblet Generator"
                "Ablative Plating"
            ]
        }
        {
            id: 66
            skip: true
            faction: "Galactic Empire"
            pilot: '"Deathrain"'
            ship: "TIE/ca Punisher"
            threat: 2
            upgrades: [
                "Trajectory Simulator"
                "Homing Missiles"
                "Bomblet Generator"
                "Ablative Plating"
            ]
        }
        {
            id: 67
            faction: "Galactic Empire"
            pilot: "Cutlass Squadron Pilot"
            ship: "TIE/ca Punisher"
            threat: 2
            upgrades: [
                "Trajectory Simulator"
                "Ion Missiles"
                "Skilled Bombardier"
                "Proton Bombs"
            ]
        }
        {
            id: 68
            faction: "Galactic Empire"
            pilot: '"Redline"'
            ship: "TIE/ca Punisher"
            threat: 2
            upgrades: [
                "Debris Gambit"
                "Cluster Missiles"
            ]
        }
        {
            id: 69
            faction: "Galactic Empire"
            pilot: "Cutlass Squadron Pilot"
            ship: "TIE/ca Punisher"
            threat: 2
            upgrades: [
                "Advanced Sensors"
                "Proton Rockets"
                "Conner Nets"
            ]
        }
        {
            id: 70
            faction: "Galactic Empire"
            pilot: "Captain Oicunn"
            ship: "VT-49 Decimator"
            threat: 4
            upgrades: [
                "Intimidation"
                "Grand Moff Tarkin"
                "Dauntless"
            ]
        }
        {
            id: 71
            faction: "Galactic Empire"
            pilot: "Rear Admiral Chiraneau"
            ship: "VT-49 Decimator"
            threat: 4
            upgrades: [
                "Swarm Tactics"
                "Minister Tua"
                "Tactical Officer"
            ]
        }
        {
            id: 72
            faction: "Galactic Empire"
            pilot: "Patrol Leader"
            ship: "VT-49 Decimator"
            threat: 4
            upgrades: [
                "Informant"
                "Seventh Sister"
                "Fifth Brother"
            ]
        }
        {
            id: 73
            faction: "Galactic Empire"
            pilot: '"Vizier"'
            ship: "TIE Reaper"
            threat: 2
            upgrades: [
                "Director Krennic"
            ]
        }
        {
            id: 74
            faction: "Galactic Empire"
            pilot: "Scarif Base Pilot"
            ship: "TIE Reaper"
            threat: 2
            upgrades: [
                "Death Troopers"
                "Shield Upgrade"
            ]
        }
        {
            id: 75
            faction: "Galactic Empire"
            pilot: "Major Vermeil"
            ship: "TIE Reaper"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "Tactical Officer"
            ]
        }
        {
            id: 76
            faction: "Galactic Empire"
            pilot: "Captain Feroph"
            ship: "TIE Reaper"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "ISB Slicer"
            ]
        }
        {
            id: 77
            faction: "Rebel Alliance"
            pilot: "Luke Skywalker"
            ship: "T-65 X-wing"
            threat: 3
            upgrades: [
                "Instinctive Aim"
                "Proton Torpedoes"
                "R2-D2"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 78
            faction: "Rebel Alliance"
            pilot: "Red Squadron Veteran"
            ship: "T-65 X-wing"
            threat: 2
            upgrades: [
                "Predator"
                "R5 Astromech"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 79
            faction: "Rebel Alliance"
            pilot: "Jek Porkins"
            ship: "T-65 X-wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "R5-D8"
                "Afterburners"
                "Hull Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 80
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Escort"
            ship: "T-65 X-wing"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "R3 Astromech"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 81
            faction: "Rebel Alliance"
            pilot: "Wedge Antilles"
            ship: "T-65 X-wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Proton Torpedoes"
                "R4 Astromech"
                "Shield Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 82
            faction: "Rebel Alliance"
            pilot: "Biggs Darklighter"
            ship: "T-65 X-wing"
            threat: 2
            upgrades: [
                "Selfless"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 83
            faction: "Rebel Alliance"
            pilot: "Thane Kyrell"
            ship: "T-65 X-wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Ion Torpedoes"
                "R2 Astromech"
                "Afterburners"
                "Hull Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 84
            faction: "Rebel Alliance"
            pilot: "Garven Dreis (X-Wing)"
            ship: "T-65 X-wing"
            threat: 2
            upgrades: [
                "Servomotor S-Foils"
            ]
        }
        {
            id: 85
            faction: "Rebel Alliance"
            pilot: "Norra Wexley (Y-Wing)"
            ship: "BTL-A4 Y-wing"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Ion Cannon Turret"
                "Veteran Turret Gunner"
                "R3 Astromech"
            ]
        }
        {
            id: 86
            faction: "Rebel Alliance"
            pilot: "Evaan Verlaine"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Ion Cannon Turret"
            ]
        }
        {
            id: 87
            faction: "Rebel Alliance"
            pilot: "Gold Squadron Veteran"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "R3 Astromech"
            ]
        }
        {
            id: 88
            faction: "Rebel Alliance"
            pilot: "Horton Salm"
            ship: "BTL-A4 Y-wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Ion Cannon Turret"
                "Veteran Turret Gunner"
                "R5 Astromech"
            ]
        }
        {
            id: 89
            faction: "Rebel Alliance"
            pilot: '"Dutch" Vander'
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "R3 Astromech"
            ]
        }
        {
            id: 90
            faction: "Rebel Alliance"
            pilot: "Gray Squadron Bomber"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Proton Bombs"
                "R5 Astromech"
            ]
        }
        {
            id: 91
            faction: "Rebel Alliance"
            pilot: "Esege Tuketu"
            ship: "BTL-S8 K-wing"
            threat: 3
            upgrades: [
                "Trajectory Simulator"
                "Ion Missiles"
                "Perceptive Copilot"
                "Conner Nets"
                "Proton Bombs"
                "Advanced SLAM"
            ]
        }
        {
            id: 92
            faction: "Rebel Alliance"
            pilot: "Miranda Doni"
            ship: "BTL-S8 K-wing"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "Advanced SLAM"
            ]
        }
        {
            id: 93
            faction: "Rebel Alliance"
            pilot: "Warden Squadron Pilot"
            ship: "BTL-S8 K-wing"
            threat: 2
            upgrades: [
                "Barrage Rockets"
                "Bomblet Generator"
            ]
        }
        {
            id: 94
            faction: "Rebel Alliance"
            pilot: "Braylen Stramm"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Trick Shot"
                "Jamming Beam"
            ]
        }
        {
            id: 95
            faction: "Rebel Alliance"
            pilot: "Blade Squadron Veteran"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Tractor Beam"
            ]
        }
        {
            id: 96
            faction: "Rebel Alliance"
            pilot: "Ten Numb"
            ship: "A/SF-01 B-wing"
            threat: 3
            upgrades: [
                "Squad Leader"
                "Advanced Sensors"
                "Heavy Laser Cannon"
                "Shield Upgrade"
            ]
        }
        {
            id: 97
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Pilot"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Advanced Sensors"
            ]
        }
        {
            id: 98
            faction: "Rebel Alliance"
            pilot: "Norra Wexley"
            ship: "ARC-170 Starfighter"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Seasoned Navigator"
                "Veteran Tail Gunner"
                "R3 Astromech"
                "Ablative Plating"
                "Hull Upgrade"
            ]
        }
        {
            id: 99
            faction: "Rebel Alliance"
            pilot: "Garven Dreis"
            ship: "ARC-170 Starfighter"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "Perceptive Copilot"
                "Veteran Tail Gunner"
            ]
        }
        {
            id: 100
            faction: "Rebel Alliance"
            pilot: "Shara Bey"
            ship: "ARC-170 Starfighter"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "Perceptive Copilot"
                "R3 Astromech"
            ]
        }
        {
            id: 101
            faction: "Rebel Alliance"
            pilot: "Ibtisam"
            ship: "ARC-170 Starfighter"
            threat: 2
            upgrades: [
                "Elusive"
            ]
        }
        {
            id: 102
            faction: "Rebel Alliance"
            pilot: "Wullffwarro"
            ship: "Auzituck Gunship"
            threat: 3
            upgrades: [
                "Selfless"
                'GNK "Gonk" Droid'
                "Novice Technician"
                "Hull Upgrade"
            ]
        }
        {
            id: 103
            faction: "Rebel Alliance"
            pilot: "Lowhhrick"
            ship: "Auzituck Gunship"
            threat: 2
        }
        {
            id: 104
            faction: "Rebel Alliance"
            pilot: "Kashyyyk Defender"
            ship: "Auzituck Gunship"
            threat: 2
            upgrades: [
                "Novice Technician"
            ]
        }
        {
            id: 105
            skip: true
        }
        {
            id: 106
            faction: "Rebel Alliance"
            pilot: "Corran Horn"
            ship: "E-wing"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Fire-Control System"
                "Proton Torpedoes"
                "R2 Astromech"
                "Afterburners"
            ]
        }
        {
            id: 107
            faction: "Rebel Alliance"
            pilot: "Rogue Squadron Escort"
            ship: "E-wing"
            threat: 3
            upgrades: [
                "Predator"
                "Collision Detector"
                "Proton Torpedoes"
                "R3 Astromech"
            ]
        }
        {
            id: 108
            faction: "Rebel Alliance"
            pilot: "Gavin Darklighter"
            ship: "E-wing"
            threat: 3
            upgrades: [
                "Crack Shot"
                "Fire-Control System"
                "Ion Torpedoes"
                "R4 Astromech"
            ]
        }
        {
            id: 109
            faction: "Rebel Alliance"
            pilot: "Knave Squadron Escort"
            ship: "E-wing"
            threat: 2
        }
        {
            id: 110
            faction: "Rebel Alliance"
            pilot: "Jan Ors"
            ship: "HWK-290 Light Freighter"
            threat: 3
            upgrades: [
                "Trick Shot"
                "Perceptive Copilot"
                "Seismic Charges"
                "Cloaking Device"
                "Engine Upgrade"
                "Moldy Crow"
            ]
        }
        {
            id: 111
            faction: "Rebel Alliance"
            pilot: "Roark Garnet"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Seismic Charges"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 112
            faction: "Rebel Alliance"
            pilot: "Kyle Katarn"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Moldy Crow"
            ]
        }
        {
            id: 113
            faction: "Rebel Alliance"
            pilot: "Rebel Scout"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "Seismic Charges"
                "Sabine Wren"
                "Engine Upgrade"
            ]
        }
        {
            id: 114
            faction: "Rebel Alliance"
            pilot: "Arvel Crynyd"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Intimidation"
                "Proton Rockets"
                "Hull Upgrade"
            ]
        }
        {
            id: 115
            faction: "Rebel Alliance"
            pilot: "Green Squadron Pilot"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Daredevil"
                "Concussion Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 116
            faction: "Jake Farrell"
            pilot: "Green Squadron Pilot"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Cluster Missiles"
            ]
        }
        {
            id: 117
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            suffix: " x2"
            linkedId: 117
            ship: "RZ-1 A-wing"
            threat: 3
            upgrades: [
                "Proton Rockets"
            ]
        }
        {
            id: 118
            faction: "Rebel Alliance"
            pilot: "Fenn Rau (Sheathipede)"
            ship: "Sheathipede-Class Shuttle"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Seasoned Navigator"
                "R4 Astromech"
                "Stealth Device"
                "Phantom"
            ]
        }
        {
            id: 119
            faction: "Rebel Alliance"
            pilot: "Ezra Bridger (Sheathipede)"
            ship: "Sheathipede-Class Shuttle"
            threat: 2
            upgrades: [
                "Heightened Perception"
                '"Chopper" (Astromech)'
                "Afterburners"
                "Phantom"
            ]
        }
        {
            id: 120
            faction: "Rebel Alliance"
            pilot: "Captain Rex"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Juke"
                "Stealth Device"
            ]
        }
        {
            id: 121
            faction: "Rebel Alliance"
            pilot: "Sabine Wren (TIE Fighter)"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Conner Nets"
                "Hull Upgrade"
            ]
        }
        {
            id: 122
            faction: "Rebel Alliance"
            pilot: "Ezra Bridger (TIE Fighter)"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Supernatural Reflexes"
                '"Zeb" Orrelios'
                "Hull Upgrade"
            ]
        }
        {
            id: 123
            faction: "Rebel Alliance"
            pilot: '"Zeb" Orrelios (TIE Fighter)'
            ship: "TIE/ln Fighter"
            threat: 1
        }
        {
            id: 124
            faction: "Rebel Alliance"
            pilot: "Cassian Andor"
            ship: "UT-60D U-wing"
            threat: 3
            upgrades: [
                "Fire-Control System"
                "Jyn Erso"
                "Baze Malbus"
                "Pivot Wing"
            ]
        }
        {
            id: 125
            faction: "Rebel Alliance"
            pilot: "Bodhi Rook"
            ship: "UT-60D U-wing"
            threat: 2
            upgrades: [
                "Cassian Andor"
                "Pivot Wing"
            ]
        }
        {
            id: 126
            faction: "Rebel Alliance"
            pilot: "Heff Tobber"
            ship: "UT-60D U-wing"
            threat: 3
            upgrades: [
                "Fire-Control System"
                "Ion Cannon Turret"
                "Bistan"
                "Perceptive Copilot"
                "Pivot Wing"
            ]
        }
        {
            id: 127
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Scout"
            ship: "UT-60D U-wing"
            threat: 2
            upgrades: [
                "Advanced Sensors"
                "Tactical Officer"
                "Pivot Wing"
            ]
        }
        {
            id: 128
            faction: "Rebel Alliance"
            pilot: "Han Solo"
            ship: "Modified YT-1300 Light Freighter"
            threat: 4
            upgrades: [
                "Lone Wolf"
                "Chewbacca"
                "Millennium Falcon"
            ]
        }
        {
            id: 129
            faction: "Rebel Alliance"
            pilot: "Chewbacca"
            ship: "Modified YT-1300 Light Freighter"
            threat: 6
            upgrades: [
                "Predator"
                "C-3PO"
                "Leia Organa"
                "R2-D2 (Crew)"
                "Han Solo"
                "Luke Skywalker"
                "Engine Upgrade"
                "Millennium Falcon"
            ]
        }
        {
            id: 130
            faction: "Rebel Alliance"
            pilot: "Lando Calrissian"
            ship: "Modified YT-1300 Light Freighter"
            threat: 5
            upgrades: [
                "Swarm Tactics"
                "Concussion Missiles"
                "Nien Nunb"
                "Engine Upgrade"
                "Millennium Falcon"
            ]
        }
        {
            id: 131
            faction: "Rebel Alliance"
            pilot: "Outer Rim Smuggler"
            ship: "Modified YT-1300 Light Freighter"
            threat: 4
            upgrades: [
                "Homing Missiles"
                "Novice Technician"
                "Veteran Turret Gunner"
                "Feedback Array"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 132
            faction: "Rebel Alliance"
            pilot: "Airen Cracken"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "Cluster Missiles"
                "Hull Upgrade"
            ]
        }
        {
            id: 133
            faction: "Rebel Alliance"
            pilot: "Bandit Squadron Pilot"
            ship: "Z-95-AF4 Headhunter"
            threat: 1
        }
        {
            id: 134
            faction: "Rebel Alliance"
            pilot: "Lieutenant Blount"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Proton Rockets"
                "Shield Upgrade"
            ]
        }
        {
            id: 135
            faction: "Rebel Alliance"
            pilot: "Tala Squadron Pilot"
            ship: "Z-95-AF4 Headhunter"
            threat: 1
            upgrades: [
                "Selfless"
            ]
        }
        {
            id: 136
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla"
            ship: "Attack Shuttle"
            threat: 2
            upgrades: [
                "Elusive"
                "Ion Cannon Turret"
                "Phantom"
            ]
        }
        {
            id: 137
            faction: "Rebel Alliance"
            pilot: "Sabine Wren"
            ship: "Attack Shuttle"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Dorsal Turret"
                "Phantom"
            ]
        }
        {
            id: 138
            faction: "Rebel Alliance"
            pilot: "Dash Rendar"
            ship: "YT-2400 Light Freighter"
            threat: 5
            upgrades: [
                "Expert Handling"
                "Trick Shot"
                "Perceptive Copilot"
                "Rigged Cargo Chute"
                "Outrider"
            ]
        }
        {
            id: 139
            faction: "Rebel Alliance"
            pilot: '"Leebo"'
            ship: "YT-2400 Light Freighter"
            threat: 4
            upgrades: [
                "Outrider"
                "Inertial Dampeners"
            ]
        }
        {
            id: 140
            faction: "Rebel Alliance"
            pilot: "Wild Space Fringer"
            ship: "YT-2400 Light Freighter"
            threat: 4
            upgrades: [
                "Concussion Missiles"
                "Veteran Turret Gunner"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 141
            faction: "Rebel Alliance"
            pilot: "Magva Yarro"
            ship: "UT-60D U-wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Saw Gerrera"
                "Advanced Sensors"
                "Shield Upgrade"
                "Pivot Wing"
            ]
        }
        {
            id: 142
            faction: "Rebel Alliance"
            pilot: "Saw Gerrera"
            ship: "UT-60D U-wing"
            threat: 2
            upgrades: [
                "Magva Yarro"
                "Pivot Wing"
            ]
        }
        {
            id: 143
            faction: "Rebel Alliance"
            pilot: "Benthic Two Tubes"
            ship: "UT-60D U-wing"
            threat: 2
            upgrades: [
                "Advanced Sensors"
                "Pivot Wing"
            ]
        }
        {
            id: 144
            faction: "Rebel Alliance"
            pilot: "Partisan Renegade"
            ship: "UT-60D U-wing"
            threat: 2
            upgrades: [
                "Advanced Sensors"
                "Deadman's Switch"
                "Pivot Wing"
            ]
        }
        {
            id: 145
            faction: "Rebel Alliance"
            pilot: "Kullbee Sperado"
            ship: "T-65 X-wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "R2 Astromech"
                "Deadman's Switch"
                "Afterburners"
                "Hull Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 146
            faction: "Rebel Alliance"
            pilot: "Edrio Two Tubes"
            ship: "T-65 X-wing"
            threat: 2
            upgrades: [
                "Trick Shot"
                "R4 Astromech"
                "Deadman's Switch"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 147
            faction: "Rebel Alliance"
            pilot: "Leevan Tenza"
            ship: "T-65 X-wing"
            threat: 3
            upgrades: [
                "Elusive"
                "R2 Astromech"
                "Deadman's Switch"
                "Afterburners"
                "Shield Upgrade"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 148
            faction: "Rebel Alliance"
            pilot: "Cavern Angels Zealot"
            ship: "T-65 X-wing"
            threat: 2
            upgrades: [
                "R2 Astromech"
                "Deadman's Switch"
                "Servomotor S-Foils"
            ]
        }
        {
            id: 149
            faction: "Rebel Alliance"
            pilot: "Kanan Jarrus"
            suffix: " + Phantom"
            linkedId: 150
            ship: "VCX-100 Light Freighter"
            threat: 6
            upgrades: [
                "Ion Cannon Turret"
                "Hera Syndulla"
                '"Chopper" (Crew)'
                "Ezra Bridger"
                "Ghost"
            ]
        }
        {
            id: 150
            faction: "Rebel Alliance"
            pilot: '"Zeb" Orrelios'
            suffix: " + Ghost"
            linkedId: 149
            ship: "Attack Shuttle"
            threat: 6
            upgrades: [
                "Phantom"
            ]
        }
        {
            id: 151
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla (VCX-100)"
            suffix: " + Phantom"
            linkedId: 152
            ship: "VCX-100 Light Freighter"
            threat: 6
            upgrades: [
                "Elusive"
                "Dorsal Turret"
                "Kanan Jarrus"
                "Ghost"
            ]
        }
        {
            id: 152
            faction: "Rebel Alliance"
            pilot: "Ezra Bridger"
            suffix: " + Ghost"
            linkedId: 151
            ship: "Attack Shuttle"
            threat: 6
            upgrades: [
                "Supernatural Reflexes"
                "Dorsal Turret"
                "Phantom"
            ]
        }
        {
            id: 153
            faction: "Rebel Alliance"
            pilot: '"Chopper"'
            suffix: " + Phantom"
            linkedId: 154
            ship: "VCX-100 Light Freighter"
            threat: 6
            upgrades: [
                "Ion Cannon Turret"
                '"Zeb" Orrelios'
                "Ghost"
            ]
        }
        {
            id: 154
            faction: "Rebel Alliance"
            pilot: "AP-5"
            suffix: " + Ghost"
            linkedId: 153
            ship: "Sheathipede-Class Shuttle"
            threat: 6
            upgrades: [
                "R4 Astromech"
                "Phantom"
            ]
        }
        {
            id: 155
            faction: "Rebel Alliance"
            pilot: "Lothal Rebel"
            suffix: " + Phantom"
            linkedId: 156
            ship: "VCX-100 Light Freighter"
            threat: 4
            upgrades: [
                "Dorsal Turret"
                "Lando Calrissian"
                "Ghost"
            ]
        }
        {
            id: 156
            faction: "Rebel Alliance"
            pilot: '"Zeb" Orrelios (Sheathipede)'
            suffix: " + Ghost"
            linkedId: 155
            ship: "Sheathipede-Class Shuttle"
            threat: 4
            upgrades: [
                "R5 Astromech"
                "Phantom"
            ]
        }
        {
            id: 157
            faction: "First Order"
            pilot: '"Midnight"'
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Afterburners"
            ]
        }
        {
            id: 158
            faction: "First Order"
            pilot: '"Static"'
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
            ]
        }
        {
            id: 159
            faction: "First Order"
            pilot: "Omega Squadron Ace"
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Fanatical"
                "Hull Upgrade"
            ]
        }
        {
            id: 160
            faction: "First Order"
            pilot: '"Scorch"'
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Fanatical"
                "Hull Upgrade"
            ]
        }
        {
            id: 161
            faction: "First Order"
            pilot: '"Longshot"'
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Predator"
            ]
        }
        {
            id: 162
            faction: "First Order"
            pilot: "Zeta Squadron Pilot"
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Advanced Optics"
                "Shield Upgrade"
            ]
        }
        {
            id: 163
            faction: "First Order"
            pilot: '"Muse"'
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Squad Leader"
                "Advanced Optics"
            ]
        }
        {
            id: 164
            faction: "First Order"
            pilot: '"Null"'
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 165
            faction: "First Order"
            pilot: "Epsilon Squadron Cadet"
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Targeting Synchronizer"
                "Afterburners"
            ]
        }
        {
            id: 166
            faction: "First Order"
            pilot: "Commander Malarus"
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Advanced Optics"
            ]
        }
        {
            id: 167
            faction: "First Order"
            pilot: "TN-3465"
            ship: "TIE/fo Fighter"
            threat: 2
            upgrades: [
                "Targeting Synchronizer"
                "Shield Upgrade"
            ]
        }
        {
            id: 168
            faction: "First Order"
            pilot: "Lieutenant Rivas"
            ship: "TIE/fo Fighter"
            threat: 1
            upgrades: [
            ]
        }
        {
            id: 169
            faction: "First Order"
            pilot: '"Quickdraw"'
            ship: "TIE/sf Fighter"
            threat: 3
            upgrades: [
                "Juke"
                "Collision Detector"
                "Hotshot Gunner"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 170
            faction: "First Order"
            pilot: "Zeta Squadron Survivor"
            ship: "TIE/sf Fighter"
            threat: 2
            upgrades: [
                "Pattern Analyzer"
                "Ion Missiles"
                "Special Forces Gunner"
            ]
        }
        {
            id: 171
            faction: "First Order"
            pilot: '"Backdraft"'
            ship: "TIE/sf Fighter"
            threat: 3
            upgrades: [
                "Pattern Analyzer"
                "Collision Detector"
                "Ion Missiles"
                "Special Forces Gunner"
                "Shield Upgrade"
            ]
        }
        {
            id: 172
            faction: "First Order"
            pilot: "Omega Squadron Expert"
            ship: "TIE/sf Fighter"
            threat: 2
            upgrades: [
                "Juke"
                "Special Forces Gunner"
            ]
        }
        {
            id: 173
            faction: "First Order"
            pilot: "Kylo Ren"
            ship: "TIE/vn Silencer"
            threat: 4
            upgrades: [
                "Hate"
                "Predictive Shot"
                "Primed Thrusters"
                "Adv. Proton Torpedoes"
            ]
        }
        {
            id: 174
            faction: "First Order"
            pilot: '"Recoil"'
            ship: "TIE/vn Silencer"
            threat: 3
            upgrades: [
                "Predator"
                "Proton Torpedoes"
            ]
        }
        {
            id: 175
            faction: "First Order"
            pilot: "First Order Test Pilot"
            ship: "TIE/vn Silencer"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Hull Upgrade"
            ]
        }
        {
            id: 176
            faction: "First Order"
            pilot: '"Blackout"'
            ship: "TIE/vn Silencer"
            threat: 3
            upgrades: [
                "Elusive"
                "Afterburners"
            ]
        }
        {
            id: 177
            faction: "First Order"
            pilot: '"Avenger"'
            ship: "TIE/vn Silencer"
            threat: 3
            upgrades: [
                "Primed Thrusters"
                "Adv. Proton Torpedoes"
            ]
        }
        {
            id: 178
            faction: "First Order"
            pilot: "Sienar-Jaemus Engineer"
            ship: "TIE/vn Silencer"
            threat: 2
        }
        {
            id: 179
            faction: "First Order"
            pilot: "Lieutenant Tavson"
            ship: "Upsilon-Class Command Shuttle"
            threat: 4
            upgrades: [
                "Advanced Sensors"
                "Ion Cannon"
                "Kylo Ren"
                "Supreme Leader Snoke"
                "Shield Upgrade"
            ]
        }
        {
            id: 180
            faction: "First Order"
            pilot: "Lieutenant Dormitz"
            ship: "Upsilon-Class Command Shuttle"
            threat: 3
            upgrades: [
                "Biohexacrypt Codes"
                "Hyperspace Tracking Data"
                "Tractor Beam"
            ]
        }
        {
            id: 181
            faction: "First Order"
            pilot: "Starkiller Base Pilot"
            ship: "Upsilon-Class Command Shuttle"
            threat: 2
        }
        {
            id: 182
            faction: "First Order"
            pilot: "Major Stridan"
            ship: "Upsilon-Class Command Shuttle"
            threat: 4
            upgrades: [
                "Biohexacrypt Codes"
                "Pattern Analyzer"
                "Tractor Beam"
                "Captain Phasma"
                "General Hux"
            ]
        }
        {
            id: 183
            faction: "First Order"
            pilot: "Captain Cardinal"
            ship: "Upsilon-Class Command Shuttle"
            threat: 3
            upgrades: [
                "Ion Cannon"
                "Petty Officer Thanisson"
            ]
        }
        {
            id: 184
            faction: "First Order"
            pilot: "Petty Officer Thanisson"
            ship: "Upsilon-Class Command Shuttle"
            threat: 3
            upgrades: [
                "Captain Phasma"
                "Tactical Scrambler"
            ]
        }
        {
            id: 185
            faction: "Scum and Villainy"
            pilot: "Boba Fett"
            ship: "Firespray-class Patrol Craft"
            threat: 4
            upgrades: [
                "Lone Wolf"
                "Perceptive Copilot"
                "Inertial Dampeners"
                "Seismic Charges"
                "Slave I"
            ]
        }
        {
            id: 186
            faction: "Scum and Villainy"
            pilot: "Kath Scarlet"
            ship: "Firespray-class Patrol Craft"
            threat: 3
            upgrades: [
                "Marauder"
            ]
        }
        {
            id: 187
            faction: "Scum and Villainy"
            pilot: "Krassis Trelix"
            ship: "Firespray-class Patrol Craft"
            threat: 3
            upgrades: [
                "Concussion Missiles"
            ]
        }
        {
            id: 188
            faction: "Scum and Villainy"
            pilot: "Emon Azzameen"
            ship: "Firespray-class Patrol Craft"
            threat: 4
            upgrades: [
                "Elusive"
                "Perceptive Copilot"
                "Inertial Dampeners"
                "Proximity Mines"
                "Seismic Charges"
                "Andrasta"
            ]
        }
        {
            id: 189
            faction: "Scum and Villainy"
            pilot: "Koshka Frost"
            ship: "Firespray-class Patrol Craft"
            threat: 3
            upgrades: [
                "Perceptive Copilot"
            ]
        }
        {
            id: 190
            faction: "Scum and Villainy"
            pilot: "Bounty Hunter"
            ship: "Firespray-class Patrol Craft"
            threat: 3
            upgrades: [
                "Perceptive Copilot"
                "Inertial Dampeners"
                "Seismic Charges"
            ]
        }
        {
            id: 191
            faction: "Scum and Villainy"
            pilot: "Fenn Rau"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Daredevil"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 192
            faction: "Scum and Villainy"
            pilot: "Kad Solus"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Fearless"
            ]
        }
        {
            id: 193
            faction: "Scum and Villainy"
            pilot: "Zealous Recruit"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
            ]
        }
        {
            id: 194
            faction: "Scum and Villainy"
            pilot: "Joy Rekkoff"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Predator"
                "Ion Torpedoes"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 195
            faction: "Scum and Villainy"
            pilot: "Old Teroch"
            ship: "Fang Fighter"
            threat: 2
        }
        {
            id: 196
            faction: "Scum and Villainy"
            pilot: "Skull Squadron Pilot"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Fearless"
            ]
        }
        {
            id: 197
            faction: "Scum and Villainy"
            pilot: "Ahhav"
            ship: "Modified TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 198
            faction: "Scum and Villainy"
            pilot: "Mining Guild Surveyor"
            ship: "Modified TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Swarm Tactics"
                "Trick Shot"
                "Shield Upgrade"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 199
            faction: "Scum and Villainy"
            pilot: "Overseer Yushyn"
            ship: "Modified TIE/ln Fighter"
            threat: 1
        }
        {
            id: 200
            faction: "Scum and Villainy"
            pilot: "Captain Seevor"
            ship: "Modified TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Shield Upgrade"
            ]
        }
        {
            id: 201
            faction: "Scum and Villainy"
            pilot: "Foreman Proach"
            ship: "Modified TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Predator"
                "Swarm Tactics"
                "Hull Upgrade"
            ]
        }
        {
            id: 202
            faction: "Scum and Villainy"
            pilot: "Mining Guild Sentry"
            ship: "Modified TIE/ln Fighter"
            threat: 1
        }
        {
            id: 203
            faction: "Scum and Villainy"
            pilot: "Ketsu Onyo"
            ship: "Lancer-Class Pursuit Craft"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Rigged Cargo Chute"
                "Shield Upgrade"
                "Shadow Caster"
            ]
        }
        {
            id: 204
            faction: "Scum and Villainy"
            pilot: "Sabine Wren (Scum)"
            ship: "Lancer-Class Pursuit Craft"
            threat: 3
            upgrades: [
                "Fearless"
                "Ketsu Onyo"
                "Shadow Caster"
            ]
        }
        {
            id: 205
            faction: "Scum and Villainy"
            pilot: "Asajj Ventress"
            ship: "Lancer-Class Pursuit Craft"
            threat: 4
            upgrades: [
                "Sense"
                "Veteran Turret Gunner"
                "Deadman's Switch"
                "Inertial Dampeners"
            ]
        }
        {
            id: 206
            faction: "Scum and Villainy"
            pilot: "Shadowport Hunter"
            ship: "Lancer-Class Pursuit Craft"
            threat: 3
            upgrades: [
                "Maul"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 207
            faction: "Scum and Villainy"
            pilot: "Talonbane Cobra"
            ship: "Kihraxz Fighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Cluster Missiles"
                "Inertial Dampeners"
                "Afterburners"
                "Electronic Baffle"
                "Shield Upgrade"
            ]
        }
        {
            id: 208
            faction: "Scum and Villainy"
            pilot: "Viktor Hel"
            ship: "Kihraxz Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Stealth Device"
            ]
        }
        {
            id: 209
            faction: "Scum and Villainy"
            pilot: "Graz"
            ship: "Kihraxz Fighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Concussion Missiles"
                "Contraband Cybernetics"
                "Afterburners"
            ]
        }
        {
            id: 210
            faction: "Scum and Villainy"
            pilot: "Black Sun Ace"
            ship: "Kihraxz Fighter"
            threat: 2
            upgrades: [
                "Predator"
                "Shield Upgrade"
            ]
        }
        {
            id: 211
            faction: "Scum and Villainy"
            pilot: "Captain Jostero"
            ship: "Kihraxz Fighter"
            threat: 2
            upgrades: [
                "Ion Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            id: 212
            faction: "Scum and Villainy"
            pilot: "Cartel Marauder"
            ship: "Kihraxz Fighter"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Hull Upgrade"
                "Munitions Failsafe"
            ]
        }
        {
            id: 213
            faction: "Scum and Villainy"
            pilot: "Kavil"
            ship: "BTL-A4 Y-wing"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Dorsal Turret"
                '"Genius"'
                "Proton Bombs"
                "Afterburners"
            ]
        }
        {
            id: 214
            faction: "Scum and Villainy"
            pilot: "Hired Gun"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Ion Cannon Turret"
                "Veteran Turret Gunner"
                "R3 Astromech"
                "Conner Nets"
            ]
        }
        {
            id: 215
            faction: "Scum and Villainy"
            pilot: "Drea Renthal"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Ion Cannon Turret"
                "Hotshot Gunner"
            ]
        }
        {
            id: 216
            faction: "Scum and Villainy"
            pilot: "Crymorah Goon"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Dorsal Turret"
                "Ion Torpedoes"
                "R3 Astromech"
                "Inertial Dampeners"
                "Proximity Mines"
            ]
        }
        {
            id: 217
            faction: "Scum and Villainy"
            pilot: "Dace Bonearm"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Feedback Array"
                "Conner Nets"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 218
            faction: "Scum and Villainy"
            pilot: "Palob Godalhi"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Debris Gambit"
                "Juke"
                "Contraband Cybernetics"
                "Stealth Device"
            ]
        }
        {
            id: 219
            faction: "Scum and Villainy"
            pilot: "Torkil Mux"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Cloaking Device"
                "Proximity Mines"
            ]
        }
        {
            id: 220
            faction: "Scum and Villainy"
            pilot: "Spice Runner"
            suffix: " (x2)"
            ship: "HWK-290 Light Freighter"
            threat: 3
            linkedId: 220
            upgrades: [
                "Deadman's Switch"
                "Proton Bombs"
                "Electronic Baffle"
            ]
        }
        {
            id: 221
            faction: "Scum and Villainy"
            pilot: "Constable Zuvio"
            ship: "Quadrijet Transfer Spacetug"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Rigged Cargo Chute"
                "Conner Nets"
                "Shield Upgrade"
            ]
        }
        {
            id: 222
            faction: "Scum and Villainy"
            pilot: "Jakku Gunrunner"
            suffix: " (x2)"
            linkedId: 222
            ship: "Quadrijet Transfer Spacetug"
            threat: 3
            upgrades: [
                "Novice Technician"
                "Proximity Mines"
                "Electronic Baffle"
            ]
        }
        {
            id: 223
            faction: "Scum and Villainy"
            pilot: "Sarco Plank"
            ship: "Quadrijet Transfer Spacetug"
            threat: 2
            upgrades: [
                "Unkar Plutt"
                "Feedback Array"
                "Seismic Charges"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 224
            faction: "Scum and Villainy"
            pilot: "Unkar Plutt"
            ship: "Quadrijet Transfer Spacetug"
            threat: 2
            upgrades: [
                "Novice Technician"
                "Contraband Cybernetics"
                "Proximity Mines"
                "Afterburners"
            ]
        }
        {
            id: 225
            faction: "Scum and Villainy"
            pilot: "Prince Xizor"
            ship: "StarViper-class Attack Platform"
            threat: 3
            upgrades: [
                "Predator"
                "Fire-Control System"
                "Shield Upgrade"
                "Virago"
            ]
        }
        {
            id: 226
            faction: "Scum and Villainy"
            pilot: "Black Sun Enforcer"
            ship: "StarViper-class Attack Platform"
            threat: 2
            upgrades: [
                "Collision Detector"
            ]
        }
        {
            id: 227
            faction: "Scum and Villainy"
            pilot: "Guri"
            ship: "StarViper-class Attack Platform"
            threat: 3
            upgrades: [
                "Daredevil"
                "Advanced Sensors"
                "Adv. Proton Torpedoes"
            ]
        }
        {
            id: 228
            faction: "Scum and Villainy"
            pilot: "Dalan Oberos (StarViper)"
            ship: "StarViper-class Attack Platform"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Fire-Control System"
                "Proton Torpedoes"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 229
            faction: "Scum and Villainy"
            pilot: "Black Sun Assassin"
            ship: "StarViper-class Attack Platform"
            threat: 2
            upgrades: [
                "Fearless"
            ]
        }
        {
            id: 230
            faction: "Scum and Villainy"
            pilot: "Serissu"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Stealth Device"
            ]
        }
        {
            id: 231
            faction: "Scum and Villainy"
            pilot: "Genesis Red"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Juke"
                "Concussion Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            id: 232
            faction: "Scum and Villainy"
            pilot: "Quinn Jast"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Adv. Proton Torpedoes"
                "Afterburners"
            ]
        }
        {
            id: 233
            faction: "Scum and Villainy"
            pilot: "Laetin A'shera"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Juke"
                "Cluster Missiles"
                "Munitions Failsafe"
                "Stealth Device"
            ]
        }
        {
            id: 234
            faction: "Scum and Villainy"
            pilot: "Inaldra"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Ion Cannon"
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 235
            faction: "Scum and Villainy"
            pilot: "Tansarii Point Veteran"
            suffix: " (x2)"
            linkedId: 235
            ship: "M3-A Interceptor"
            threat: 3
            upgrades: [
                "Crack Shot"
                "Heavy Laser Cannon"
            ]
        }
        {
            id: 236
            faction: "Scum and Villainy"
            pilot: "Sunny Bounder"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Predator"
                "Cluster Missiles"
                "Afterburners"
            ]
        }
        {
            id: 237
            faction: "Scum and Villainy"
            pilot: "Cartel Spacer"
            suffix: " (x2)"
            linkedId: 237
            ship: "M3-A Interceptor"
            threat: 3
            upgrades: [
                "Ion Torpedoes"
                "Munitions Failsafe"
            ]
        }
        {
            id: 238
            faction: "Scum and Villainy"
            pilot: "Tel Trevura"
            ship: "JumpMaster 5000"
            threat: 3
            upgrades: [
                "Expert Handling"
                'GNK "Gonk" Droid'
                "Proton Torpedoes"
                "Deadman's Switch"
            ]
        }
        {
            id: 239
            faction: "Scum and Villainy"
            pilot: "Contracted Scout"
            ship: "JumpMaster 5000"
            threat: 2
            upgrades: [
                "Ion Torpedoes"
                "Inertial Dampeners"
            ]
        }
        {
            id: 240
            faction: "Scum and Villainy"
            pilot: "Dengar"
            ship: "JumpMaster 5000"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "R4 Astromech"
                "Contraband Cybernetics"
                "Punishing One"
            ]
        }
        {
            id: 241
            faction: "Scum and Villainy"
            pilot: "Manaroo"
            ship: "JumpMaster 5000"
            threat: 3
            upgrades: [
                "Intimidation"
                "Perceptive Copilot"
                "Proton Torpedoes"
                "Feedback Array"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 242
            faction: "Scum and Villainy"
            pilot: "N'dru Suhlak"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Lone Wolf"
                "Homing Missiles"
                "Cloaking Device"
                "Hull Upgrade"
            ]
        }
        {
            id: 243
            faction: "Scum and Villainy"
            pilot: "Black Sun Soldier"
            suffix: " (x2)"
            linkedId: 243
            ship: "Z-95-AF4 Headhunter"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Concussion Missiles"
                "Deadman's Switch"
                "Hull Upgrade"
            ]
        }
        {
            id: 244
            faction: "Scum and Villainy"
            pilot: "Kaa'to Leeachos"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Cluster Missiles"
                "Contraband Cybernetics"
                "Afterburners"
            ]
        }
        {
            id: 245
            faction: "Scum and Villainy"
            pilot: "Binayre Pirate"
            ship: "Z-95-AF4 Headhunter"
            threat: 1
        }
        {
            id: 246
            faction: "Scum and Villainy"
            pilot: "4-LOM"
            ship: "G-1A Starfighter"
            threat: 3
            upgrades: [
                "Elusive"
                "Advanced Sensors"
                "0-0-0"
                "Zuckuss"
                "BT-1"
                "Mist Hunter"
            ]
        }
        {
            id: 247
            faction: "Scum and Villainy"
            pilot: "Zuckuss"
            ship: "G-1A Starfighter"
            threat: 2
            upgrades: [
                "Lone Wolf"
                "Tractor Beam"
                "4-LOM"
                "Mist Hunter"
            ]
        }
        {
            id: 248
            faction: "Scum and Villainy"
            pilot: "Gand Findsman"
            ship: "G-1A Starfighter"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Freelance Slicer"
                "Deadman's Switch"
                "Electronic Baffle"
            ]
        }
        {
            id: 249
            faction: "Scum and Villainy"
            pilot: "Moralo Eval"
            ship: "YV-666 Light Freighter"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Cluster Missiles"
                "Latts Razzi"
                "Dengar"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 250
            faction: "Scum and Villainy"
            pilot: "Latts Razzi"
            ship: "YV-666 Light Freighter"
            threat: 3
            upgrades: [
                "Boba Fett"
                "Bossk"
                "Dengar"
                "Feedback Array"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 251
            faction: "Scum and Villainy"
            pilot: "Trandoshan Slaver"
            ship: "YV-666 Light Freighter"
            threat: 3
            upgrades: [
                "Hotshot Gunner"
                "Jabba the Hutt"
                "Contraband Cybernetics"
                "Rigged Cargo Chute"
            ]
        }
        {
            id: 252
            faction: "Scum and Villainy"
            pilot: "Bossk"
            suffix: " + Nashtah Pup"
            linkedId: 253
            ship: "YV-666 Light Freighter"
            threat: 3
            upgrades: [
                "Marksmanship"
                "Greedo"
                "Hound's Tooth"
            ]
        }
        {
            id: 253
            faction: "Scum and Villainy"
            pilot: "Nashtah Pup"
            suffix: " + Bossk"
            linkedId: 252
            ship: "Z-95-AF4 Headhunter"
            threat: 3
        }
        {
            id: 254
            faction: "Scum and Villainy"
            pilot: "Trandoshan Slaver"
            suffix: " + Nashtah Pup"
            linkedId: 255
            ship: "YV-666 Light Freighter"
            threat: 3
            upgrades: [
                "Deadman's Switch"
                "Hound's Tooth"
            ]
        }
        {
            id: 255
            faction: "Scum and Villainy"
            pilot: "Nashtah Pup"
            suffix: " + Trandoshan Slaver"
            linkedId: 254
            ship: "Z-95-AF4 Headhunter"
            threat: 3
            upgrades: [
                "Proton Rockets"
            ]
        }
        {
            id: 256
            faction: "Scum and Villainy"
            pilot: "Torani Kulda"
            ship: "M12-L Kimogila Fighter"
            threat: 3
            upgrades: [
                "Saturation Salvo"
                "Proton Torpedoes"
                "Cluster Missiles"
                "R4 Astromech"
                "Inertial Dampeners"
                "Shield Upgrade"
            ]
        }
        {
            id: 257
            faction: "Scum and Villainy"
            pilot: "Dalan Oberos"
            ship: "M12-L Kimogila Fighter"
            threat: 2
            upgrades: [
                "Expert Handling"
                "R5-TK"
                "Inertial Dampeners"
            ]
        }
        {
            id: 258
            faction: "Scum and Villainy"
            pilot: "Cartel Executioner"
            ship: "M12-L Kimogila Fighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "R5-P8"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 259
            skip: true
            faction: "Scum and Villainy"
            pilot: "Dalan Oberos"
            ship: "M12-L Kimogila Fighter"
            threat: 2
            upgrades: [
                "Expert Handling"
                "R5-TK"
                "Inertial Dampeners"
            ]
        }
        {
            id: 260
            faction: "Scum and Villainy"
            pilot: "Captain Nym"
            ship: "Scurrg H-6 Bomber"
            threat: 3
            upgrades: [
                "Squad Leader"
                "Trajectory Simulator"
                "R4 Astromech"
                "Bomblet Generator"
                "Havoc"
            ]
        }
        {
            id: 261
            faction: "Scum and Villainy"
            pilot: "Sol Sixxa"
            ship: "Scurrg H-6 Bomber"
            threat: 3
            upgrades: [
                "Ion Cannon Turret"
                "Skilled Bombardier"
                "Conner Nets"
                "Proximity Mines"
            ]
        }
        {
            id: 262
            faction: "Scum and Villainy"
            pilot: "Lok Revenant"
            ship: "Scurrg H-6 Bomber"
            threat: 2
            upgrades: [
                "Dorsal Turret"
                "Bomblet Generator"
            ]
        }
        {
            id: 263
            faction: "Scum and Villainy"
            pilot: "IG-88A"
            suffix: " + IG-88D"
            linkedId: 264
            ship: "Aggressor Assault Fighter"
            threat: 6
            upgrades: [
                "Advanced Sensors"
                "IG-2000"
            ]
        }
        {
            id: 264
            faction: "Scum and Villainy"
            pilot: "IG-88D"
            suffix: " + IG-88A"
            linkedId: 263
            ship: "Aggressor Assault Fighter"
            threat: 6
            upgrades: [
                "Advanced Sensors"
                "IG-2000"
            ]
        }
        {
            id: 265
            faction: "Scum and Villainy"
            pilot: "IG-88B"
            suffix: " + IG-88C"
            linkedId: 266
            ship: "Aggressor Assault Fighter"
            threat: 6
            upgrades: [
                "Fire-Control System"
                "Ion Cannon"
                "IG-2000"
            ]
        }
        {
            id: 266
            faction: "Scum and Villainy"
            pilot: "IG-88C"
            suffix: " + IG-88B"
            linkedId: 265
            ship: "Aggressor Assault Fighter"
            threat: 6
            upgrades: [
                "Fire-Control System"
                "Ion Cannon"
                "IG-2000"
            ]
        }
        {
            id: 267
            faction: "Resistance"
            pilot: "L'ulo L'ampar"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Primed Thrusters"
                "Homing Missiles"
            ]
        }
        {
            id: 268
            faction: "Resistance"
            pilot: "Greer Sonnel"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Afterburners"
            ]
        }
        {
            id: 269
            faction: "Resistance"
            pilot: "Green Squadron Expert"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Heroic"
                "Primed Thrusters"
                "Hull Upgrade"
            ]
        }
        {
            id: 270
            faction: "Resistance"
            pilot: "Tallissan Lintra"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Predator"
                "Ferrosphere Paint"
            ]
        }
        {
            id: 271
            faction: "Resistance"
            pilot: "Zari Bangel"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Proton Rockets"
            ]
        }
        {
            id: 272
            faction: "Resistance"
            pilot: "Blue Squadron Recruit"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Primed Thrusters"
                "Homing Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 273
            faction: "Resistance"
            pilot: "Poe Dameron"
            ship: "T-70 X-wing"
            threat: 4
            upgrades: [
                "Proton Torpedoes"
                "BB-8"
                "Black One"
                "Integrated S-Foils"
                "Afterburners"
            ]
        }
        {
            id: 274
            faction: "Resistance"
            pilot: "Jessika Pava"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "R5 Astromech"
                "Integrated S-Foils"
                "Hull Upgrade"
            ]
        }
        {
            id: 275
            faction: "Resistance"
            pilot: "Black Squadron Ace (T-70)"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Proton Torpedoes"
                "M9-G8"
                "Integrated S-Foils"
            ]
        }
        {
            id: 276
            faction: "Resistance"
            pilot: "Ello Asty"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Integrated S-Foils"
                "Afterburners"
            ]
        }
        {
            id: 277
            faction: "Resistance"
            pilot: "Joph Seastriker"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "R2 Astromech"
                "Integrated S-Foils"
                "Shield Upgrade"
            ]
        }
        {
            id: 278
            faction: "Resistance"
            pilot: "Jaycris Tubbs"
            ship: "T-70 X-wing"
            threat: 2
        }
        {
            id: 279
            faction: "Resistance"
            pilot: "Nien Nunb"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Integrated S-Foils"
                "Afterburners"
            ]
        }
        {
            id: 280
            faction: "Resistance"
            pilot: "Lieutenant Bastian"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Targeting Synchronizer"
                "Proton Torpedoes"
                "R3 Astromech"
                "Integrated S-Foils"
            ]
        }
        {
            id: 281
            faction: "Resistance"
            pilot: "Red Squadron Expert"
            ship: "T-70 X-wing"
            threat: 2
        }
        {
            id: 282
            faction: "Resistance"
            pilot: "Temmin Wexley"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Proton Torpedoes"
                "Integrated S-Foils"
            ]
        }
        {
            id: 283
            faction: "Resistance"
            pilot: "Kare Kun"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Predator"
                "Integrated S-Foils"
                "Afterburners"
            ]
        }
        {
            id: 284
            faction: "Resistance"
            pilot: "Blue Squadron Rookie"
            ship: "T-70 X-wing"
            threat: 2
            upgrades: [
                "BB Astromech"
            ]
        }
        {
            id: 285
            faction: "Resistance"
            pilot: "Finch Dallow"
            ship: "MG-100 StarFortress"
            threat: 4
            upgrades: [
                "Advanced Optics"
                "Paige Tico"
                "Proton Bombs"
                "Ablative Plating"
                "Hull Upgrade"
            ]
        }
        {
            id: 286
            faction: "Resistance"
            pilot: "Cat"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Skilled Bombardier"
                "Conner Nets"
                "Electronic Baffle"
            ]
        }
        {
            id: 287
            faction: "Resistance"
            pilot: "Cobalt Squadron Bomber"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Trajectory Simulator"
                "Proton Bombs"
                "Ablative Plating"
            ]
        }
        {
            id: 288
            faction: "Resistance"
            pilot: "Edon Kappehl"
            ship: "MG-100 StarFortress"
            threat: 4
            upgrades: [
                "Pattern Analyzer"
                "Seasoned Navigator"
                "Skilled Bombardier"
                "Conner Nets"
                "Proton Bombs"
            ]
        }
        {
            id: 289
            faction: "Resistance"
            pilot: "Vennie"
            ship: "MG-100 StarFortress"
            threat: 4
            upgrades: [
                "Advanced Optics"
                "Rose Tico"
                "Finn"
                "Shield Upgrade"
            ]
        }
        {
            id: 290
            faction: "Resistance"
            pilot: "Ben Teene"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Conner Nets"
                "Proton Bombs"
            ]
        }
        {
            id: 291
            faction: "Resistance"
            pilot: "Han Solo (Resistance)"
            ship: "Scavenged YT-1300"
            threat: 3
            upgrades: [
                "Chewbacca"
            ]
        }
        {
            id: 292
            faction: "Resistance"
            pilot: "Rey"
            ship: "Scavenged YT-1300"
            threat: 5
            upgrades: [
                "Finn"
                "BB-8"
                "Inertial Dampeners"
                "Engine Upgrade"
                "Rey's Millennium Falcon"
            ]
        }
        {
            id: 293
            faction: "Resistance"
            pilot: "Chewbacca (Resistance)"
            ship: "Scavenged YT-1300"
            threat: 4
            upgrades: [
                "Rey"
                "Engine Upgrade"
                "Rey's Millennium Falcon"
            ]
        }
        {
            id: 294
            faction: "Resistance"
            pilot: "Resistance Sympathizer"
            ship: "Scavenged YT-1300"
            threat: 4
            upgrades: [
                "Debris Gambit"
                "C-3PO"
                "Chewbacca"
                "Han Solo (Resistance)"
            ]
        }
        {
            id: 295
            faction: "Rebel Alliance"
            pilot: "Thane Kyrell"
            ship: "T-65 X-wing"
            threat: 2
            upgrades: [
                "Stealth Device"
                "Outmaneuver"
            ]
        }
        {
            id: 296
            faction: "Galactic Empire"
            pilot: "Iden Versio"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Lone Wolf"
                "Targeting Computer"
            ]
        }
        {
            id: 297
            faction: "Scum and Villainy"
            pilot: "Skull Squadron Pilot"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Marksmanship"
                "Adv. Proton Torpedoes"
                "Afterburners"
            ]
        }
        {
            id: 298
            faction: "Scum and Villainy"
            pilot: "Foreman Proach"
            ship: "Modified TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Fearless"
                "Crack Shot"
            ]
        }
        {
            id: 299
            faction: "First Order"
            pilot: '"Blackout"'
            ship: "TIE/vn Silencer"
            threat: 3
            upgrades: [
                "Trick Shot"
            ]
        }
        {
            id: 300
            faction: "Resistance"
            pilot: "Greer Sonnel"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Marksmanship"
                "Primed Thrusters"
            ]
        }
        {
            id: 301
            faction: "Scum and Villainy"
            pilot: "Han Solo (Scum)"
            ship: "Customized YT-1300 Light Freighter"
            linkedId: 302
            suffix: " + Escape craft"
            threat: 5
            upgrades: [
                "Elusive"
                "Chewbacca"
                "Lando's Millennium Falcon"
                "Agile Gunner"
                "Tactical Scrambler"
                "Rigged Cargo Chute"
            ]
        }
        {
            id: 302
            faction: "Scum and Villainy"
            pilot: "Outer Rim Pioneer"
            ship: "Escape Craft"
            linkedId: 301
            suffix: " + Han Solo"
            threat: 5
            upgrades: [
                "Tobias Beckett"
            ]
        }
        {
            id: 303
            faction: "Scum and Villainy"
            pilot: "Lando Calrissian (Scum)"
            ship: "Customized YT-1300 Light Freighter"
            linkedId: 304
            suffix: " + L3-37"
            threat: 4
            upgrades: [
                "Han Solo (Scum)"
                "Qi'ra"
                "Lando's Millennium Falcon"
            ]
        }
        {
            id: 304
            faction: "Scum and Villainy"
            pilot: "L3-37 (Escape Craft)"
            ship: "Escape Craft"
            linkedId: 303
            suffix: " + Lando Calrissian"
            threat: 4
            upgrades: [
            ]
        }
        {
            id: 305
            faction: "Scum and Villainy"
            pilot: "L3-37"
            ship: "Customized YT-1300 Light Freighter"
            linkedId: 306
            suffix: " + Lando Calrissian"
            threat: 5
            upgrades: [
                "Han Solo (Scum)"
                "Qi'ra"
                "Hull Upgrade"
                "Outmaneuver"
                "Lando's Millennium Falcon"
            ]
        }
        {
            id: 306
            faction: "Scum and Villainy"
            pilot: "Lando Calrissian (Scum) (Escape Craft)"
            ship: "Escape Craft"
            linkedId: 305
            suffix: " + L3-37"
            threat: 5
            upgrades: [
                "Elusive"
                "Shield Upgrade"
            ]
        }
        {
            id: 307
            faction: "Scum and Villainy"
            pilot: "Freighter Captain"
            ship: "Customized YT-1300 Light Freighter"
            linkedId: 308
            suffix: " + Autopilot drone"
            threat: 3
            upgrades: [
                "Lando's Millennium Falcon"
            ]
        }
        {
            id: 308
            faction: "Scum and Villainy"
            pilot: "Autopilot Drone"
            ship: "Escape Craft"
            linkedId: 307
            suffix: " + YT-1300"
            threat: 3
            upgrades: [
                "Afterburners"
            ]
        }
        {
            id: 309
            faction: "Galactic Republic"
            pilot: "Obi-Wan Kenobi"
            ship: "Delta-7 Aethersprite"
            threat: 3
            upgrades: [
                "Predictive Shot"
                "R4-P17"
                "Spare Parts Canisters"
                "Calibrated Laser Targeting"
            ]
        }
        {
            id: 310
            faction: "Galactic Republic"
            pilot: "Saesee Tiin"
            ship: "Delta-7 Aethersprite"
            threat: 3
            upgrades: [
                "Supernatural Reflexes"
                "R4-P Astromech"
                "Delta-7B"
            ]
        }
        {
            id: 311
            faction: "Galactic Republic"
            pilot: "Mace Windu"
            ship: "Delta-7 Aethersprite"
            threat: 4
            upgrades: [
                "Supernatural Reflexes"
                "R2 Astromech"
                "Delta-7B"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 312
            faction: "Galactic Republic"
            pilot: "Plo Koon"
            ship: "Delta-7 Aethersprite"
            threat: 3
            upgrades: [
                "Battle Meditation"
                "Sense"
                "R4-P Astromech"
                "Shield Upgrade"
            ]
        }
        {
            id: 313
            faction: "Galactic Republic"
            pilot: "Jedi Knight"
            ship: "Delta-7 Aethersprite"
            threat: 2
            upgrades: [
                "Delta-7B"
            ]
        }
        {
            id: 314
            faction: "Galactic Republic"
            pilot: '"Tucker"'
            ship: "V-19 Torrent Starfighter"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Munitions Failsafe"
            ]
        }
        {
            id: 315
            faction: "Galactic Republic"
            pilot: "Gold Squadron Trooper"
            ship: "V-19 Torrent Starfighter"
            threat: 2
            upgrades: [
                "Cluster Missiles"
                "Afterburners"
            ]
        }
        {
            id: 316
            faction: "Galactic Republic"
            pilot: '"Swoop"'
            ship: "V-19 Torrent Starfighter"
            threat: 2
            upgrades: [
                "Composure"
                "Synchronized Console"
                "Proton Rockets"
            ]
        }
        {
            id: 317
            faction: "Galactic Republic"
            pilot: "Blue Squadron Protector"
            ship: "V-19 Torrent Starfighter"
            threat: 2
            upgrades: [
                "Dedicated"
                "Synchronized Console"
            ]
        }
        {
            id: 318
            faction: "Galactic Republic"
            pilot: '"Odd Ball"'
            ship: "V-19 Torrent Starfighter"
            threat: 3
            upgrades: [
                "Saturation Salvo"
                "Cluster Missiles"
                "Afterburners"
                "Munitions Failsafe"
            ]
        }
        {
            id: 319
            faction: "Galactic Republic"
            pilot: '"Kickback"'
            ship: "V-19 Torrent Starfighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Synchronized Console"
            ]
        }
        {
            id: 320
            faction: "Galactic Republic"
            pilot: '"Axe"'
            ship: "V-19 Torrent Starfighter"
            threat: 2
            upgrades: [
                "Juke"
                "Homing Missiles"
            ]
        }
        {
            id: 321
            faction: "Galactic Republic"
            pilot: '"Wolffe"'
            ship: "ARC-170 Starfighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "R4-P44"
                "Veteran Tail Gunner"
                "Perceptive Copilot"
            ]
        }
        {
            id: 322
            faction: "Galactic Republic"
            pilot: '"Sinker"'
            ship: "ARC-170 Starfighter"
            threat: 2
            upgrades: [
                "Expert Handling"
            ]
        }
        {
            id: 323
            faction: "Galactic Republic"
            pilot: "104th Battalion Pilot"
            ship: "ARC-170 Starfighter"
            threat: 2
            upgrades: [
                "Dedicated"
                "R4-P Astromech"
            ]
        }
        {
            id: 324
            faction: "Galactic Republic"
            pilot: '"Odd Ball" (ARC-170)'
            ship: "ARC-170 Starfighter"
            threat: 3
            upgrades: [
                "Elusive"
                "Seasoned Navigator"
                "Clone Commander Cody"
                "Afterburners"
            ]
        }
        {
            id: 325
            faction: "Galactic Republic"
            pilot: '"Jag"'
            ship: "ARC-170 Starfighter"
            threat: 3
            upgrades: [
                "Predator"
                "Ion Torpedoes"
                "R2 Astromech"
                "Seventh Fleet Gunner"
                "Shield Upgrade"
            ]
        }
        {
            id: 326
            faction: "Galactic Republic"
            pilot: "Squad Seven Veteran"
            ship: "ARC-170 Starfighter"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Proton Torpedoes"
                "R4-P Astromech"
                "Novice Technician"
                "Seventh Fleet Gunner"
            ]
        }
        {
            id: 327
            faction: "Scum and Villainy"
            pilot: "Black Sun Soldier"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Cluster Missiles"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 328
            faction: "Scum and Villainy"
            pilot: "Binayre Pirate"
            ship: "Z-95-AF4 Headhunter"
            threat: 1
            upgrades: [
                "Deadman's Switch"
            ]
        }
        {
            id: 329
            faction: "Scum and Villainy"
            pilot: "N'dru Suhlak"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Outmaneuver"
                "Hull Upgrade"
                "Stealth Device"
            ]
        }
        {
            id: 330
            faction: "Scum and Villainy"
            pilot: "Kaa'to Leeachos"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Saturation Salvo"
                "Cluster Missiles"
                "Concussion Missiles"
                "Deadman's Switch"
                "Munitions Failsafe"
            ]
        }
        {
            id: 331
            faction: "Galactic Empire"
            pilot: "Black Squadron Scout"
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Predator"
                "Conner Nets"
            ]
        }
        {
            id: 332
            faction: "Galactic Empire"
            pilot: "Planetary Sentinel"
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "Skilled Bombardier"
                "Hull Upgrade"
            ]
        }
        {
            id: 333
            faction: "Galactic Empire"
            pilot: '"Duchess"'
            ship: "TIE/sk Striker"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Conner Nets"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 334
            faction: "Galactic Empire"
            pilot: '"Countdown"'
            ship: "TIE/sk Striker"
            threat: 3
            upgrades: [
                "Elusive"
                "Proton Bombs"
                "Skilled Bombardier"
                "Shield Upgrade"
            ]
        }
        {
            id: 335
            faction: "Galactic Empire"
            pilot: '"Pure Sabacc"'
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Trick Shot"
                "Shield Upgrade"
            ]
        }
        {
            id: 336
            skip: true
            faction: "Galactic Empire"
            pilot: "Planetary Sentinel"
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "Skilled Bombardier"
                "Hull Upgrade"
            ]
        }
        {
            id: 337
            faction: "Separatist Alliance"
            pilot: "0-66"
            ship: "Sith Infiltrator"
            threat: 3
            upgrades: [
                "Chancellor Palpatine"
                "Shield Upgrade"
                "Scimitar"
            ]
        }
        {
            id: 338
            faction: "Separatist Alliance"
            pilot: "Dark Courier"
            ship: "Sith Infiltrator"
            threat: 3
            upgrades: [
                "Count Dooku"
                "General Grievous"
                "K2-B4"
                "Scimitar"
            ]
        }
        {
            id: 339
            faction: "Separatist Alliance"
            pilot: "Darth Maul"
            ship: "Sith Infiltrator"
            threat: 4
            upgrades: [
                "Hate"
                "Heavy Laser Cannon"
                "Perceptive Copilot"
                "DRK-1 Probe Droids"
                "Shield Upgrade"
                "Scimitar"
            ]
        }
        {
            id: 340
            faction: "Separatist Alliance"
            pilot: "Count Dooku"
            ship: "Sith Infiltrator"
            threat: 4
            upgrades: [
                "Brilliant Evasion"
                "Predictive Shot"
                "Ion Torpedoes"
                "General Grievous"
                "Hull Upgrade"
                "Scimitar"
            ]
        }
        {
            id: 341
            faction: "Separatist Alliance"
            pilot: "DFS-311"
            ship: "Vulture-class Droid Fighter"
            threat: 1
            upgrades: [
                "Grappling Struts"
            ]
        }
        {
            id: 342
            faction: "Separatist Alliance"
            pilot: "Precise Hunter"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 343
            faction: "Separatist Alliance"
            pilot: "Separatist Drone"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Energy-Shell Charges"
                "Grappling Struts"
                "Shield Upgrade"
            ]
        }
        {
            id: 344
            faction: "Separatist Alliance"
            pilot: "Haor Chall Prototype"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Discord Missiles"
                "Energy-Shell Charges"
                "Stealth Device"
            ]
        }
        {
            id: 345
            faction: "Separatist Alliance"
            pilot: "Trade Federation Drone"
            ship: "Vulture-class Droid Fighter"
            threat: 1
            upgrades: [
                "Energy-Shell Charges"
            ]
        }
        {
            id: 346
            faction: "Separatist Alliance"
            pilot: "DFS-081"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Proton Rockets"
                "Grappling Struts"
                "Hull Upgrade"
            ]
        }
        {
            id: 347
            faction: "Separatist Alliance"
            pilot: "Haor Chall Prototype"
            ship: "Vulture-class Droid Fighter"
            threat: 2
            upgrades: [
                "Energy-Shell Charges"
                "Stealth Device"
                "Afterburners"
            ]
        }
        {
            id: 348
            faction: "Separatist Alliance"
            pilot: "General Grievous"
            ship: "Belbullab-22 Starfighter"
            threat: 3
            upgrades: [
                "Treacherous"
                "Impervium Plating"
                "Soulless One"
                "TV-94"
            ]
        }
        {
            id: 349
            faction: "Separatist Alliance"
            pilot: "Wat Tambor"
            ship: "Belbullab-22 Starfighter"
            threat: 3
            upgrades: [
                "Intimidation"
                "Kraken"
                "Shield Upgrade"
            ]
        }
        {
            id: 350
            faction: "Separatist Alliance"
            pilot: "Skakoan Ace"
            ship: "Belbullab-22 Starfighter"
            threat: 2
            upgrades: [
                "Crack Shot"
                "Afterburners"
            ]
        }
        {
            id: 351
            faction: "Separatist Alliance"
            pilot: "Captain Sear"
            ship: "Belbullab-22 Starfighter"
            threat: 3
            upgrades: [
                "Daredevil"
                "Impervium Plating"
                "Kraken"
                "Stealth Device"
            ]
        }
        {
            id: 352
            faction: "Separatist Alliance"
            pilot: "Feethan Ottraw Autopilot"
            ship: "Belbullab-22 Starfighter"
            threat: 2
            upgrades: [
                "Impervium Plating"
                "TV-94"
            ]
        }
        {
            id: 353
            faction: "Resistance"
            pilot: "Cova Nell"
            ship: "Resistance Transport"
            threat: 3
            upgrades: [
                "Composure"
                "Leia Organa (Resistance)"
                "Korr Sella"
            ]
        }
        {
            id: 354
            faction: "Resistance"
            pilot: "Pammich Nerro Goode"
            ship: "Resistance Transport"
            threat: 2
            upgrades: [
                "Autoblasters"
                "R5-X3"
                "Kaydel Connix"
                "Spare Parts Canisters"
            ]
        }
        {
            id: 355
            faction: "Resistance"
            pilot: "Nodin Chavdri"
            ship: "Resistance Transport"
            threat: 2
            upgrades: [
                "Plasma Torpedoes"
                "R2-HA"
                "Angled Deflectors"
            ]
        }
        {
            id: 356
            faction: "Resistance"
            pilot: "Logistics Division Pilot"
            ship: "Resistance Transport"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Larma D'Acy"
                "Amilyn Holdo"
            ]
        }
        {
            id: 357
            faction: "Resistance"
            pilot: "Rose Tico"
            ship: "Resistance Transport Pod"
            threat: 1
            upgrades: [
                "PZ-4CO"
            ]
        }
        {
            id: 358
            faction: "Resistance"
            pilot: "Finn"
            ship: "Resistance Transport Pod"
            threat: 1
            upgrades: [
                "Predator"
            ]
        }
        {
            id: 359
            faction: "Resistance"
            pilot: "BB-8"
            ship: "Resistance Transport Pod"
            threat: 2
            upgrades: [
                "Autoblasters"
                "Afterburners"
            ]
        }
        {
            id: 360
            faction: "Resistance"
            pilot: "Vi Moradi"
            ship: "Resistance Transport Pod"
            threat: 1
            upgrades: [
                "GA-97"
            ]
        }
        {
            id: 361
            faction: "Galactic Republic"
            pilot: "Padmé Amidala"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Collision Detector"
            ]
        }
        {
            id: 362
            faction: "Galactic Republic"
            pilot: "Dineé Ellberger"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "R3 Astromech"
                "Plasma Torpedoes"
            ]
        }
        {
            id: 363
            faction: "Galactic Republic"
            pilot: "Bravo Flight Officer"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "R2-C4"
                "Proton Torpedoes"
            ]
        }
        {
            id: 364
            faction: "Galactic Republic"
            pilot: "Anakin Skywalker (N-1 Starfighter)"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Proton Torpedoes"
                "Heightened Perception"
                "R2 Astromech"
                "Collision Detector"
            ]
        }
        {
            id: 365
            faction: "Galactic Republic"
            pilot: "Ric Olié"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Daredevil"
                "R2-A6"
            ]
        }
        {
            id: 366
            faction: "Galactic Republic"
            pilot: "Naboo Handmaiden"
            ship: "Naboo Royal N-1 Starfighter"
            threat: 2
            upgrades: [
                "Plasma Torpedoes"
                "R5 Astromech"
            ]
        }
        {
            id: 367
            faction: "Separatist Alliance"
            pilot: "Baktoid Prototype"
            ship: "Hyena-class Droid Bomber"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Barrage Rockets"
                "Hull Upgrade"
            ]
        }
        {
            id: 368
            faction: "Separatist Alliance"
            pilot: "Bombardment Drone"
            ship: "Hyena-class Droid Bomber"
            threat: 2
            upgrades: [
                "Trajectory Simulator"
                "Delayed Fuses"
                "Bomblet Generator"
            ]
        }
        {
            id: 369
            faction: "Separatist Alliance"
            pilot: "DBS-32C"
            ship: "Hyena-class Droid Bomber"
            threat: 2
            upgrades: [
                "TA-175"
                "Stealth Device"
                "Landing Struts"
            ]
        }
        {
            id: 370
            faction: "Separatist Alliance"
            pilot: "DBS-404"
            ship: "Hyena-class Droid Bomber"
            threat: 2
            upgrades: [
                "Predator"
                "Plasma Torpedoes"
                "Afterburners"
                "Landing Struts"
            ]
        }
        {
            id: 371
            faction: "Separatist Alliance"
            pilot: "Separatist Bomber"
            ship: "Hyena-class Droid Bomber"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Diamond-Boron Missiles"
            ]
        }
        {
            id: 372
            faction: "Separatist Alliance"
            pilot: "Techno Union Bomber"
            ship: "Hyena-class Droid Bomber"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Electro-Proton Bomb"
                "Delayed Fuses"
            ]
        }
        {
            id: 373
            faction: "Galactic Republic"
            pilot: "Plo Koon"
            ship: "Delta-7 Aethersprite"
            threat: [5,6,7,8]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Synchronized Console"
                "Brilliant Evasion"
                "Delta-7B"
            ]
            wingmateId: 374
            wingleader: true
        }
        {
            id: 374
            faction: "Galactic Republic"
            pilot: "Gold Squadron Trooper"
            ship: "V-19 Torrent Starfighter"
            suffix: ", Plo Koons wing"
            threat: '*'
            upgrades: [
                "Concussion Missiles"
                "Synchronized Console"
            ]
            linkedId: 373
            wingmate: true
        }
        {
            id: 375
            faction: "Rebel Alliance"
            pilot: "Echo Base Evacuees"
            ship: "GR-75 Medium Transport"
            threat: 4
            upgrades: [
                "Bright Hope"
                "Optimized Power Core"
                "Adaptive Shields"
                "Comms Team"
                "Point-Defense Battery"
                "Carlist Rieekan"
                "Novice Technician"
            ]
        }
        {
            id: 376
            faction: "Rebel Alliance"
            pilot: "Alderaanian Guard"
            ship: "CR90 Corellian Corvette"
            threat: 9
            upgrades: [
                "Dodonna's Pride"
                "Comms Team"
                "Boosted Scanners"
                "Sensor Experts"
                "Turbolaser Battery"
                "Ion Cannon Battery"
                "Jan Dodonna"
                "Toryn Farr"
            ]
        }
        {
            id: 377
            faction: "Galactic Empire"
            pilot: "Outer Rim Garrison"
            ship: "Gozanti-class Cruiser"
            threat: 5
            upgrades: [
                "Requiem"
                "Optimized Power Core"
                "Boosted Scanners"
                "Sensor Experts"
                "Comms Team"
                "Dorsal Turret"
                "Targeting Battery"
                "Strategic Commander"
            ]
        }
        {
            id: 378
            faction: "Galactic Empire"
            pilot: "Outer Rim Patrol"
            ship: "Raider-class Corvette"
            threat: 9
            upgrades: [
                "Impetuous"
                "Boosted Scanners"
                "Bombardment Specialists"
                "Ordnance Team"
                "Concussion Missiles"
                "Adv. Proton Torpedoes"
                "Turbolaser Battery"
                "Ordnance Tubes"
                "Captain Needa"
            ]
        }
        {
            id: 379
            faction: "Scum and Villainy"
            pilot: "Syndicate Smugglers"
            ship: "C-ROC Cruiser"
            threat: 5
            upgrades: [
                "Merchant One"
                "Quick-Release Locks"
                "Tibanna Reserves"
                "Adaptive Shields"
                "IG-RM Droids"
                "Comms Team"
                "Dorsal Turret"
                "Point-Defense Battery"
                "Azmorigan"
                "Novice Technician"
            ]
        }
        {
            id: 380
            faction: "Resistance"
            pilot: "Colossus Station Mechanic"
            ship: "Fireball"
            threat: 1
            upgrades: [
                "Snap Shot"
            ]
        }
        {
            id: 381
            faction: "Resistance"
            pilot: "Jarek Yeager"
            ship: "Fireball"
            threat: 2
            upgrades: [
                "Targeting Computer"
                "Advanced SLAM"
                "Mag-Pulse Warheads"
                "Elusive"
            ]
        }
        {
            id: 382
            faction: "Resistance"
            pilot: "Kazuda Xiono"
            ship: "Fireball"
            threat: 2
            upgrades: [
                "Kaz's Fireball"
                "Advanced SLAM"
                "Coaxium Hyperfuel"
                "R1-J5"
                "Outmaneuver"
            ]
        }
        {
            id: 383
            faction: "Resistance"
            pilot: "R1-J5"
            ship: "Fireball"
            threat: 2
            upgrades: [
                "Targeting Computer"
                "Afterburners"
                "Mag-Pulse Warheads"
                "Coaxium Hyperfuel"
            ]
        }
        {
            id: 384
            faction: "Resistance"
            pilot: "New Republic Volunteers"
            ship: "GR-75 Medium Transport"
            threat: 4
            upgrades: [
                "Tibanna Reserves"
                "Boosted Scanners"
                "Sensor Experts"
                "Dorsal Turret"
                "Ion Cannon Battery"
                "Stalwart Captain"
            ]
        }
        {
            id: 385
            faction: "First Order"
            pilot: "Major Vonreg"
            ship: "TIE/ba Interceptor"
            threat: 3
            upgrades: [
                "Mag-Pulse Warheads"
                "Deuterium Power Cells"
                "Outmaneuver"
            ]
        }
        {
            id: 386
            faction: "First Order"
            pilot: '"Holo"'
            ship: "TIE/ba Interceptor"
            threat: 3
            upgrades: [
                "Hull Upgrade"
                "Munitions Failsafe"
                "Mag-Pulse Warheads"
                "Proud Tradition"
            ]
        }
        {
            id: 387
            faction: "First Order"
            pilot: '"Ember"'
            ship: "TIE/ba Interceptor"
            threat: 3
            upgrades: [
                "Afterburners"
                "Concussion Missiles"
                "Predator"
                "Elusive"
            ]
        }
        {
            id: 388
            faction: "First Order"
            pilot: "First Order Provocateur"
            ship: "TIE/ba Interceptor"
            threat: 2
            upgrades: [
                "Snap Shot"
            ]
        }
        {
            id: 389
            faction: "First Order"
            pilot: "First Order Sympathizers"
            ship: "Gozanti-class Cruiser"
            threat: 4
            upgrades: [
                "Adaptive Shields"
                "Gunnery Specialists"
                "Damage Control Team"
                "Point-Defense Battery"
                "Strategic Commander"
            ]
        }
        {
            id: 390
            faction: "First Order"
            pilot: "First Order Collaborators"
            ship: "Raider-class Corvette"
            threat: 8
            upgrades: [
                "Boosted Scanners"
                "Comms Team"
                "Bombardment Specialists"
                "Point-Defense Battery"
                "Ion Cannon Battery"
                "Stalwart Captain"
                "Novice Technician"
            ]
        }
        {
            id: 391
            faction: "Galactic Republic"
            pilot: "Shadow Squadron Veteran"
            ship: "BTL-B Y-wing"
            threat: 3
            upgrades: [
                "R5 Astromech"
                "Proton Torpedoes"
                "Ion Cannon Turret"
                "Snap Shot"
            ]
        }
        {
            id: 392
            faction: "Galactic Republic"
            pilot: "Anakin Skywalker (Y-Wing)"
            ship: "BTL-B Y-wing"
            threat: 4
            upgrades: [
                "Proton Bombs"
                "R2 Astromech"
                "Ahsoka Tano"
                "Proton Torpedoes"
                "Ion Cannon Turret"
                "Precognitive Reflexes"
            ]
        }
        {
            id: 393
            faction: "Galactic Republic"
            pilot: "R2-D2"
            ship: "BTL-B Y-wing"
            threat: 2
            upgrades: [
                "Proton Bombs"
                "C-3PO"
                "Ion Cannon Turret"
            ]
        }
        {
            id: 394
            faction: "Galactic Republic"
            pilot: '"Odd Ball" (Y-Wing)'
            ship: "BTL-B Y-wing"
            threat: 3
            upgrades: [
                "Hull Upgrade"
                "R3 Astromech"
                "Proton Torpedoes"
                "Ion Cannon Turret"
                "Predator"
            ]
        }
        {
            id: 395
            faction: "Galactic Republic"
            pilot: '"Matchstick"'
            ship: "BTL-B Y-wing"
            threat: 3
            upgrades: [
                "Shield Upgrade"
                "Delayed Fuses"
                "Proton Bombs"
                "R2 Astromech"
                "Ion Cannon Turret"
                "Elusive"
            ]
        }
        {
            id: 396
            faction: "Galactic Republic"
            pilot: '"Broadside"'
            ship: "BTL-B Y-wing"
            threat: 2
            upgrades: [
                "Hull Upgrade"
                "R5 Astromech"
                "Ion Cannon Turret"
                "Snap Shot"
            ]
        }
        {
            id: 397
            faction: "Galactic Republic"
            pilot: '"Goji"'
            ship: "BTL-B Y-wing"
            threat: 2
            upgrades: [
                "Afterburners"
                "Electro-Proton Bomb"
            ]
        }
        {
            id: 398
            faction: "Galactic Republic"
            pilot: "Red Squadron Bomber"
            ship: "BTL-B Y-wing"
            threat: 2
            upgrades: [
                "Delayed Fuses"
                "Proton Bombs"
                "R2 Astromech"
                "Ion Cannon Turret"
            ]
        }
        {
            id: 399
            faction: "Galactic Republic"
            pilot: "Republic Judiciary"
            ship: "CR90 Corellian Corvette"
            threat: 9
            upgrades: [
                "Strategic Commander"
                "Targeting Battery"
                "Turbolaser Battery"
                "Damage Control Team"
                "Agile Gunner"
                "Boosted Scanners"
                "Gunnery Specialists"
                "Seasoned Navigator"
            ]
        }
        {
            id: 400
            faction: "Separatist Alliance"
            pilot: "Stalgasin Hive Guard"
            ship: "Nantex-Class Starfighter"
            threat: 2
            upgrades: [
                "Targeting Computer"
                "Gravitic Deflection"
                "Ensnare"
            ]
        }
        {
            id: 401
            faction: "Separatist Alliance"
            pilot: "Sun Fac"
            ship: "Nantex-Class Starfighter"
            threat: 3
            upgrades: [
                "Shield Upgrade"
                "Afterburners"
                "Predator"
                "Ensnare"
            ]
        }
        {
            id: 402
            faction: "Separatist Alliance"
            pilot: "Berwer Kret"
            ship: "Nantex-Class Starfighter"
            threat: 2
            upgrades: [
                "Hull Upgrade"
                "Snap Shot"
                "Ensnare"
            ]
        }
        {
            id: 403
            faction: "Separatist Alliance"
            pilot: "Chertek"
            ship: "Nantex-Class Starfighter"
            threat: 2
            upgrades: [
                "Targeting Computer"
                "Juke"
                "Gravitic Deflection"
            ]
        }
        {
            id: 404
            faction: "Separatist Alliance"
            pilot: "Gorgol"
            ship: "Nantex-Class Starfighter"
            threat: 2
            upgrades: [
                "Stealth Device"
                "Shield Upgrade"
                "Gravitic Deflection"
            ]
        }
        {
            id: 405
            faction: "Separatist Alliance"
            pilot: "Separatist Privateers"
            ship: "C-ROC Cruiser"
            threat: 6
            upgrades: [
                "Stalwart Captain"
                "Turbolaser Battery"
                "Dorsal Turret"
                "Heavy Laser Cannon"
                "Cluster Missiles"
                "Bombardment Specialists"
                "Boosted Scanners"
                "Tibanna Reserves"
                "Corsair Refit"
            ]
        }
        {
            id: 406
            faction: "Galactic Empire"
            pilot: "Darth Vader"
            ship: "TIE Advanced x1"
            threat: [6,7,8,9]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Agent of the Empire"
                "Fire-Control System"
                "Supernatural Reflexes"
                "Cluster Missiles"
            ]
            wingmateId: 407
            wingleader: true
        }
        {
            id: 407
            faction: "Galactic Empire"
            pilot: "Black Squadron Ace"
            ship: "TIE/ln Fighter"
            suffix: ", Darth Vaders wing"
            threat: '*'
            upgrades: [
                "Crack Shot"
            ]
            linkedId: 406
            wingmate: true
        }
        {
            id: 408
            faction: "Resistance"
            pilot: "Poe Dameron"
            ship: "T-70 X-wing"
            threat: [9,11,13,15]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Targeting Synchronizer"
                "BB-8"
                "Black One"
            ]
            wingmateId: 409
            wingleader: true
        }
        {
            id: 409
            faction: "Resistance"
            pilot: "Black Squadron Ace (T-70)"
            ship: "T-70 X-wing"
            suffix: ", Poe Damerons wing"
            threat: '*'
            upgrades: [
                "Proton Torpedoes"
            ]
            linkedId: 408
            wingmate: true
        }
        {
            id: 410
            faction: "First Order"
            pilot: "Kylo Ren"
            ship: "TIE/vn Silencer"
            threat: [6,8]
            wingmates: [2,3]
            suffix: " and his wing"
            upgrades: [
                "First Order Elite"
                "Heightened Perception"
                "Dreadnought Hunter"
                "Proton Torpedoes"
            ]
            wingmateId: 411
            wingleader: true
        }
        {
            id: 411
            faction: "First Order"
            pilot: "Omega Squadron Expert"
            ship: "TIE/sf Fighter"
            suffix: ", Kylo Rens wing"
            threat: '*'
            upgrades: [
                "Ion Missiles"
                "Special Forces Gunner"
            ]
            linkedId: 410
            wingmate: true
        }
        {
            id: 412
            faction: "Separatist Alliance"
            pilot: "General Grievous"
            ship: "Belbullab-22 Starfighter"
            threat: [5,6,7,8]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Kraken"
                "Predator"
                "Soulless One"
            ]
            wingmateId: 413
            wingleader: true
        }
        {
            id: 413
            faction: "Separatist Alliance"
            pilot: "Separatist Drone"
            ship: "Vulture-class Droid Fighter"
            suffix: ", General Grievous wing"
            threat: '*'
            upgrades: [
                "Energy-Shell Charges"
            ]
            linkedId: 412
            wingmate: true
        }
        {
            id: 414
            faction: "Rebel Alliance"
            pilot: "Luke Skywalker"
            ship: "T-65 X-wing"
            threat: [8,10,12,14]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Proton Torpedoes"
                "Instinctive Aim"
                "R2-D2"
                "Servomotor S-Foils"
            ]
            wingmateId: 415
            wingleader: true
        }
        {
            id: 415
            faction: "Rebel Alliance"
            pilot: "Red Squadron Veteran"
            ship: "T-65 X-wing"
            suffix: ", Luke Skywalkers wing"
            threat: '*'
            upgrades: [
                "Proton Torpedoes"
            ]
            linkedId: 414
            wingmate: true
        }
        {
            id: 416
            faction: "Scum and Villainy"
            pilot: "Fenn Rau"
            ship: "Fang Fighter"
            threat: [8,10,12,14]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Veteran Wing Leader"
                "Fearless"
                "Daredevil"
                "Afterburners"
            ]
            wingmateId: 417
            wingleader: true
        }
        {
            id: 417
            faction: "Scum and Villainy"
            pilot: "Skull Squadron Pilot"
            ship: "Fang Fighter"
            suffix: ", Fenn Raus wing"
            threat: '*'
            upgrades: [
                "Fearless"
            ]
            linkedId: 416
            wingmate: true
        }
        {
            id: 418
            faction: "Rebel Alliance"
            pilot: "Gina Moonsong"
            ship: "A/SF-01 B-wing"
            threat: 3
            upgrades: [
                "Elusive"
                "Afterburners"
                "Passive Sensors"
                "Stabilized S-Foils"
                "Autoblasters"
            ]
        }
        {
            id: 419
            faction: "Rebel Alliance"
            pilot: "Leia Organa"
            ship: "Modified YT-1300 Light Freighter"
            threat: 4
            upgrades: [
                "Chewbacca"
                "Millennium Falcon"
                "Lando Calrissian"
                "Engine Upgrade"
                "R2-D2"
            ]
        }
        {
            id: 420
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Pilot"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Stabilized S-Foils"
                "Plasma Torpedoes"
            ]
        }
        {
            id: 421
            faction: "Rebel Alliance"
            pilot: "Blade Squadron Veteran"
            ship: "A/SF-01 B-wing"
            threat: 3
            upgrades: [
                "Snap Shot"
                "Stabilized S-Foils"
                "Autoblasters"
                "Proton Torpedoes"
                "Angled Deflectors"
            ]
        }
        {
            id: 422
            faction: "Rebel Alliance"
            pilot: "Outer Rim Smuggler"
            ship: "Modified YT-1300 Light Freighter"
            threat: 3
            upgrades: [
                "Homing Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 423
            faction: "Rebel Alliance"
            pilot: "Alexsandr Kallus"
            ship: "VCX-100 Light Freighter"
            threat: 4
            upgrades: [
                "Passive Sensors"
                "Ghost"
                "Proton Torpedoes"
                "Shield Upgrade"
                '"Zeb" Orrelios'
            ]
        }
        {
            id: 424
            faction: "Rebel Alliance"
            pilot: "Lothal Rebel"
            ship: "VCX-100 Light Freighter"
            threat: 3
            upgrades: [
                "Passive Sensors"
                "Plasma Torpedoes"
            ]
        }
        {
            id: 425
            faction: "Rebel Alliance"
            pilot: "Partisan Renegade"
            ship: "UT-60D U-wing"
            threat: 3
            upgrades: [
                "Magva Yarro"
                "Deadman's Switch"
                "Pivot Wing"
                "Saw Gerrera"
            ]
        }
        {
            id: 426
            faction: "Resistance"
            pilot: "Blue Squadron Recruit"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Primed Thrusters"
                "Composure"
                "Snap Shot"
            ]
        }
        {
            id: 427
            faction: "Resistance"
            pilot: "Ronith Blario"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Mag-Pulse Warheads"
                "Pattern Analyzer"
                "Snap Shot"
            ]
        }
        {
            id: 428
            faction: "Resistance"
            pilot: "Zizi Tlo"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Advanced Optics"
                "Snap Shot"
                "Afterburners"
            ]
        }
        {
            id: 429
            faction: "Resistance"
            pilot: "Cobalt Squadron Bomber"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Passive Sensors"
                "Conner Nets"
                "Hull Upgrade"
                "Agile Gunner"
            ]
        }
        {
            id: 430
            faction: "Resistance"
            pilot: "Paige Tico"
            ship: "MG-100 StarFortress"
            threat: 3
            upgrades: [
                "Rose Tico"
                "Proton Bombs"
                "Skilled Bombardier"
            ]
        }
        {
            id: 431
            faction: "Scum and Villainy"
            pilot: "Bossk"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Predator"
                "Snap Shot"
                "Afterburners"
            ]
        }
        {
            id: 432
            faction: "Scum and Villainy"
            pilot: "Binayre Pirate"
            ship: "Z-95-AF4 Headhunter"
            threat: 2
            upgrades: [
                "Concussion Missiles"
                "Snap Shot"
                "Afterburners"
            ]
        }
        {
            id: 433
            faction: "Scum and Villainy"
            pilot: "Black Sun Soldier"
            ship: "Z-95-AF4 Headhunter"
            threat: 1
            upgrades: [
                "Composure"
            ]
        }
        {
            id: 434
            faction: "Scum and Villainy"
            pilot: "Contracted Scout"
            ship: "JumpMaster 5000"
            threat: 2
            upgrades: [
                "Plasma Torpedoes"
            ]
        }
        {
            id: 435
            faction: "Scum and Villainy"
            pilot: "Nom Lumb"
            ship: "JumpMaster 5000"
            threat: 3
            upgrades: [
                "Proton Torpedoes"
                "Snap Shot"
                "Afterburners"
                "Dengar"
                "Deadman's Switch"
            ]
        }
        {
            id: 436
            faction: "Scum and Villainy"
            pilot: "Tansarii Point Veteran"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Munitions Failsafe"
                "Plasma Torpedoes"
            ]
        }
        {
            id: 437
            faction: "Scum and Villainy"
            pilot: "G4R-GOR V/M"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Intimidation"
                "Shield Upgrade"
                "Deadman's Switch"
                "Autoblasters"
            ]
        }
        {
            id: 438
            faction: "Scum and Villainy"
            pilot: "Cartel Spacer"
            ship: "M3-A Interceptor"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Shield Upgrade"
                "Autoblasters"
            ]
        }
        {
            id: 439
            faction: "Galactic Empire"
            pilot: "Patrol Leader"
            ship: "VT-49 Decimator"
            threat: 3
            upgrades: [
                "Hull Upgrade"
                "Tactical Scrambler"
            ]
        }
        {
            id: 440
            faction: "Galactic Empire"
            pilot: "Morna Kee"
            ship: "VT-49 Decimator"
            threat: 4
            upgrades: [
                "Shield Upgrade"
                "Plasma Torpedoes"
                "Proximity Mines"
                'GNK "Gonk" Droid'
            ]
        }
        {
            id: 441
            faction: "Galactic Empire"
            pilot: "Black Squadron Scout"
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Targeting Computer"
            ]
        }
        {
            id: 442
            faction: "Galactic Empire"
            pilot: '"Vagabond"'
            ship: "TIE/sk Striker"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Afterburners"
                "Skilled Bombardier"
                "Proton Bombs"
            ]
        }
        {
            id: 443
            faction: "Galactic Empire"
            pilot: "Planetary Sentinel"
            ship: "TIE/sk Striker"
            threat: 2
            upgrades: [
                "Conner Nets"
                "Trick Shot"
            ]
        }
        {
            id: 444
            faction: "Galactic Empire"
            pilot: "Inquisitor"
            ship: "TIE Advanced v1"
            threat: 2
            upgrades: [
                "Brilliant Evasion"
                "Afterburners"
            ]
        }
        {
            id: 445
            faction: "Galactic Empire"
            pilot: "Baron of the Empire"
            ship: "TIE Advanced v1"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Mag-Pulse Warheads"
            ]
        }
        {
            id: 446
            faction: "Galactic Empire"
            pilot: "Fifth Brother"
            ship: "TIE Advanced v1"
            threat: 2
            upgrades: [
                "Foresight"
            ]
        }
        {
            id: 447
            faction: "First Order"
            pilot: "Zeta Squadron Survivor"
            ship: "TIE/sf Fighter"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Advanced Optics"
                "Proud Tradition"
            ]
        }
        {
            id: 448
            faction: "First Order"
            pilot: "Lieutenant LeHuse"
            ship: "TIE/sf Fighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Mag-Pulse Warheads"
                "Angled Deflectors"
            ]
        }
        {
            id: 449
            faction: "First Order"
            pilot: "Captain Phasma"
            ship: "TIE/sf Fighter"
            threat: 3
            upgrades: [
                "Advanced Optics"
                "Ion Missiles"
                "Special Forces Gunner"
                "Outmaneuver"
                "Shield Upgrade"
            ]
        }
        {
            id: 450
            faction: "First Order"
            pilot: "First Order Test Pilot"
            ship: "TIE/vn Silencer"
            threat: 3
            upgrades: [
                "Proud Tradition"
                "Plasma Torpedoes"
                "Passive Sensors"
            ]
        }
        {
            id: 451
            faction: "First Order"
            pilot: "Sienar-Jaemus Engineer"
            ship: "TIE/vn Silencer"
            threat: 3
            upgrades: [
                "Afterburners"
                "Mag-Pulse Warheads"
                "Passive Sensors"
                "Snap Shot"
            ]
        }
        {
            id: 452
            faction: "First Order"
            pilot: '"Rush"'
            ship: "TIE/vn Silencer"
            threat: 3
            upgrades: [
                "Primed Thrusters"
                "Angled Deflectors"
                "Proton Torpedoes"
            ]
        }
        {
            id: 453
            faction: "Galactic Empire"
            pilot: "Seventh Sister"
            ship: "TIE Advanced v1"
            threat: 3
            upgrades: [
                "Predictive Shot"
                "Proton Rockets"
                "Afterburners"
                "Hull Upgrade"
            ]
        }
        {
            id: 454
            faction: "Galactic Empire"
            pilot: "Inquisitor"
            ship: "TIE Advanced v1"
            threat: 2
            upgrades: [
                "Heightened Perception"
                "Proton Rockets"
            ]
        }
        {
            id: 455
            faction: "Galactic Empire"
            pilot: "Grand Inquisitor"
            ship: "TIE Advanced v1"
            threat: 3
            upgrades: [
                "Hate"
                "Proton Rockets"
                "Shield Upgrade"
            ]
        }
        {
            id: 456
            faction: "Galactic Empire"
            pilot: "Baron of the Empire"
            ship: "TIE Advanced v1"
            threat: 3
            upgrades: [
                "Elusive"
                "Outmaneuver"
                "Afterburners"
            ]
        }
        {
            id: 457
            faction: "First Order"
            pilot: "First Order Courier"
            ship: "Xi-class Light Shuttle"
            threat: 2
            upgrades: [
                "Tactical Officer"
                "Automated Target Priority"
                "Shield Upgrade"
            ]
        }
        {
            id: 458
            faction: "First Order"
            pilot: "Gideon Hask (Xi Shuttle)"
            ship: "Xi-class Light Shuttle"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "Sensor Buoy Suite"
                "Commander Pyre"
                "Rigged Cargo Chute"
            ]
        }
        {
            id: 459
            faction: "First Order"
            pilot: "Commander Malarus (Xi Shuttle)"
            ship: "Xi-class Light Shuttle"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Sensor Buoy Suite"
                "Agent Terex"
                "Hull Upgrade"
            ]
        }
        {
            id: 460
            faction: "First Order"
            pilot: "Agent Terex"
            ship: "Xi-class Light Shuttle"
            threat: 2
            upgrades: [
                "Inertial Dampeners"
                "Deadman's Switch"
                "Commander Malarus"
                "Contraband Cybernetics"
            ]
        }
        {
            id: 461
            faction: "Galactic Empire"
            pilot: "Carida Academy Cadet"
            ship: "TIE/rb Heavy"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Maneuver-Assist MGK-300"
                "Synced Laser Cannons"
            ]
        }
        {
            id: 462
            faction: "Galactic Empire"
            pilot: "Lyttan Dree"
            ship: "TIE/rb Heavy"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "Ion Cannon"
                "Heavy Laser Cannon"
                "Maneuver-Assist MGK-300"
            ]
        }
        {
            id: 463
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Sentry"
            ship: "TIE/rb Heavy"
            threat: 2
            upgrades: [
                "Ion Limiter Override"
                "Shield Upgrade"
                "Heavy Laser Cannon"
                "Maneuver-Assist MGK-300"
            ]
        }
        {
            id: 464
            faction: "Galactic Empire"
            pilot: '"Rampage"'
            ship: "TIE/rb Heavy"
            threat: 3
            upgrades: [
                "Predator"
                "Afterburners"
                "Maneuver-Assist MGK-300"
                "Synced Laser Cannons"
                "Ablative Plating"
            ]
        }
        {
            id: 465
            faction: "Galactic Republic"
            pilot: '"Odd Ball"'
            ship: "Nimbus-class V-wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Ion Limiter Override"
                "Q7 Astromech"
                "Precision Ion Engines"
            ]
        }
        {
            id: 466
            faction: "Galactic Republic"
            pilot: "Wilhuff Tarkin"
            ship: "Nimbus-class V-wing"
            threat: 2
            upgrades: [
                "R3 Astromech"
                'Alpha-3E "Esk"'
            ]
        }
        {
            id: 467
            faction: "Galactic Republic"
            pilot: "Loyalist Volunteer"
            ship: "Nimbus-class V-wing"
            threat: 1
        }
        {
            id: 468
            faction: "Galactic Republic"
            pilot: '"Contrail"'
            ship: "Nimbus-class V-wing"
            threat: 4
            upgrades: [
                "Ion Limiter Override"
                "R7-A7"
                "Precision Ion Engines"
            ]
        }
        {
            id: 469
            faction: "Galactic Republic"
            pilot: '"Klick"'
            ship: "Nimbus-class V-wing"
            threat: 4
            upgrades: [
                "R3 Astromech" 
                "Thermal Detonators"
                'Alpha-3B "Besh"'
            ]
        }
        {
            id: 470
            faction: "Galactic Republic"
            pilot: "Shadow Squadron Escort"
            ship: "Nimbus-class V-wing"
            threat: 2
            upgrades: [
                "Outmaneuver" 
                "R2 Astromech"
                'Alpha-3E "Esk"'
            ]
        } 
        {
            id: 471
            faction: "Galactic Republic"
            pilot: "Anakin Skywalker (Eta-2)"
            ship: "Eta-2 Actis"
            threat: 4
            upgrades: [
                "Marg Sabl Closure"
                "Extreme Maneuvers"
                "R2-D2 (Republic)"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 472
            faction: "Galactic Republic"
            pilot: "Yoda"
            ship: "Eta-2 Actis"
            threat: 3
            upgrades: [
                "Heightened Perception"
                "Patience"
                "Sense"
                "R2-D2 (Republic)"
            ]
        }
        {
            id: 473
            faction: "Galactic Republic"
            pilot: "Obi-Wan Kenobi (Eta-2)"
            ship: "Eta-2 Actis"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Patience"
                "R5 Astromech"
                "Hull Upgrade"
            ]
        }
        {
            id: 474
            faction: "Galactic Republic"
            pilot: "Aayla Secura"
            ship: "Eta-2 Actis"
            threat: 3
            upgrades: [
                "Predator"
                "Supernatural Reflexes"
                "R3 Astromech"
            ]
        }
        {
            id: 475
            faction: "Galactic Republic"
            pilot: "Shaak Ti"
            ship: "Eta-2 Actis"
            threat: 2
            upgrades: [
                "Elusive"
                "Patience"
            ]
        }
        {
            id: 476
            faction: "Galactic Republic"
            pilot: "Jedi General"
            ship: "Eta-2 Actis"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Extreme Maneuvers"
            ]
        }
        {
            id: 477
            faction: "Galactic Republic"
            pilot: "Aayla Secura"
            ship: "Eta-2 Actis"
            threat: [5, 7, 8, 9]
            wingmates: [2, 3, 4, 5]
            suffix: " and her wing"
            upgrades: [
                "Jedi Commander"
                "Supernatural Reflexes"
                "Q7 Astromech"
            ]
            wingmateId: 478
            wingleader: true
        }
        {
            id: 478
            faction: "Galactic Republic"
            pilot: "Shadow Squadron Escort"
            ship: "Nimbus-class V-wing"
            suffix: ", Aayla Secura's wing"
            threat: '*'
            upgrades: [
                "Q7 Astromech"
                'Alpha-3B "Besh"'
            ]
            linkedId: 477
            wingmate: true
        }
        {
            id: 479
            faction: "Rebel Alliance"
            pilot: "Han Solo"
            ship: "Modified YT-1300 Light Freighter"
            threat: 5
            upgrades: [
                "C-3PO"
                "Leia Organa"
                "Chewbacca"
                "Rigged Cargo Chute"
                "Millennium Falcon"
            ]
        }
        {
            id: 480 
            faction: "Rebel Alliance"
            pilot: "Blade Squadron Veteran"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Predator"
                "Jamming Beam"
                "Ion Cannon"
            ]
        }
        {
            id: 481 
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Pilot"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Adv. Proton Torpedoes"
            ]
        }
        {
            id: 482 
            faction: "Rebel Alliance"
            pilot: "Blue Squadron Pilot"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Passive Sensors"
                "Stabilized S-Foils"
                "Autoblasters"
            ]
        }
        {
            id: 483 
            faction: "Rebel Alliance"
            pilot: "Netrem Pollard"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Debris Gambit"
                "Stabilized S-Foils"
                "Autoblasters"
            ]
        }
        {
            id: 484
            faction: "Rebel Alliance"
            pilot: "Ten Numb"
            ship: "A/SF-01 B-wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Electronic Baffle"
            ]
        }
        {
            id: 485
            faction: "Rebel Alliance"
            pilot: "Blade Squadron Veteran"
            ship: "A/SF-01 B-wing"
            threat: 3
            upgrades: [
                "Saturation Salvo"
                "Plasma Torpedoes"
                "Stabilized S-Foils"
                "Passive Sensors"
                "Shield Upgrade"
                "Synced Laser Cannons"
            ]
        }
        {
            id: 486
            faction: "Rebel Alliance"
            pilot: "Braylen Stramm"
            ship: "A/SF-01 B-wing"
            threat: 3
            upgrades: [
                "Squad Leader"
                "Jamming Beam"
                "Heavy Laser Cannon"
                "Electronic Baffle"
            ]
        }
        {
            id: 487
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla (B-Wing)"
            ship: "A/SF-01 B-wing"
            threat: 3
            upgrades: [
                "B6 Blade Wing Prototype (Epic)"
                "Passive Sensors"
                "Deadeye Shot"
                "Sabine Wren (Gunner)"
            ]
        }
        {
            id: 488
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "RZ-1 A-wing"
            threat: 1
            upgrades: [
                "Hopeful"
            ]
        }
        {
            id: 489
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "RZ-1 A-wing"
            threat: 1
            upgrades: [
                "Elusive"
            ]
        }
        {
            id: 490
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "RZ-1 A-wing"
            threat: 1
            upgrades: [
                "Marg Sabl Closure"
            ]
        }
        {
            id: 491
            faction: "Rebel Alliance"
            pilot: "Ahsoka Tano (A-Wing)"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Patience"
                "Sense"
            ]
        }
        {
            id: 492
            faction: "Rebel Alliance"
            pilot: "Arvel Crynyd"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Intimidation"
                "Concussion Missiles"
                "Juke"
            ]
        }
        {
            id: 493
            faction: "Rebel Alliance"
            pilot: "Derek Klivian"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Mag-Pulse Warheads"
            ]
        }
        {
            id: 494
            faction: "Rebel Alliance"
            pilot: "Green Squadron Pilot"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Juke"
                "Outmaneuver"
                "Hull Upgrade"
            ]
        }
        {
            id: 495
            faction: "Rebel Alliance"
            pilot: "Green Squadron Pilot"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Starbird Slash"
                "Vectored Cannons (RZ-1)"
                "Mag-Pulse Warheads"
            ]
        }
        {
            id: 496
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla (A-Wing)"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Hopeful"
            ]
        }
        {
            id: 497
            faction: "Rebel Alliance"
            pilot: "Jake Farrell"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Cluster Missiles"
                "Outmaneuver"
            ]
        }
        {
            id: 498
            faction: "Rebel Alliance"
            pilot: "Jake Farrell"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Daredevil"
                "Proton Rockets"
                "Juke"
            ]
        }
        {
            id: 499
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Daredevil"
                "Proton Rockets"
                "Afterburners"
            ]
        }
        {
            id: 500
            faction: "Rebel Alliance"
            pilot: "Sabine Wren (A-Wing)"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
            ]
        }
        {
            id: 501
            faction: "Rebel Alliance"
            pilot: "Shara Bey (A-Wing)"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Vectored Cannons (RZ-1)"
                "Starbird Slash"
            ]
        }
        {
            id: 502
            faction: "Rebel Alliance"
            pilot: "Wedge Antilles (A-Wing)"
            ship: "RZ-1 A-wing"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "XX-23 S-Thread Tracers"
            ]
        }
        {
            id: 503
            faction: "Rebel Alliance"
            pilot: "Hera Syndulla (VCX-100)"
            ship: "VCX-100 Light Freighter"
            threat: [6, 7, 8, 9]
            wingmates: [1, 2, 3, 4]
            suffix: " + Phantom and her wing"
            upgrades: [
                "Phoenix Squadron"
                "Sabine Wren (Gunner)"
                "Dorsal Turret"
                "Ghost"
            ]
            wingmateId: 504
            wingleader: true
            linkedId: 505
        }
        {
            id: 504
            faction: "Rebel Alliance"
            pilot: "Phoenix Squadron Pilot"
            ship: "RZ-1 A-wing"
            suffix: ", Heras wing"
            threat: '*'
            upgrades: [
                "Hopeful"
            ]
            linkedId: 503
            wingmate: true
        }
        {
            id: 505
            faction: "Rebel Alliance"
            pilot: '"Zeb" Orrelios (Sheathipede)'
            ship: "Sheathipede-Class Shuttle"
            suffix: ", Heras wing"
            threat: '*'
            upgrades: [
                '"Chopper" (Crew)'
                "Phantom"
            ]
            linkedId: 503
        }
        {
            id: 506
            faction: "Galactic Empire"
            pilot: "Captain Dobbs"
            ship: "TIE/d Defender"
            threat: 3 
            upgrades: [
                "Disciplined"
                "TIE Defender Elite"
                "Tractor Beam"
            ]
        }
        {
            id: 507
            faction: "Galactic Empire"
            pilot: "Delta Squadron Pilot"
            ship: "TIE/d Defender"
            threat: 3 
            upgrades: [
                "Ion Cannon"
            ]
        }
        {
            id: 508
            faction: "Galactic Empire"
            pilot: "Delta Squadron Pilot"
            ship: "TIE/d Defender"
            threat: 3 
            upgrades: [
                "Autoblasters"
                "TIE Defender Elite"
            ]
        }
        {
            id: 509
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Ace"
            ship: "TIE/d Defender"
            threat: 3 
            upgrades: [
                "Interloper Turn"
                "TIE Defender Elite"
                "Tractor Beam"
            ]
        }
        {
            id: 510
            faction: "Galactic Empire"
            pilot: "Colonel Vessery"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "TIE Defender Elite"
                "Tractor Beam"
            ]
        }
        {
            id: 511
            faction: "Galactic Empire"
            pilot: "Countess Ryad"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Predator"
                "Advanced Sensors"
                "Tractor Beam"
                "Ion Missiles"
            ]
        }
        {
            id: 512
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Ace"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Advanced Sensors"
                "Shield Upgrade"
            ]
        }
        {
            id: 513
            faction: "Galactic Empire"
            pilot: "Rexler Brath"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Elusive"
                "Advanced Sensors"
                "Ion Missiles"
            ]
        }
        {
            id: 514
            faction: "Galactic Empire"
            pilot: "Vult Skerris"
            ship: "TIE/d Defender"
            threat: 4
            upgrades: [
                "Daredevil"
                "Mag-Pulse Warheads"
                "Predator"
                "TIE Defender Elite"
            ]
        }
        {
            id: 515
            faction: "Galactic Empire"
            pilot: "Darth Vader (TIE Defender)"
            ship: "TIE/d Defender"
            threat: 5
            upgrades: [
                "Sense"
                "Mag-Pulse Warheads"
                "TIE Defender Elite"
            ]
        }
        {
            id: 516
            faction: "Galactic Empire"
            pilot: "Alpha Squadron Pilot"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Hull Upgrade"
                "Shield Upgrade"
            ]
        }
        {
            id: 517
            faction: "Galactic Empire"
            pilot: "Alpha Squadron Pilot"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Disciplined"
                "Sensitive Controls"
                "Static Discharge Vanes"
            ]
        }
        {
            id: 518
            faction: "Galactic Empire"
            pilot: "Alpha Squadron Pilot"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Shield Upgrade"
                "Sensitive Controls"
                "Targeting Computer"
            ]
        }
        {
            id: 519
            faction: "Galactic Empire"
            pilot: "Ciena Ree"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Disciplined"
                "Sensitive Controls"
            ]
        }
        {
            id: 520
            faction: "Galactic Empire"
            pilot: "Commandant Goran"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Disciplined"
                "Sensitive Controls"
                "Marg Sabl Closure"
            ]
        }
        {
            id: 521
            faction: "Galactic Empire"
            pilot: "Lieutenant Lorrir"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Sensitive Controls"
            ]
        }
        {
            id: 522
            faction: "Galactic Empire"
            pilot: "Nash Windrider"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Daredevil"
                "Sensitive Controls"
                "Shield Upgrade"
            ]
        }
        {
            id: 523
            faction: "Galactic Empire"
            pilot: "Saber Squadron Ace"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Predator"
                "Shield Upgrade"
            ]
        }
        {
            id: 524
            faction: "Galactic Empire"
            pilot: "Saber Squadron Ace"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Daredevil"
                "Sensitive Controls"
                "Targeting Computer"
            ]
        }
        {
            id: 525
            faction: "Galactic Empire"
            pilot: "Turr Phennir"
            ship: "TIE/in Interceptor"
            threat: 2
            upgrades: [
                "Outmaneuver"
            ]
        }
        {
            id: 526
            faction: "Galactic Empire"
            pilot: "Gideon Hask (TIE Interceptor)"
            ship: "TIE/in Interceptor"
            threat: 3
            upgrades: [
                "Disciplined"
                "Sensitive Controls"
                "Targeting Computer"
                "Elusive"
                "Shield Upgrade"
            ]
        }
        {
            id: 527
            faction: "Galactic Empire"
            pilot: "Soontir Fel"
            ship: "TIE/in Interceptor"
            threat: 3
            upgrades: [
                "Daredevil"
                "Afterburners"
                "Predator"
                "Shield Upgrade"
            ]
        }
        {
            id: 528
            faction: "Galactic Empire"
            pilot: "Vult Skerris (TIE Interceptor)"
            ship: "TIE/in Interceptor"
            threat: 3
            upgrades: [
                "Daredevil"
                "Elusive"
                "Predator"
                "Sensitive Controls"
            ]
        }
        {
            id: 529
            faction: "Galactic Empire"
            pilot: "Commandant Goran"
            ship: "TIE/in Interceptor"
            threat: [4,5,6,7]
            wingmates: [2,3,4,5]
            suffix: " and his wing"
            upgrades: [
                "Skystrike Academy Class"
                "Disciplined"
                "Marg Sabl Closure"
                "Sensitive Controls"
            ]
            wingmateId: 530
            wingleader: true
        }
        {
            id: 530
            faction: "Galactic Republic"
            pilot: "Academy Pilot"
            ship: "TIE/ln Fighter"
            suffix: ", Commandant Gorans wing"
            threat: '*'
            upgrades: [
                "Disciplined"
            ]
            linkedId: 529
            wingmate: true
        }
        {
            id: 531
            faction: "Scum and Villainy"
            pilot: "Gamut Key"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Elusive"
                "Engine Upgrade"
                "False Transponder Codes"
            ]
        }
        {
            id: 532
            faction: "Scum and Villainy"
            pilot: "Kanan Jarrus (HWK-290)"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Patience"
                "Thermal Detonators"
            ]
        }
        {
            id: 533
            faction: "Scum and Villainy"
            pilot: "Spice Runner"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Hondo Ohnaka"
                "Concussion Bombs"
                "Engine Upgrade"
                "False Transponder Codes"
            ]
        }
        {
            id: 534
            faction: "Scum and Villainy"
            pilot: "Tápusk"
            ship: "HWK-290 Light Freighter"
            threat: 2
            upgrades: [
                "Cutthroat"
                "Gamut Key"
            ]
        }
        {
            id: 535
            faction: "Scum and Villainy"
            pilot: "Amaxine Warrior"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Cutthroat"
                "Thermal Detonators"
                "R5 Astromech"
            ]
        }
        {
            id: 536
            faction: "Scum and Villainy"
            pilot: "Arliz Hadrassian"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Predator"
                "R5-TK"
                "Suppressive Gunner"
                "Thermal Detonators"
            ]
        }
        {
            id: 537
            faction: "Scum and Villainy"
            pilot: "Jinata Security Officer"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Automated Target Priority"
                "Weapons Systems Officer"
                "Proton Torpedoes"
                "R3 Astromech"
            ]
        }
        {
            id: 538
            faction: "Scum and Villainy"
            pilot: "Padric"
            ship: "BTL-A4 Y-wing"
            threat: 2
            upgrades: [
                "Dorsal Turret"
                "Thermal Detonators"
                '"Genius"'
            ]
        }
        {
            id: 539
            faction: "Scum and Villainy"
            pilot: "Leema Kai"
            ship: "BTL-A4 Y-wing"
            threat: 3
            upgrades: [
                "Marg Sabl Closure"
                "Plasma Torpedoes"
                "Saturation Salvo"
                "Weapons Systems Officer"
                "Targeting Synchronizer"
                "R4-B11"
                "Ion Cannon Turret"
                "Concussion Bombs"
            ]
        }
        {
            id: 540 
            faction: "Resistance"
            pilot: "Blue Squadron Rookie"
            ship: "T-70 X-wing"
            threat: 2
            upgrades: [
                "Automated Target Priority"
                "R2 Astromech"
                "Integrated S-Foils"
            ]
        }
        {
            id: 541 
            faction: "Resistance"
            pilot: "Nimi Chireen"
            ship: "T-70 X-wing"
            threat: 2
            upgrades: [
                "Automated Target Priority"
                "Ion Cannon"
                "Integrated S-Foils"
            ]
        }
        {
            id: 542 
            faction: "Resistance"
            pilot: "Red Squadron Expert"
            ship: "T-70 X-wing"
            threat: 2
            upgrades: [
                "Predator"
                "Underslung Blaster Cannon"
                "Integrated S-Foils"
            ]
        }
        {
            id: 543 
            faction: "Resistance"
            pilot: "Black Squadron Ace (T-70)"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Deadeye Shot"
                "R3 Astromech"
                "Proton Torpedoes"
                "Afterburners"
                "Primed Thrusters"
                "Integrated S-Foils"
            ]
        }
        {
            id: 544 
            faction: "Resistance"
            pilot: "C'ai Threnalli"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Backwards Tailslide"
                "R4 Astromech"
                "Proton Torpedoes"
                "Primed Thrusters"
                "Integrated S-Foils"
            ]
        }
        {
            id: 545 
            faction: "Resistance"
            pilot: "Poe Dameron (HoH)"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Backwards Tailslide"
                "R2-D2 (Resistance)"
                "Black One"
                "Overdrive Thruster"
                "Integrated S-Foils"
                "Daredevil"
            ]
        }
        {
            id: 546 
            faction: "Resistance"
            pilot: "Temmin Wexley (HoH)"
            ship: "T-70 X-wing"
            threat: 3
            upgrades: [
                "Snap Shot"
                "R6-D8"
                "Underslung Blaster Cannon"
                "Integrated S-Foils"
                "Hull Upgrade"
            ]
        }
        {
            id: 547 
            faction: "Resistance"
            pilot: "Blue Squadron Recruit"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Concussion Missiles"
                "Automated Target Priority"
            ]
        }
        {
            id: 548 
            faction: "Resistance"
            pilot: "Green Squadron Expert"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Snap Shot"
                "Afterburners"
                "Primed Thrusters"
            ]
        }
        {
            id: 549 
            faction: "Resistance"
            pilot: "Merl Cobben"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "Predator"
                "Automated Target Priority"
                "Shield Upgrade"
            ]
        }
        {
            id: 550 
            faction: "Resistance"
            pilot: "Seftin Vanik"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Daredevil"
                "Snap Shot"
                "Hull Upgrade"
            ]
        }
        {
            id: 551 
            faction: "Resistance"
            pilot: "Suralinda Javos"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Starbird Slash"
                "Snap Shot"
                "Shield Upgrade"
                "Ion Missiles"
            ]
        }
        {
            id: 552 
            faction: "Resistance"
            pilot: "Wrobie Tyce"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Starbird Slash"
                "Elusive"
                "Concussion Missiles"
            ]
        }
        {
            id: 553 
            faction: "Resistance"
            pilot: "Wrobie Tyce"
            ship: "RZ-2 A-wing"
            threat: 2
            upgrades: [
                "Starbird Slash"
                "Elusive"
                "Concussion Missiles"
            ]
        }
        {
            id: 554 
            faction: "Separatist Alliance" 
            pilot: "Baktoid Drone"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Delayed Fuses"
                "Concussion Bombs"
                "Ion Missiles"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 555 
            faction: "Separatist Alliance" 
            pilot: "DGS-047"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Delayed Fuses"
                "Concussion Bombs"
                "Ion Missiles"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 556 
            faction: "Separatist Alliance" 
            pilot: "Geonosian Prototype"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Synced Laser Cannons"
                "Ion Missiles"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 557 
            faction: "Separatist Alliance" 
            pilot: "Onderon Oppressor"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Multi-Missile Pods"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 558 
            faction: "Separatist Alliance" 
            pilot: "Separatist Predator"
            ship: "HMP Droid Gunship"
            threat: 2
            upgrades: [
                "Multi-Missile Pods"
                "Concussion Bombs"
                "Hull Upgrade"
            ]
        }
        {
            id: 559 
            faction: "Separatist Alliance" 
            pilot: "DGS-286"
            ship: "HMP Droid Gunship"
            threat: 3
            upgrades: [
                "Multi-Missile Pods"
                "Concussion Bombs"
                "Shield Upgrade"
                "Afterburners"
                "Kalani"
                "Repulsorlift Stabilizers"
            ]
        }
        {
            id: 560 
            faction: "Galactic Republic" 
            pilot: "212th Battalion Pilot"
            ship: "LAAT/i Gunship"
            threat: 3
            upgrades: [
                "Multi-Missile Pods"
                "Shield Upgrade"
                "Suppressive Gunner"
                "Ghost Company"
            ]
        }
        {
            id: 561 
            faction: "Galactic Republic" 
            pilot: '"Hawk"'
            ship: "LAAT/i Gunship"
            threat: 3
            upgrades: [
                "Deadeye Shot"
                "Yoda"
                "Ion Missiles"
                "Clone Captain Rex"
                '"Fives"'
            ]
        }
        {
            id: 562 
            faction: "Galactic Republic" 
            pilot: '"Warthog"'
            ship: "LAAT/i Gunship"
            threat: 3
            upgrades: [
                "Wolfpack"
                "Multi-Missile Pods"
                "Plo Koon"
                "Suppressive Gunner"
            ]
        }
        {
            id: 563 
            faction: "Galactic Republic" 
            pilot: '"Hound"'
            ship: "LAAT/i Gunship"
            threat: 4
            upgrades: [
                "Concussion Missiles"
                "Aayla Secura"
                "Kit Fisto"
                "Suppressive Gunner"
                "Hull Upgrade"
                "Agile Gunner"
            ]
        }
        {
            id: 564 
            faction: "Separatist Alliance" 
            pilot: "Zam Wesell"
            ship: "Firespray-class Patrol Craft"
            threat: 4
            upgrades: [
                "Deadeye Shot"
                "Jango Fett"
                "False Transponder Codes"
                "Hotshot Gunner"
                "Slave I"
            ]
        }
        {
            id: 565 
            faction: "Separatist Alliance" 
            pilot: "Separatist Racketeer"
            ship: "Firespray-class Patrol Craft"
            threat: 3
            upgrades: [
                "Jamming Beam"
                "Thermal Detonators"
                "Suppressive Gunner"
                "Ablative Plating"
            ]
        }
        {
            id: 566 
            faction: "Separatist Alliance" 
            pilot: "Jango Fett"
            ship: "Firespray-class Patrol Craft"
            threat: 4
            upgrades: [
                "Zam Wesell"
                "False Transponder Codes"
                "Boba Fett"
                "Slave I"
            ]
        }
        {
            id: 567 
            faction: "Separatist Alliance" 
            pilot: "Boba Fett (Separatist)"
            ship: "Firespray-class Patrol Craft"
            threat: 3
            upgrades: [
                "Debris Gambit"
                "Hondo Ohnaka"
                "Slave I"
            ]
        }
        {
            id: 568 
            faction: "Separatist Alliance" 
            pilot: "Colicoid Interceptor"
            ship: "Droid Tri-fighter"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Independent Calculations"
                "Hull Upgrade"
            ]
        }
        {
            id: 569 
            faction: "Separatist Alliance" 
            pilot: "DIS-347"
            ship: "Droid Tri-fighter"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Independent Calculations"
                "Elusive"
            ]
        }
        {
            id: 570 
            faction: "Separatist Alliance" 
            pilot: "DIS-T81"
            ship: "Droid Tri-fighter"
            threat: 2
            upgrades: [
                "Marg Sabl Closure"
                "Discord Missiles"
            ]
        }
        {
            id: 571 
            faction: "Separatist Alliance" 
            pilot: "Fearsome Predator"
            ship: "Droid Tri-fighter"
            threat: 2
            upgrades: [
                "Fire-Control System"
                "Intercept Booster"
            ]
        }
        {
            id: 572 
            faction: "Separatist Alliance" 
            pilot: "Phlac-Arphocc Prototype"
            ship: "Droid Tri-fighter"
            threat: 2
            upgrades: [
                "XX-23 S-Thread Tracers"
                "Intercept Booster"
            ]
        }
        {
            id: 573
            faction: "Separatist Alliance" 
            pilot: "Separatist Interceptor"
            ship: "Droid Tri-fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Discord Missiles"
                "Intercept Booster"
            ]
        }
        {
            id: 574
            faction: "Galactic Empire"
            pilot: "Delta Squadron Pilot"
            ship: "TIE/d Defender"
            threat: 3 
            upgrades: [
                "Tractor Beam"
                "Ion Missiles"
            ]
        }
        {
            id: 575
            faction: "Scum and Villainy"
            pilot: "Lawless Pirates"
            ship: "Trident-class Assault Ship"
            threat: 9
            upgrades: [
                "Zealous Captain"
                "Tractor Tentacles"
                "Proton Cannon Battery"
                "Novice Technician"
                "Corsair Crew"
                "Tibanna Reserves"
                "Nautolan's Revenge"
            ]
        }
        {
            id: 576
            faction: "Scum and Villainy"
            pilot: "Lawless Pirates"
            ship: "Trident-class Assault Ship"
            threat: 10
            upgrades: [
                "Hondo Ohnaka (Command)"
                "Tractor Tentacles"
                "Drill Beak"
                "Seasoned Navigator"
                "Corsair Crew"
                "Gunnery Specialists"
                "Boosted Scanners"
                "Grappler"
            ]
        }
        {
            id: 577
            faction: "Separatist Alliance"
            pilot: "Colicoid Destroyer"
            ship: "Trident-class Assault Ship"
            threat: 8
            upgrades: [
                "Tractor Tentacles"
                "Drill Beak"
                "Optimized Power Core"
            ]
        }
        {
            id: 578
            faction: "Separatist Alliance"
            pilot: "Colicoid Destroyer"
            ship: "Trident-class Assault Ship"
            threat: 9
            upgrades: [
                "Asajj Ventress (Command)" 
                "Tractor Tentacles"
                "Enhanced Propulsion"
                "Seasoned Navigator"
                "Droid Crew"
                "Tractor Technicians"
                "Trident"
            ]
        }
        {
            id: 579
            faction: "Separatist Alliance"
            pilot: "Colicoid Destroyer"
            ship: "Trident-class Assault Ship"
            threat: 10 
            upgrades: [
                "Riff Tamson"
                "Tractor Tentacles"
                "Proton Cannon Battery"
                "Proton Torpedoes"
                "Novice Technician"
                "Hotshot Gunner"
                "Droid Crew"
                "Gunnery Specialists"
                "Tibanna Reserves"
                "Neimoidian Grasp"
            ]
        }
        {
            id: 580
            faction: "Galactic Empire"
            pilot: "Onyx Squadron Sentry"
            ship: "TIE/rb Heavy"
            threat: 3
            upgrades: [
                "Ablative Plating"
                "Target-Assist MGK-300"
                "Ion Limiter Override"
                "Synced Laser Cannons"
            ]
        }
        {
            id: 581
            faction: "First Order"
            pilot: "Kylo Ren (TIE Whisper)"
            ship: "TIE/wi Whisper Modified Interceptor"
            threat: 3
            upgrades: [
                "Predator"
                "Cluster Missiles"
                "Malice"
                "Enhanced Jamming Suite"
            ]
        }
        {
            id: 582
            faction: "First Order"
            pilot: '"Wrath"'
            ship: "TIE/wi Whisper Modified Interceptor"
            threat: 3
            upgrades: [
                "Elusive"
                "Enhanced Jamming Suite"
                "Proton Rockets"
            ]
        }
        {
            id: 583
            faction: "First Order"
            pilot: '"Whirlwind"'
            ship: "TIE/wi Whisper Modified Interceptor"
            threat: 3
            upgrades: [
                "Elusive"
                "Sensor Scramblers"
                "Ion Limiter Override"
                "Proton Rockets"
                "Hull Upgrade"
            ]
        }
        {
            id: 584
            faction: "First Order"
            pilot: "709th Legion Ace"
            ship: "TIE/wi Whisper Modified Interceptor"
            threat: 3
            upgrades: [
                "Predator"
                "Enhanced Jamming Suite"
                "Homing Missiles"
            ]
        }
        {
            id: 585
            faction: "First Order"
            pilot: '"Nightfall"'
            ship: "TIE/wi Whisper Modified Interceptor"
            threat: 2
            upgrades: [
                "Ion Limiter Override"
                "Sensor Scramblers"
            ]
        }
        {
            id: 586
            faction: "First Order"
            pilot: "Red Fury Zealot"
            ship: "TIE/wi Whisper Modified Interceptor"
            threat: 2
            upgrades: [
                "Predator"
                "Enhanced Jamming Suite"
            ]
        }
        {
            id: 587
            faction: "First Order"
            pilot: '"Breach"'
            ship: "TIE/se Bomber"
            threat: 3
            upgrades: [
                "Elusive"
                "Proton Torpedoes"
                "Advanced Optics"
                "Engine Upgrade"
            ]
        }
        {
            id: 588
            faction: "First Order"
            pilot: '"Scorch"'
            ship: "TIE/se Bomber"
            threat: 3
            upgrades: [
                "Predator"
                "Suppressive Gunner"
                "Electro-Chaff Missiles"
                "Shield Upgrade"
            ]
        }
        {
            id: 589
            faction: "First Order"
            pilot: '"Dread"'
            ship: "TIE/se Bomber"
            threat: 3
            upgrades: [
                "Feedback Ping"
                "Concussion Bombs"
                "Primed Thrusters"
                "DT-798"
                "Delayed Fuses"
            ]
        }
        {
            id: 590
            faction: "First Order"
            pilot: '"Grudge"'
            ship: "TIE/se Bomber"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Proton Rockets"
                "Ion Torpedoes"
                "Engine Upgrade"
            ]
        }
        {
            id: 591
            faction: "First Order"
            pilot: "First Order Cadet"
            ship: "TIE/se Bomber"
            threat: 2
            upgrades: [
                "Feedback Ping"
                "Concussion Bombs"
                "First Order Ordnance Tech"
            ]
        }
        {
            id: 592
            faction: "First Order"
            pilot: "Sienar-Jaemus Test Pilot"
            ship: "TIE/se Bomber"
            threat: 2
            upgrades: [
                "Cluster Missiles"
                "Suppressive Gunner"
            ]
        }
        {
            id: 593
            faction: "Resistance"
            pilot: "Zorii Bliss"
            ship: "BTA-NR2 Y-wing"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Babu Frik"
                "Proton Torpedoes"
                "Wartime Loadout"
                "R3 Astromech"
            ]
        }
        {
            id: 594
            faction: "Resistance"
            pilot: "Teza Nasz"
            ship: "BTA-NR2 Y-wing"
            threat: 3
            upgrades: [
                "Expert Handling"
                "Delayed Fuses"
                "R2 Astromech"
                "Engine Upgrade"
                "Ion Cannon Turret"
                "Concussion Bombs"
            ]
        }
        {
            id: 595
            faction: "Resistance"
            pilot: "Lega Fossang"
            ship: "BTA-NR2 Y-wing"
            threat: 2
            upgrades: [
                "Proton Torpedoes"
                "Wartime Loadout"
                "L4E-R5"
            ]
        }
        {
            id: 596
            faction: "Resistance"
            pilot: "Shasa Zaro"
            ship: "BTA-NR2 Y-wing"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Concussion Bombs"
                "Watchful Astromech"
                "Wartime Loadout"
            ]
        }
        {
            id: 597
            faction: "Resistance"
            pilot: "C'ai Threnalli"
            ship: "BTA-NR2 Y-wing"
            threat: 2
            upgrades: [
                "Expert Handling"
                "Targeting Computer"
                "R2 Astromech"
                "Hull Upgrade"
                "Engine Upgrade"
            ]
        }
        {
            id: 598
            faction: "Resistance"
            pilot: "Aftab Ackbar"
            ship: "BTA-NR2 Y-wing"
            threat: 2
            upgrades: [
                "Elusive"
                "Wartime Loadout"
                "Electro-Chaff Missiles"
            ]
        }
        {
            id: 599
            faction: "Resistance"
            pilot: "Corus Kapellim"
            ship: "BTA-NR2 Y-wing"
            threat: 2
            upgrades: [
                "Ion Cannon Turret"
                "Engine Upgrade"
                "Overtuned Modulators"
                "Targeting Computer"
            ]
        }
        {
            id: 600 
            faction: "Resistance"
            pilot: "New Republic Patrol"
            ship: "BTA-NR2 Y-wing"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Shield Upgrade"
                "Ion Cannon Turret"
                "Targeting Computer"
                "R3 Astromech"
            ]
        }
        {
            id: 601
            faction: "Resistance"
            pilot: "Kijimi Spice Runner"
            ship: "BTA-NR2 Y-wing"
            threat: 2
            upgrades: [
                "Tierfon Belly Run"
                "Engine Upgrade"
                "Ion Cannon Turret"
                "Targeting Computer"
                "Overtuned Modulators"
            ]
        }
        {
            id: 602
            faction: "Resistance"
            pilot: "Wilsa Teshlo"
            ship: "BTA-NR2 Y-wing"
            threat: 3
            upgrades: [
                "Predator"
                "Engine Upgrade"
                "R3 Astromech"
                "Targeting Computer"
                "Ion Cannon Turret"
            ]
        }
        {
            id: 603
            faction: "Scum and Villainy"
            pilot: "Outer Rim Enforcer"
            ship: "ST-70 Assault Ship"
            threat: 2
            upgrades: [
                "Tracking Fob"
            ]
        }
        {
            id: 604
            faction: "Scum and Villainy"
            pilot: "Q9-0"
            ship: "ST-70 Assault Ship"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "The Mandalorian"
                "The Child"
                "Migs Mayfeld"
                "Tracking Fob"
                "Burnout Thrusters"
                "Razor Crest"
            ]
        }
        {
            id: 605
            faction: "Scum and Villainy"
            pilot: "Guild Bounty Hunter"
            ship: "ST-70 Assault Ship"
            threat: 3
            upgrades: [
                "Peli Motto"
                "IG-11"
                "Hotshot Tail Blaster"
                "Tracking Fob"
                "Hull Upgrade"
            ]
        }
        {
            id: 606
            faction: "Scum and Villainy"
            pilot: "The Mandalorian"
            ship: "ST-70 Assault Ship"
            threat: 4
            upgrades: [
                "Notorious"
                "Burnout Thrusters"
                "Kuiil"
                "The Child"
                "Hull Upgrade"
                "Tracking Fob"
                "Razor Crest"
            ]
        }
        {
            id: 607
            faction: "Scum and Villainy"
            pilot: "Maul"
            ship: "Gauntlet Fighter"
            threat: 3
            upgrades: [
                "Heightened Perception"
                "Nightbrother"
                "Swivel Wing"
            ]
        }
        {
            id: 608
            faction: "Scum and Villainy"
            pilot: "Rook Kast"
            ship: "Gauntlet Fighter"
            threat: 4
            upgrades: [
                "Elusive"
                "Mandalorian Super Commandos"
                "Drop-Seat Bay"
                "Nightbrother"
                "Swivel Wing"
            ]
        }
        {
            id: 609
            faction: "Scum and Villainy"
            pilot: "Shadow Collective Operator"
            ship: "Gauntlet Fighter"
            threat: 3
            upgrades: [
                "Enduring"
                "Blazer Bomb"
                "Overtuned Modulators"
                "Shield Upgrade"
            ]
        }
        {
            id: 610
            faction: "Galactic Republic"
            pilot: "Bo-Katan Kryze (Republic)"
            ship: "Gauntlet Fighter"
            threat: 4
            upgrades: [
                "Outmaneuver"
                "Nite Owl Commandos"
                "Veteran Tail Gunner"
                "Drop-Seat Bay"
                "Hull Upgrade"
                "Gauntlet"
                "Swivel Wing"
            ]
        }
        {
            id: 611
            faction: "Galactic Republic"
            pilot: "Nite Owl Liberator"
            ship: "Gauntlet Fighter"
            threat: 3
            upgrades: [
                "Enduring"
                "Veteran Tail Gunner"
                "Concussion Bombs"
                "Hull Upgrade"
                "Swivel Wing"
            ]
        }
        {
            id: 612
            faction: "Separatist Alliance"
            pilot: "Pre Vizsla"
            ship: "Gauntlet Fighter"
            threat: 4
            upgrades: [
                "Predator"
                "Death Watch Commandos"
                "Blazer Bomb"
                "Shield Upgrade"
                "Swivel Wing"
            ]
        }
        {
            id: 613
            faction: "Separatist Alliance"
            pilot: "Bo-Katan Kryze"
            ship: "Gauntlet Fighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Veteran Tail Gunner"
                "Swivel Wing"
            ]
        }       
        {
            id: 614
            faction: "Separatist Alliance"
            pilot: "Death Watch Warrior"
            ship: "Gauntlet Fighter"
            threat: 3
            upgrades: [
                "Hull Upgrade"
                "Shield Upgrade"
                "Concussion Bombs"
                "Swivel Wing"
            ]
        }
        {
            id: 615
            faction: "Rebel Alliance"
            pilot: "Ezra Bridger (Gauntlet Fighter)"
            ship: "Gauntlet Fighter"
            threat: 4
            upgrades: [
                "Shattering Shot"
                "Clan Wren Commandos"
                "Shield Upgrade"
                "Nightbrother"
                "Swivel Wing"
            ]
        }
        {
            id: 616
            faction: "Rebel Alliance"
            pilot: '"Chopper" (Gauntlet Fighter)'
            ship: "Gauntlet Fighter"
            threat: 3
            upgrades: [
                "Predator"
                "Veteran Tail Gunner"
                "Hull Upgrade"
                "Nightbrother"
                "Swivel Wing"
            ]
        }
        {
            id: 617
            faction: "Rebel Alliance"
            pilot: "Mandalorian Resistance Pilot"
            ship: "Gauntlet Fighter"
            threat: 3
            upgrades: [
                "Enduring"
                "Clan Wren Commandos"
                "Swivel Wing"
            ]
        }
        {
            id: 618
            faction: "Galactic Empire"
            pilot: "Gar Saxon"
            ship: "Gauntlet Fighter"
            threat: 4
            upgrades: [
                "Imperial Super Commandos"
                "Drop-Seat Bay"
                "Hull Upgrade"
                "Shield Upgrade"
                "Swivel Wing"
            ]
        }
        {
            id: 619
            faction: "Galactic Empire"
            pilot: "Captain Hark"
            ship: "Gauntlet Fighter"
            threat: 3
            upgrades: [
                "Combat Boarding Tube"
                "Imperial Super Commandos"
                "Swivel Wing"
            ]
        }
        {
            id: 620
            faction: "Galactic Empire"
            pilot: "Imperial Super Commando"
            ship: "Gauntlet Fighter"
            threat: 2
            upgrades: [
                "Outmaneuver"
                "Veteran Tail Gunner"
                "Concussion Bombs"
                "Hull Upgrade"
            ]
        }
        {
            id: 621
            faction: "Rebel Alliance"
            pilot: "Fenn Rau (Rebel Fang)"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Clan Training"
                "Ion Torpedoes"    
                "Afterburners"
            ]
        }
        {
            id: 622
            faction: "Rebel Alliance"
            pilot: "Clan Wren Volunteer"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Predator"
            ]
        }
        {
            id: 623
            faction: "Rebel Alliance"
            pilot: "Bodica Venj"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Outmaneuver"
                "Beskar Reinforced Plating"
                "Mandalorian Optics"
            ]
        }
        {
            id: 624
            faction: "Rebel Alliance"
            pilot: "Dirk Ullodin"
            ship: "Fang Fighter"
            threat: 3
            upgrades: [
                "Clan Training"
                "Proton Torpedoes"
                "Hull Upgrade"
                "Mandalorian Optics"
            ]
        }
        {
            id: 625
            faction: "Galactic Empire"
            pilot: "Moff Gideon"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Deadeye Shot"
                "Outmaneuver"
                "Overtuned Modulators"
                "Hull Upgrade"
            ]
        }
        {
            id: 626
            faction: "Galactic Empire"
            pilot: "ISB Jingoist"
            ship: "TIE/ln Fighter"
            threat: 2
            upgrades: [
                "Ion Limiter Override"
                "False Transponder Codes"
                "Afterburners"
                "Shield Upgrade"
            ]
        }
        {
            id: 627
            faction: "Scum and Villainy"
            pilot: "Mandalorian Royal Guard"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Afterburners"
                "Beskar Reinforced Plating"
            ]
        }
        {
            id: 628
            faction: "Scum and Villainy"
            pilot: "Mandalorian Royal Guard"
            ship: "Fang Fighter"
            threat: 2
            upgrades: [
                "Clan Training"
                "Mandalorian Optics"
            ]
        }
    ]

exportObj.setupQuickBuilds = (basic_cards) ->

    for quickbuild_data, i in basic_cards.quickbuildsById
        if quickbuild_data.id != i
            throw new Error("ID mismatch: quickbuild  at index #{i} has ID #{quickbuild_data.id}")

    exportObj.quickbuildsById = {}
    quickbuild_count = 0
    for quickbuild_data in basic_cards.quickbuildsById
        unless quickbuild_data.skip?
            quickbuild_count += 1
            # Sometimes there is something to be appended to the pilot name for displaying, e.g. (x2) for two TIEs at the cost of 3 threat points. If nothing specified set as empty string.
            quickbuild_data.suffix = "" unless quickbuild_data.suffix?
            exportObj.quickbuildsById[quickbuild_data.id] = quickbuild_data
    if Object.keys(exportObj.quickbuildsById).length != quickbuild_count
        throw new Error("At least one quickbuild shares an ID with another")

