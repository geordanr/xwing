_dfl_onWaitTimeout = casper.options.onWaitTimeout
casper.options.onWaitTimeout = ->
    casper.capture "casperjs.png"
    _dfl_onWaitTimeout()

selectFirstMatch = (select2_selector, search_text) =>
    selectNthMatch select2_selector, 1, search_text

selectNthMatch = (select2_selector, n, search_text) =>
    casper.then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', search_text
        @mouseEvent 'mouseup', ".select2-match:nth-of-type(#{n})"

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
        # Wait for pilot selector to become visible
        @waitUntilVisible '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'

    selectFirstMatch('#rebel-builder .pilot-selector-container .select2-container:first-of-type', 'Rookie Pilot')
    .then ->
        @waitUntilVisible '#rebel-builder .ship-xwing0 .points-display-container'
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 21
        test.assertSelectorHasText '#rebel-builder .total-points', 21
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:first-of-type .select2-choice', 'No Torpedo Upgrade'
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:nth-of-type(2) .select2-choice', 'No Astromech Upgrade'
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:nth-of-type(3) .select2-choice', 'No Modification'
        test.assertDoesntExist '.ship-xwing0 .addon-container .select2-container:nth-of-type(4)'

    selectFirstMatch('.ship-xwing0 .addon-container .select2-container:first-of-type', 'Proton Torpedoes')
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 25
        test.assertSelectorHasText '#rebel-builder .total-points', 25

    .run ->
        test.done()
