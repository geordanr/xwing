# Translation helper

This translation script is supposed to help you in translating YASB to your
language.
It won't do all the work, but helps a lot.

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

3. Run the translate script with the following command:

   python3 translate.py -l [YOUR LANGUAGE]

For example, for German, run `python3 translate.py -l fr`.

It will create a file named `translation_[LANGUAGE].coffee`, which contains
translations for pilots and upgrades.

It also creates a `todo.txt`, telling you on which cards it needs some help.
Translate those cards manually (simply edit the translation file).

4. Merge the new translation strings

Replace the `pilot_translations` and `upgrade_translations` variables in the
`coffeescripts/cards-[LANGUAGE].coffee` with the new ones found in the
`translation_helper/translation_[LANGUAGE].coffee` file.

Of course, if you don't want to change all the CHANGE MEs at once, that is no
problem. You have to copy the lines manually in the end anyway.
Just ignore the ones with CHANGE ME!

I hoped I saved you some time ;-)
