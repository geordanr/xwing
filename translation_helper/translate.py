import argparse
import json
import re


# We will later need to pick a struct out from an array by language
def choose_by_language(input_json, chosen_language):
    for translation_dict in input_json:
        if translation_dict['language'] == chosen_language:
            return translation_dict
    return {}


# We may want to actually load them from the api...
languages = ['de', 'en', 'fr', 'es', 'it', 'pl', 'pt', 'zh']

# The user can decide whether to download all JSON files or to select one
# language.
parser = argparse.ArgumentParser(description='Source files have to be names \'api_export_[LANG].json\'.')
parser.add_argument('--language', '-l', type=str, choices=languages, default='de',
                    help='The desired language in country language code. Defaults to \'de\'')

# Sets the language to the desired language
args = parser.parse_args()
lang = args.language

# load cards in destination language
data_translation = json.load(open('api_export_' + lang + '.json', encoding="utf8"))
cards_translation = data_translation["cards"]

# load english cards
data_en = json.load(open('api_export_en.json', encoding="utf8"))
cards_en = data_en["cards"]

# sort german cards by id
cards_translation_by_id = {}
for card in cards_translation:
    cards_translation_by_id[card["id"]] = card

# store what we need to manually post-process (e.g.  FFG differs L3-37
# Escapecraft/Falcon by ID, YASB differs by postfix "(Escape Craft)"
manual_stuff = "Please edit the following cards manually: \nL3-37's programming: Merge into L3-37\n"

# search for double names
pilot_name_list = {}

# sort by name
cards_en = sorted(cards_en, key=lambda k: k['name'][1:] if k['name'].startswith( '•' ) else k['name'])

# load names changed by yasb
renamed_cards = json.load(open('renamed_cards.json', encoding="utf8"))

# load ship translations
ship_translations = json.load(open('ship_translations.json', encoding="utf8"))

# load phrase translations by language
phrase_translation_array = json.load(open('phrase_translations.json', encoding="utf8"))['phrases']
phrase_translations = choose_by_language(phrase_translation_array, lang)

# store what we will later use as .coffee
output_text = ""

# create ship translations
for k, ship in ship_translations.items():
    if ship['name_' + lang] != 'CHANGE ME':
        output_text += '    exportObj.renameShip """%s""", """%s"""\n' % (ship['name_yasb'], ship['name_' + lang])

output_text += "\n\n    pilot_translations =\n"

# Cards that add or require actions refere to them via ID, so we need them
actions_by_id = {1: "%BOOST%", 2: "%FOCUS%", 3: "%EVADE%", 4: "%LOCK%", 5: "%BARRELROLL%", 6: "%REINFORCE%", 7: "%CLOAK%",
                 8: "%COORDINATE%", 9: "%CALCULATE%", 10: "%JAM%", 12: "%RELOAD%", 13: "%SLAM%", 14: "%ROTATEARC%"}

# create pilot translations
for card_en in cards_en:
    # check if we got a pilot
    if card_en["card_type_id"] != 1:  # id 1: pilot
        continue

    # get german card
    card_translation = cards_translation_by_id[card_en["id"]]

    # check if card has been renamed
    if str(card_en["id"]) in renamed_cards:
        # rename english card
        card_en["name"] = renamed_cards[str(card_en["id"])]
        # if re.findall(".*?( \(.*\)).*", card_en["name"]):
            # rename translated card, add the (...) to the translated name
            # card_translation["name"] += re.sub(".*?( \(.*\)).*", r"\1", card_en["name"])

    card_en["name"] = card_en["name"].replace('’', "'")

    # translate
    output_text += ('        "%s":\n' % card_en["name"])
    output_text += ('           display_name: """%s"""\n' % card_translation["name"])
    # output_text += (' ship: """%s"""\n' %
    # ship_translations[str(card_en["ship_type"])]["name_" + lang])
    output_text += ('           text: """%s"""\n' % card_translation["ability_text"])

    # check for double names
    if card_en["name"] in pilot_name_list:
        manual_stuff += ('Found pilot name multiple times: %s\n' % card_en["name"])
    pilot_name_list[card_en["name"]] = True

