(Yet Another) X-Wing Miniatures Squad Builder
=============================================

What?
-----
This is a squad builder for Fantasy Flight Games' X-Wing Miniatures
game, completely in HTML and JavaScript.  No backend is necessary.
It can theoretically be dropped into any existing site, but since
it uses a lot of styling from [Twitter
Bootstrap](http://twitter.github.com/bootstrap/) it may require
some CSS trickery if you're using some other incompatible framework
(e.g. [Foundation](foundation.zurb.com)).

Can I save squads or share them on `$SOCIAL_NETWORK`?
-----------------------------------------------------
Saving: yes, if you provide a backend that adheres to the API.  See my [X-Wing Backend](https://github.com/geordanr/xwing-backend) project for an example.  Sharing, no.

Aren't there other squad builders out there already?
----------------------------------------------------
Yes.

So...?
------
I wanted a project to work on and screw around with stuff like HAML and Bootstrap and Select2, etc.

When will this be done?
-----------------------
It's an ongoing process.

Credits
-------
[X-Wing Miniatures](http://www.fantasyflightgames.com/edge_minisite.asp?eidm=174&enmi=X-Wing) is by [Fantasy Flight Games](http://www.fantasyflightgames.com/index.asp).
Icons and fonts were taken from GeckoTH's excellent PSD, available [here](http://www.afewmaneuvers.com/forums/viewtopic.php?f=28&t=183).

CHANGELOG
=========

13 Sep 2013
-----------
* Fancy printout; design inspired by TheKestrel off the FFG forums.

8 Sep 2013
----------
* Finish Wave 3 ship integration.
* Add unique dots.
* Monkeypatch Select2 to stop focusing on the search input when on mobile.

29 May 2013
-----------
* Add card browser.
* Upgrade to Select2 3.4.0.

20 Apr 2013
-----------
* Add support for backend storage.

5 Jan 2013
----------
* Add fonts and more images from GeckoTH.

31 Dec 2012
-----------
* Add random squad builder.  Will attempt to generate a squad totalling the given number of points, stopping after a certain period of time or iterations.  May go over.  It's random.

30 Dec 2012
-----------
* Overhaul backend to be much less crappy.
* Add full support for Wave 2 ships (from what I can tell from what's been spoiled on [BoardGameGeek](http://boardgamegeek.com/).
* Switch from [Foundation](foundation.zurb.com) to [Twitter Bootstrap](http://twitter.github.com/bootstrap/).
* Switch from [Chosen](harvesthq.github.com/chosen/) to [Select2](http://ivaynberg.github.com/select2/).
* Now has a printer-friendly mode.
