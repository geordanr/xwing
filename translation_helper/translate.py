import json
import re

# We may want to actually load them from the api... 

# load german cards
data_de = json.load(open('api_export_de.json'))
cards_de = data_de["cards"]

# load english cards
data_en = json.load(open('api_export_en.json'))
cards_en = data_en["cards"]


# sort german cards by id
cards_de_by_id = {}
for card in cards_de:
    cards_de_by_id[card["id"]]=card

# store what we will later use as .coffee
output_text = "    pilot_translations =\n"

# store what we need to manually post-process (e.g. FFG differs L3-37 Escapecraft/Falcon by ID, YASB differs by postfix "(Escape Craft)"
manual_stuff = ""

# search for double names
pilot_name_list = {}

# sort by name
cards_en = sorted(cards_en, key=lambda k: k['name']) 

# create pilots translation
for card_en in cards_en:
    # check if we got a pilot
    if card_en["card_type_id"] != 1: #id 1: pilot
        continue
    
    # get german card
    card_de = cards_de_by_id[card_en["id"]]

    # translate
    output_text += ('        "%s":\n'%card_en["name"])
    output_text += ('           name: """%s"""\n'%card_de["name"])
    # output_text += ('           ship: """%s"""\n'%card_de["name"]) # currently we don't have an api access to ship data - so we can't find the name of the ship. We got the ship ID, but that doesn't help
    output_text += ('           text: """%s"""\n'%card_de["ability_text"])
    
    # check for double names
    if card_en["name"] in pilot_name_list:
        manual_stuff += ('Found pilot name multiple times: %s\n'%card_en["name"])
    pilot_name_list[card_en["name"]] = True

output_text +="\n\n\n    upgrade_translations =\n"

# search for double names (upgrades)
upgrade_name_list= {}
possible_double_sided_list = {}

# create upgrade translations - identically to pilots
for card_en in cards_en:
    # check if we got a upgrade
    if card_en["card_type_id"] != 2: #id 2: upgrade
        continue
    
    # get german card
    card_de = cards_de_by_id[card_en["id"]]

    # translate
    output_text += ('        "%s":\n'%card_en["name"])
    output_text += ('           name: """%s"""\n'%card_de["name"])
    # output_text += ('           ship: """%s"""\n'%card_de["name"]) # currently we don't have an api access to ship data - so we can't find the name of the ship. We got the ship ID, but that doesn't help
    output_text += ('           text: """%s"""\n'%card_de["ability_text"])
    
    # check for double names
    if card_en["name"] in upgrade_name_list:
        manual_stuff += ('Found upgrade name multiple times: %s\n'%card_en["name"])
    upgrade_name_list[card_en["name"]] = True

    # check for variable point costs
    if card_en["cost"] == "*":
        manual_stuff += ('Found upgrade with variable point costs: %s\n'%card_en["name"])

    # try to check for double-sided cards
    if "(" in card_en["name"]:
        simple_name = re.sub('\(.*?\)','',card_en["name"])
        if (simple_name in possible_double_sided_list):
            manual_stuff += 'Found double sided upgrade: %s\n'%simple_name
        possible_double_sided_list[simple_name] = True

    # try to find cards, that add actions
    if card_en["available_actions"] != []:
        manual_stuff += ('Found card adding a action: %s\n'%card_en["name"])
    

# do some replacements
output_text = output_text.replace('<leftbank>','%BANKLEFT%')
output_text = output_text.replace('<rightbank>','%BANKRIGHT%')
output_text = output_text.replace('<leftturn>','%TURNLEFT%')
output_text = output_text.replace('<rightturn>','%TURNRIGHT%')
output_text = output_text.replace('<straight>','%STRAIGHT%')
output_text = output_text.replace('<kturn>','%KTURN%')
output_text = output_text.replace('<leftsloop>','%SLOOPLEFT%')
output_text = output_text.replace('<rightsloop>','%SLOOPRIGHT%')
output_text = output_text.replace('<return>','%LINEBREAK%')
output_text = output_text.replace('<nonbreak>',' ')
output_text = output_text.replace('<shipability>','')
output_text = output_text.replace('</shipability>','')
output_text = output_text.replace('<flavor>','')
output_text = output_text.replace('</flavor>','') # we could also remove all flavor text?
output_text = output_text.replace('<smallcaps>','')
output_text = output_text.replace('</smallcaps>','')
output_text = output_text.replace('<sabold>','')
output_text = output_text.replace('</sabold>','')
output_text = output_text.replace('<bold>','')
output_text = output_text.replace('</bold>','')
output_text = output_text.replace('<italic>','')
output_text = output_text.replace('</italic>','')
output_text = output_text.replace('<bitalic>','')
output_text = output_text.replace('</bitalic>','')
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
output_text = output_text.replace('<calculate>','%CALCULATE%')
output_text = output_text.replace('<standardcharge>','%CHARGE%')
output_text = output_text.replace('<forcecharge>','%FORCE%')
output_text = output_text.replace('<torpedo>','%TORPEDO%')
output_text = output_text.replace('<missile>','%MISSILE%')
output_text = output_text.replace('<cannon>','%CANNON%')
output_text = output_text.replace('<turret>','%TURRET%')
output_text = output_text.replace('<config>','%CONFIG%')
output_text = output_text.replace('<talent>','%TALENT%')
output_text = output_text.replace('<illicit>','%ILLICIT%')
output_text = output_text.replace('<crew>','%CREW%')
output_text = output_text.replace('<astro>','%ASTROMECH%')
output_text = output_text.replace('<bullseye>','%BULLSEYEARC%')
output_text = output_text.replace('<frontarc>','%FRONTARC%')
output_text = output_text.replace('<reararc>','%REARARC%')
output_text = output_text.replace('<fullfront>','%FULLFRONTARC%')
output_text = output_text.replace('<fullrear>','%FULLREARARC%')
output_text = output_text.replace('<turretarc>','%SINGLETURRETARC%')
output_text = output_text.replace('<hit>','%HIT%')
output_text = output_text.replace('<crit>','%CRIT%')

# Change quotes in Names, to match the YASB scheme (e.g. replace '“Zeb” Orrelios' with '"Zeb" Orrelios')
output_text = re.sub('"(.*?)“(.*?)”(.*?)"',r"""'\1"\2"\3'""",output_text)
output_text = output_text.replace('’',"'")

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
