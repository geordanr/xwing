import json
import re

# We may want to actually load them from the api... 

# load german cards
data_de = json.load(open('api_export_de.json', encoding = "utf8"))
cards_de = data_de["cards"]

# load english cards
data_en = json.load(open('api_export_en.json', encoding = "utf8"))
cards_en = data_en["cards"]

# sort german cards by id
cards_de_by_id = {}
for card in cards_de:
    cards_de_by_id[card["id"]]=card

# store what we need to manually post-process (e.g. FFG differs L3-37 Escapecraft/Falcon by ID, YASB differs by postfix "(Escape Craft)"
manual_stuff = "Remove L3-37's programming\n"

# search for double names
pilot_name_list = {}

# sort by name
cards_en = sorted(cards_en, key=lambda k: k['name'])

# load names changed by yasb
renamed_cards = json.load(open('renamed_cards.json', encoding = "utf8"))

# load ship translations
ship_translations = json.load(open('ship_translations.json', encoding = "utf8"))

# load phrase translations
phrase_translations = json.load(open('phrase_translations.json', encoding = "utf8"))

# store what we will later use as .coffee
output_text = ""

# create ship translations
for k, ship in ship_translations.items():
    output_text += "    exportObj.renameShip '%s', '%s'\n"%(ship['name_yasb'],ship['name_de'])

output_text += "\n\n    pilot_translations =\n"

# Cards that add or require actions refere to them via ID, so we need them
actions_by_id = { 1:"%BOOST%", 2:"%FOCUS%", 3:"%EVADE%", 4:"%LOCK%", 5:"%BARRELROLL%",
                  8:"%COORDINATE%", 9:"%CALCULATE%",12:"%RELOAD%", 13:"%SLAM%", 14:"%ROTATEARC%" }

# create pilot translations
for card_en in cards_en:
    # check if we got a pilot
    if card_en["card_type_id"] != 1: #id 1: pilot
        continue
    
    # get german card
    card_de = cards_de_by_id[card_en["id"]]

    # check if card has been renamed
    if str(card_en["id"]) in renamed_cards:
        # rename english card
        card_en["name"] = renamed_cards[str(card_en["id"])]
        if re.findall(".*?( \(.*\)).*",card_en["name"]):
            # rename translated card, add the (...) to the translated name
            card_de["name"] += re.sub(".*?( \(.*\)).*",r"\1",card_en["name"])

    # translate
    output_text += ('        "%s":\n'%card_en["name"])
    output_text += ('           name: """%s"""\n'%card_de["name"])
    output_text += ('           ship: """%s"""\n'%ship_translations[str(card_en["ship_type"])]["name_de"])
    output_text += ('           text: """%s"""\n'%card_de["ability_text"])
    
    # check for double names
    if card_en["name"] in pilot_name_list:
        manual_stuff += ('Found pilot name multiple times: %s\n'%card_en["name"])
    pilot_name_list[card_en["name"]] = True

output_text +="\n\n\n    upgrade_translations =\n"

# search for double names (upgrades)
upgrade_name_list= {}
possible_double_sided_list = {}

