Yet Another Squad Builder 2.0
=============================

What?
-----
This is a squad builder for the Second Edition of the X-Wing Miniatures game by Atomic Mass Games (formerly owned by Fantasy Flight Games), completely in HTML and JavaScript.  No backend is necessary.
It can theoretically be dropped into any existing site, but since it uses a lot of styling from [Twitter Bootstrap](http://twitter.github.com/bootstrap/) it may require some CSS trickery if you're using some other incompatible framework (e.g. [Foundation](http://foundation.zurb.com)).

Isn't there already an Official Squadbuilder out?
----------------------------------------------------
Yes, but it is no longer supported by FFG/AMG

So...?
------
MAGIC

What happened to Geordanr?
-----------------------
He 'retired'. I took over.

When will this be done?
-----------------------
Whenever X-Wing as a game is dead. Our hearts don't count.

Building
========

1. Install [Node.js](http://nodejs.org/) to get `npm`.
2. `sudo npm install -g grunt-cli` to install the global Grunt CLI.
3. `npm install` to install the dependencies listed in `package.json`.
4. `grunt` to build everything into the `app` directory.  The builder is at `app/index.html`.

Translation
===========

Wanna help translating YASB into your language? You're welcome to do so! Write an issue to contact us so we can discuss how to get started. 

Credits
-------
[X-Wing Miniatures](https://www.atomicmassgames.com/xwing-documents) is by [Atomic Mass Games](https://www.atomicmassgames.com/) (until 2022 it was by Fantasy Flight Games). 
Icons and fonts originally from GeckoTH's excellent PSD, available [here](http://www.afewmaneuvers.com/topic/122-hi-res-photoshop-templates/).
X-Wing symbols and ships fonts courtesy [Hinny](https://github.com/Hinny) and [Josh Derksen](https://github.com/armoredgear7) and are available as a [Bower package](https://github.com/geordanr/xwing-miniatures-font).
Maneuver dial support by @hpanderson.
Fancy printout design inspired by TheKestrel on the FFG forums.
Upgrade card text integrated into printouts by [wffurr](https://github.com/wffurr).
Squad name in the permalink and obstacles choice modal by [zacharyp](https://github.com/zacharyp).

I'm not keeping this ReadMe up to date often; see the About section of the builder.
