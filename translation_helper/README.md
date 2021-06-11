# Translation helper

This translation script is supposed to help you in translating YASB to your
language.
It won't do all the work, but helps a lot.

THE TRANSLATION HELPER IS CURRENTLY NOT USEABLE, AS FFG CLOSED THE API


## How to use it?

1. Grab the .json provided by FFG in your own language by running:

   python3 jsonDownloader.py [LANGUAGE]

For example, for French, run `python3 jsonDownloader.py fr`.
Make sure to also run `python3 jsonDownloader.py en` to ensure you have the
newest cards!

If you get a `ModuleNotFoundError`, you may need to install dependencies using:

    pip3 install requests

2. Translate ship names

Translated ship names are not available from FFG, so you'll need to translate
them in `ship_translations.json` manually.
If you don't, all ships in your language will be named "CHANGE ME"...;-)
You also want to translate some common phrases that yasb wants to add to the
cards, found in `phrase_translations.json`.

3. Create Translation
3a. Save last Translation

   mv ./translation-[LANGUAGE].coffee ./translation-[LANGUAGE].old.coffee

3b. Run the translate script with the following command:

   python3 translate.py -l [YOUR LANGUAGE]

For example, for German, run `python3 translate.py -l fr`.

It will create a file named `translation-[LANGUAGE].coffee`, which contains
translations for pilots and upgrades.

It also creates a `todo.txt`, telling you on which cards it may need some help. 

4. Merge the translation file into the existing translation:

   git merge-file ../coffescript/cards-[LANGUAGE].coffe ./translation-[LANGUAGE].old.coffee ./translation-[LANGUAGE].coffee 

This will merge the new translation into the existing one for your language (so e.g. new cards will be added). If the merge does not recognice any matches, make sure the line endings match ;-)
Proceed as usual for git merges.
