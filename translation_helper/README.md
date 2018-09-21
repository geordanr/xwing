This translation script is supposed to help you in translating YASB to your language. It won't do all the work, but helps a lot. 

How to use it?
Grab the .json provided by FFG here in your own language: https://squadbuilder.fantasyflightgames.com/api/cards/

Store it as api_export_de.json

Update the api_export_en.json if there have been any new cards published. 

Translated ship names are not available form FFG, so you need to translate them in ship_translations.json manually

Run the translate.py script. It will create a file named translation.coffee, which contains translations for pilots and upgrades. It also creates a todo.txt, telling you on which cards it needs some help. Translate those cards manually (simply edid the translation.coffee), and merge the translation.coffee into the cards-yourLanguage.coffee file. 

I hoped I saved you some time ;-)