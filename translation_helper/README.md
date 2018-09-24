This translation script is supposed to help you in translating YASB to your language. 
It won't do all the work, but helps a lot. 

How to use it?
Grab the .json provided by FFG in your own language by running jsonDownloader.py [YOUR LANGUAGE]

For example, if you're French run "jsonDownloader.py fr".
Make sure to also run "jsonDownloader.py en" to ensure you have the newest cards!

Translated ship names are not available form FFG, so you need to translate them in ship_translations.json manually. 
If you don't, all ships in your language will be named "CHANGE ME"...;-)

Run the translate.py script. 
It will create a file named translation.coffee, which contains translations for pilots and upgrades. 
It also creates a todo.txt, telling you on which cards it needs some help. 
Translate those cards manually (simply edit the translation.coffee), and merge the translation.coffee into the ../coffeescripts/cards-yourLanguage.coffee file. 

Of course, if you don't want to change all the CHANGE MEs at once, that is no problem. 
You have to copy the lines manually in the end anyway. 
Just ignore the ones with CHANGE ME!

I hoped I saved you some time ;-)