# create upgrade translations - basically identical to pilots
for card_en in cards_en:
    # check if we got a upgrade
    if card_en["card_type_id"] != 2: #id 2: upgrade
        continue
    
    # get german card
    card_de = cards_de_by_id[card_en["id"]]

    # check if card has been renamed in yasb
    if str(card_en["id"]) in renamed_cards:
        # rename english card
        card_en["name"] = renamed_cards[str(card_en["id"])]
        if re.findall(".*?( \(.*\)).*",card_en["name"]):
            # rename translated card, add the (...) to the translated name
            card_de["name"] += re.sub(".*?( \(.*\)).*",r"\1",card_en["name"])

    # translate name
    output_text += ('        "%s":\n'%card_en["name"])
    output_text += ('           name: """%s"""\n'%card_de["name"])
    
    # check if card has requirements
    if card_en["restrictions"]:
        # restrictions are provided in conjunctive normal form (in 2D) e.g. (a or b) and c and (d or e or f).
        # Currently we don't parse that completly, as one clausal will only contain restrictions of same typ (e.g. large or medium base), or of faction + card (e.g. scum or contains vader)
        for restriction in card_en["restrictions"]:
            # if restricted to ship type (e.g. titles), add a line to the translation specifying the ship
            if restriction[0]["type"] == "SHIP_TYPE":
                output_text += ('           ship: """%s"""\n'%ship_translations[str(restriction[0]["kwargs"]["pk"])]["name_de"])
                if len(restriction) > 1:
                    manual_stuff += ("Upgrade %s restricted to multiple ships. Only set to %s\n"%(card_en["name"],ship_translations[str(restriction[0]["kwargs"]["pk"])]["name_yasb"]))
            # if restricted to given actions, add a note to the text
            elif restriction[0]["type"] == "ACTION":
                actions = ""
                for action in restriction:
                    if actions:
                        actions += " %s "%phrase_translations["or"]
                    actions += ("<r>%s</r>" if action["kwargs"]["side_effect_name"]=="STRESS" else "%s")% actions_by_id[action["kwargs"]["pk"]]
                card_de["ability_text"] = "<i>"+phrase_translations["requires"]%actions +"</i>"+"%LINEBREAK%" + card_de["ability_text"]
            # if restricted to given base size, add a note to the text
            elif restriction[0]["type"] == "SHIP_SIZE":
                sizes = ""
                for size in restriction:
                    if sizes:
                        sizes += " %s "%phrase_translations["or"]
                    sizes += phrase_translations[size["kwargs"]["ship_size_name"]]
                card_de["ability_text"] = "<i>"+phrase_translations["only"]%sizes +"</i>"+"%LINEBREAK%" + card_de["ability_text"]
            # if restricted to faction, add a note. Also covers restrictions on specific cards. 
            elif restriction[0]["type"] == "FACTION" or restriction[0]["type"] == "CARD_INCLUDED":
                factions = ""
                # as restrictions to cards are referred to by id (e.g. "only vader" is 338 or 93, representing crew or pilot), but we don't want to list them twice, we need to store them
                names = {}
                for faction in restriction:
                    if faction["type"] == "CARD_INCLUDED":
                        if cards_de_by_id[faction["kwargs"]["pk"]]["name"] in names:
                            continue
                        names[cards_de_by_id[faction["kwargs"]["pk"]]["name"]] = True                    
                    if factions:
                        factions += " %s "%phrase_translations["or"]
                    factions += (phrase_translations[faction["kwargs"]["name"]] if faction["type"] == "FACTION" else phrase_translations["contains"]%cards_de_by_id[faction["kwargs"]["pk"]]["name"])
                card_de["ability_text"] = "<i>"+phrase_translations["only"]%factions +"</i>"+"%LINEBREAK%" + card_de["ability_text"]

    

    # try to find cards, that add actions
    if card_en["available_actions"]:
        actions = ""
        for action in card_en["available_actions"]:
            if actions:
                actions += " %s  " % ','
            actions += ("<r>%s</r>" if action["base_action_side_effect"] == "stress" else "%s") % actions_by_id[
                action["base_action_id"]]
            # if the action can be linked into another action we need to process that one as well
            linked = "&nbsp;<i class=\"xwing-miniatures-font xwing-miniatures-font-linked\"></i>"
            linked_stress = "&nbsp;<i class=\"xwing-miniatures-font xwing-miniatures-font-linked red\"></i>"
            if action["related_action_id"]:
                actions += (linked_stress + "&nbsp;<r>%s</r>" if action["related_action_side_effect"] == "stress"
                            else linked + "&nbsp;'%s") % actions_by_id[action["related_action_id"]]
        card_de["ability_text"] = "<i>" + phrase_translations["adds"] % actions + "</i>%LINEBREAK%" + \
                                  card_de["ability_text"]

    # check for double names
    if card_en["name"] in upgrade_name_list:
        manual_stuff += ('Found upgrade name multiple times: %s\n'%card_en["name"])
    upgrade_name_list[card_en["name"]] = True

    # check for variable point costs
    if card_en["cost"] == "*":
        manual_stuff += ('Found upgrade with variable point costs: %s\n'%card_en["name"])
        card_de["ability_text"] = phrase_translations["variable_cost"] +"%LINEBREAK%"+ card_de["ability_text"]

    # try to check for double-sided cards
    if "(" in card_en["name"]:
        simple_name = re.sub('\(.*?\)','',card_en["name"])
        if (simple_name in possible_double_sided_list):
            manual_stuff += 'Probably found double sided upgrade: %s\n'%simple_name
        possible_double_sided_list[simple_name] = True

    # write translated text (requirements etc have been added to text)
    output_text += ('           text: """%s"""\n'%card_de["ability_text"])
    