output_text += "\n\n\n    upgrade_translations =\n"

# search for double names (upgrades)
upgrade_name_list = {}
possible_double_sided_list = {}

# create upgrade translations - basically identical to pilots
for card_en in cards_en:
    # check if we got a upgrade
    if card_en["card_type_id"] != 2:  # id 2: upgrade
        continue

    # get german card
    card_translation = cards_translation_by_id[card_en["id"]]

    # check if card has been renamed in yasb
    if str(card_en["id"]) in renamed_cards:
        # rename english card
        card_en["name"] = renamed_cards[str(card_en["id"])]
        if re.findall(".*?( \(.*\)).*", card_en["name"]):
            # rename translated card, add the (...) to the translated name
            card_translation["name"] += re.sub(".*?( \(.*\)).*", r"\1", card_en["name"])

    card_en["name"] = card_en["name"].replace('’', "'")

    # translate name
    output_text += ('        "%s":\n' % card_en["name"])
    output_text += ('           display_name: """%s"""\n' % card_translation["name"])

    # check if card has requirements
    if card_en["restrictions"]:
        # restrictions are provided in conjunctive normal form (in 2D) e.g.  (a
        # or b) and c and (d or e or f).
        # Currently we don't parse that completly, as one clausal will only
        # contain restrictions of same typ (e.g.  large or medium base), or of
        # faction + card (e.g.  scum or contains vader)
        for restriction in card_en["restrictions"]:
            # we now automatically generate restriction statements in YASB, no need to add them to the card text
            continue

            # if restricted to ship type (e.g.  titles), add a line to the
            # translation specifying the ship.  No longer needed, as we do not
            # change ship names, but ship display_names - so we keep the
            # english logic of ship to ugrade associations
            # if restricted to given actions, add a note to the text
            if restriction[0]["type"] == "ACTION":
                actions = ""
                for action in restriction:
                    if actions:
                        actions += " %s " % phrase_translations["or"]
                    actions += ("<r>%s</r>" if action["kwargs"]["side_effect_name"] == "STRESS" else "%s") % \
                               actions_by_id[action["kwargs"]["pk"]]
                card_translation["ability_text"] = "<i>" + phrase_translations["requires"] % actions + "</i>" + "%LINEBREAK%" + card_translation["ability_text"]
            # if restricted to given base size, add a note to the text
            elif restriction[0]["type"] == "SHIP_SIZE":
                sizes = ""
                for size in restriction:
                    if sizes:
                        sizes += " %s " % phrase_translations["or"]
                    sizes += phrase_translations[size["kwargs"]["ship_size_name"]]
                card_translation["ability_text"] = "<i>" + phrase_translations["only"] % sizes + "</i>" + "%LINEBREAK%" + card_translation["ability_text"]
            # if restricted to faction, add a note.  Also covers restrictions
            # on specific cards.
            elif restriction[0]["type"] == "FACTION" or restriction[0]["type"] == "CARD_INCLUDED":
                factions = ""
                # as restrictions to cards are referred to by id (e.g.  "only
                # vader" is 338 or 93, representing crew or pilot), but we
                # don't want to list them twice, we need to store them
                names = {}
                for faction in restriction:
                    if faction["type"] == "CARD_INCLUDED":
                        if cards_translation_by_id[faction["kwargs"]["pk"]]["name"] in names:
                            continue
                        names[cards_translation_by_id[faction["kwargs"]["pk"]]["name"]] = True
                    if factions:
                        factions += " %s " % phrase_translations["or"]
                    factions += (phrase_translations[faction["kwargs"]["name"]] if faction["type"] == "FACTION" else
                                 phrase_translations["contains"] % cards_translation_by_id[faction["kwargs"]["pk"]]["name"])
                card_translation["ability_text"] = "<i>" + phrase_translations["only"] % factions + "</i>" + "%LINEBREAK%" + card_translation["ability_text"]

    # try to find cards, that add actions - will be automatically atted by YASB now
    # if card_en["available_actions"]:
    #     actions = ""
    #     for action in card_en["available_actions"]:
    #         if actions:
    #             actions += " %s  " % ','
    #         actions += ("<r>%s</r>" if action["base_action_side_effect"] == "stress" else "%s") % actions_by_id[action["base_action_id"]]
    #         # if the action can be linked into another action we need to
    #         # process that one as well
    #         linked = "&nbsp;<i class=\"xwing-miniatures-font xwing-miniatures-font-linked\"></i>"
    #         linked_stress = "&nbsp;<i class=\"xwing-miniatures-font xwing-miniatures-font-linked red\"></i>"
    #         if action["related_action_id"]:
    #             actions += (linked_stress + "&nbsp;<r>%s</r>" if action["related_action_side_effect"] == "stress"
    #                         else linked + "&nbsp;'%s") % actions_by_id[action["related_action_id"]]
    #     card_translation["ability_text"] = "<i>" + phrase_translations["adds"] % actions + "</i>%LINEBREAK%" + \
    #                                        card_translation["ability_text"]

    # check for double names
    if card_en["name"] in upgrade_name_list:
        manual_stuff += ('%s: Found upgrade name multiple times:\n' % card_en["name"])
    upgrade_name_list[card_en["name"]] = True

    # check for variable point costs (is now handled by the builder)
    # if card_en["cost"] == "*":
    #    manual_stuff += ('%s: Variable costs. Added default phrase, you may want to specify on what the point costs depend.\n' % card_en["name"])
    #    card_translation["ability_text"] = phrase_translations["variable_cost"] + "%LINEBREAK%" + card_translation["ability_text"]

    # try to check for double-sided cards
    if "(" in card_en["name"]:
        simple_name = re.sub('\(.*?\)', '', card_en["name"])
        if simple_name in possible_double_sided_list:
            manual_stuff += '%s: Probably double-sided. YASB wants you to merge double-sided-cards together into one. \n' % simple_name
        possible_double_sided_list[simple_name] = True

    # write translated text (requirements etc have been added to text)
    output_text += ('           text: """%s"""\n' % card_translation["ability_text"])

