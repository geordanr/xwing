_dfl_onWaitTimeout = casper.options.onWaitTimeout
casper.options.onWaitTimeout = ->
    casper.capture "casperjs.png"
    _dfl_onWaitTimeout()

casper.test.begin "Page comes up", (test) ->
    casper.start "index.html", ->
        @waitUntilVisible '.tab-content'

    .then ->
        nav_sel = 'ul.nav.nav-pills'
        test.assertVisible nav_sel
        for tab_text in [ "Rebel Alliance", "Galactic Empire", "Card Browser", "About" ]
            test.assertSelectorHasText nav_sel, tab_text

        test.assertSelectorHasText '.squad-name-container .squad-name', 'Unnamed Squadron'

        test.assertSelectorHasText '.pilot-selector-container', 'Select a pilot'

    .run ->
        test.done()

casper.test.begin "Basic functionality", (test) ->
    casper.start "index.html", ->
        @waitUntilVisible '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'
    .then ->
        @mouseEvent 'mousedown', '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', 'Rookie Pilot'
        @mouseEvent 'mouseup', '.select2-match'
        @waitUntilVisible '#rebel-builder .ship-xwing0 .points-display-container'
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 21
        test.assertSelectorHasText '#rebel-builder .total-points', 21
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:first-of-type .select2-choice', 'No Torpedo Upgrade'
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:nth-of-type(2) .select2-choice', 'No Astromech Upgrade'
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:nth-of-type(3) .select2-choice', 'No Modification'
        test.assertDoesntExist '.ship-xwing0 .addon-container .select2-container:nth-of-type(4)'

    .run ->
        test.done()