# do some replacements
output_text = output_text.replace('<stop>','%STOP%')
output_text = output_text.replace('<leftbank>','%BANKLEFT%')
output_text = output_text.replace('<rightbank>','%BANKRIGHT%')
output_text = output_text.replace('<leftturn>','%TURNLEFT%')
output_text = output_text.replace('<rightturn>','%TURNRIGHT%')
output_text = output_text.replace('<straight>','%STRAIGHT%')
output_text = output_text.replace('<kturn>','%KTURN%')
output_text = output_text.replace('<leftsloop>','%SLOOPLEFT%')
output_text = output_text.replace('<rightsloop>','%SLOOPRIGHT%')
output_text = output_text.replace('<return>','%LINEBREAK%')
output_text = output_text.replace('<nonbreak>','&nbsp;')
output_text = output_text.replace('<shipability>','')
output_text = output_text.replace('</shipability>','')
output_text = output_text.replace('<flavor>','<i>')
output_text = output_text.replace('</flavor>','</i>') # we could also remove all flavor text?
output_text = output_text.replace('<smallcaps>','<strong>')
output_text = output_text.replace('</smallcaps>','</strong>')
output_text = output_text.replace('<sabold>','<strong>')
output_text = output_text.replace('</sabold>','</strong>')
output_text = output_text.replace('<bold>','<b>')
output_text = output_text.replace('</bold>','</b>')
output_text = output_text.replace('<italic>','')
output_text = output_text.replace('</italic>','')
output_text = output_text.replace('<bitalic>','<strong>')
output_text = output_text.replace('</bitalic>','</strong>')
output_text = output_text.replace('<untalic>','')
output_text = output_text.replace('</untalic>','')
output_text = output_text.replace('<slam>','%SLAM%')
output_text = output_text.replace('<barrelroll>','%BARRELROLL%')
output_text = output_text.replace('<boost>','%BOOST%')
output_text = output_text.replace('<coordinate>','%COORDINATE%')
output_text = output_text.replace('<reload>','%RELOAD%')
output_text = output_text.replace('<targetlock>','%LOCK%')
output_text = output_text.replace('<cloak>','%CLOAK%')
output_text = output_text.replace('<evade>','%EVADE%')
output_text = output_text.replace('<focus>','%FOCUS%')
output_text = output_text.replace('<reinforce>','%FOCUS%')
output_text = output_text.replace('<calculate>','%CALCULATE%')
output_text = output_text.replace('<standardcharge>','%CHARGE%')
output_text = output_text.replace('<forcecharge>','%FORCE%')
output_text = output_text.replace('<torpedo>','%TORPEDO%')
output_text = output_text.replace('<missile>','%MISSILE%')
output_text = output_text.replace('<cannon>','%CANNON%')
output_text = output_text.replace('<turret>','%TURRET%')
output_text = output_text.replace('<config>','%CONFIG%')
output_text = output_text.replace('<talent>','%TALENT%')
output_text = output_text.replace('<gunner>','%GUNNER%')
output_text = output_text.replace('<bomb>','%DEVICE%')
output_text = output_text.replace('<mod>','%MODIFICATION%')
output_text = output_text.replace('<illicit>','%ILLICIT%')
output_text = output_text.replace('<crew>','%CREW%')
output_text = output_text.replace('<sensor>','%SENSOR%')
output_text = output_text.replace('<astro>','%ASTROMECH%')
output_text = output_text.replace('<bullseye>','%BULLSEYEARC%')
output_text = output_text.replace('<frontarc>','%FRONTARC%')
output_text = output_text.replace('<reararc>','%REARARC%')
output_text = output_text.replace('<fullfront>','%FULLFRONTARC%')
output_text = output_text.replace('<fullrear>','%FULLREARARC%')
output_text = output_text.replace('<turretarc>','%SINGLETURRETARC%')
output_text = output_text.replace('<hit>','%HIT%')
output_text = output_text.replace('<crit>','%CRIT%')

# Change quotes and some special chars in Names, to match the YASB scheme (e.g. replace '“Zeb” Orrelios' with '"Zeb" Orrelios')
output_text = re.sub('"(.*?)“(.*?)”(.*?)"',r"""'\1"\2"\3'""",output_text)
output_text = output_text.replace('’',"'")
output_text = output_text.replace('–',"-")

# Remove unique dots
output_text = output_text.replace('•','')

# write output
output_file = open("translation.coffee","w")
output_file.write(output_text)
output_file.close()

# write manual-ToDo stuff
output_file = open("todo.txt","w")
output_file.write(manual_stuff)
output_file.close()


print(manual_stuff)