# do some replacements
output_text = output_text.replace('<stop>', '%STOP%')
output_text = output_text.replace('<leftbank>', '%BANKLEFT%')
output_text = output_text.replace('<rightbank>', '%BANKRIGHT%')
output_text = output_text.replace('<leftturn>', '%TURNLEFT%')
output_text = output_text.replace('<rightturn>', '%TURNRIGHT%')
output_text = output_text.replace('<lefttalon>', '%TROLLLEFT%')
output_text = output_text.replace('<righttalon>', '%TROLLRIGHT%')
output_text = output_text.replace('<straight>', '%STRAIGHT%')
output_text = output_text.replace('<kturn>', '%KTURN%')
output_text = output_text.replace('<leftsloop>', '%SLOOPLEFT%')
output_text = output_text.replace('<rightsloop>', '%SLOOPRIGHT%')
output_text = output_text.replace('<return>', '%LINEBREAK%')
output_text = output_text.replace('<Return>', '%LINEBREAK%')
output_text = output_text.replace('<nonbreak>', '&nbsp;')
output_text = output_text.replace('<shipability>', '')
output_text = output_text.replace('</shipability>', '')
output_text = output_text.replace('<flavor>', '<i class = flavor_text>')
output_text = output_text.replace('</flavor>', '</i>')  # we could also remove all flavor text?
output_text = output_text.replace('<smallcaps>', '<strong>')
output_text = output_text.replace('</smallcaps>', '</strong>')
output_text = output_text.replace('<smallbody>', '')
output_text = output_text.replace('</smallbody>', '')
output_text = output_text.replace('<sabold>', '<strong>')
output_text = output_text.replace('</sabold>', '</strong>')
output_text = output_text.replace('<bold>', '<b>')
output_text = output_text.replace('</bold>', '</b>')
output_text = output_text.replace('<italic>', '')
output_text = output_text.replace('</italic>', '')
output_text = output_text.replace('<bitalic>', '<strong>')
output_text = output_text.replace('</bitalic>', '</strong>')
output_text = output_text.replace('<untalic>', '')
output_text = output_text.replace('</untalic>', '')
output_text = output_text.replace('<slam>', '%SLAM%')
output_text = output_text.replace('<barrelroll>', '%BARRELROLL%')
output_text = output_text.replace('<boost>', '%BOOST%')
output_text = output_text.replace('<coordinate>', '%COORDINATE%')
output_text = output_text.replace('<reload>', '%RELOAD%')
output_text = output_text.replace('<targetlock>', '%LOCK%')
output_text = output_text.replace('<cloak>', '%CLOAK%')
output_text = output_text.replace('<evade>', '%EVADE%')
output_text = output_text.replace('<focus>', '%FOCUS%')
output_text = output_text.replace('<reinforce>', '%REINFORCE%')
output_text = output_text.replace('<calculate>', '%CALCULATE%')
output_text = output_text.replace('<rotate>', '%ROTATEARC%')
output_text = output_text.replace('<standardcharge>', '%CHARGE%')
output_text = output_text.replace('<forcecharge>', '%FORCE%')
output_text = output_text.replace('<torpedo>', '%TORPEDO%')
output_text = output_text.replace('<missile>', '%MISSILE%')
output_text = output_text.replace('<cannon>', '%CANNON%')
output_text = output_text.replace('<turret>', '%TURRET%')
output_text = output_text.replace('<config>', '%CONFIG%')
output_text = output_text.replace('<talent>', '%TALENT%')
output_text = output_text.replace('<gunner>', '%GUNNER%')
output_text = output_text.replace('<bomb>', '%DEVICE%')
output_text = output_text.replace('<mod>', '%MODIFICATION%')
output_text = output_text.replace('<illicit>', '%ILLICIT%')
output_text = output_text.replace('<crew>', '%CREW%')
output_text = output_text.replace('<sensor>', '%SENSOR%')
output_text = output_text.replace('<astro>', '%ASTROMECH%')
output_text = output_text.replace('<bullseye>', '%BULLSEYEARC%')
output_text = output_text.replace('<frontarc>', '%FRONTARC%')
output_text = output_text.replace('<reararc>', '%REARARC%')
output_text = output_text.replace('<rightarc>', '%RIGHTARC%')
output_text = output_text.replace('<leftarc>', '%LEFTARC%')
output_text = output_text.replace('<fullfront>', '%FULLFRONTARC%')
output_text = output_text.replace('<fullrear>', '%FULLREARARC%')
output_text = output_text.replace('<turretarc>', '%SINGLETURRETARC%')
output_text = output_text.replace('<hit>', '%HIT%')
output_text = output_text.replace('<crit>', '%CRIT%')
output_text = output_text.replace('<energycharge>', '%ENERGY%')

# Change quotes and some special chars in Names, to match the YASB scheme (e.g.
# replace '“Zeb” Orrelios' with '"Zeb" Orrelios')
output_text = re.sub('[^"]"([^"]*?)“(.*?)”(.*?)"', r""" '\1"\2"\3'""", output_text)
output_text = output_text.replace('–', "-")

# Remove unique dots
output_text = output_text.replace('•', '')

# Add known typos to the ToDo
known_typos = json.load(open('known_typos.json'))[lang]
if known_typos:
    manual_stuff += "Be aware of the following typos! You need to fix them before merging:\n"
for typo in known_typos:
    manual_stuff += ('%s\n' % typo)

# write output
output_file = open("translation-%s.coffee"%lang, "w", encoding="utf8")
output_file.write(output_text)
output_file.close()

# write manual-ToDo stuff
output_file = open("todo.txt", "w")
output_file.write(manual_stuff)
output_file.close()

print(manual_stuff)
