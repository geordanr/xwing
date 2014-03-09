require = patchRequire global.require
common = require './common'

common.setup()


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

    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Rookie Pilot')
    .then ->
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

casper.test.begin "Add/remove torpedo upgrade", (test) ->
    casper.start "index.html", ->
        # Wait for pilot selector to become visible
        @waitUntilVisible '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'

    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Rookie Pilot')
    .then ->
        @waitUntilVisible '#rebel-builder .ship-xwing0 .points-display-container'

    common.selectFirstMatch('.ship-xwing0 .addon-container .select2-container:first-of-type', 'Proton Torpedoes')
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 25
        test.assertSelectorHasText '#rebel-builder .total-points', 25

    common.deselect('.addon-container .select2-container:first-of-type')
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 21
        test.assertSelectorHasText '#rebel-builder .total-points', 21
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:first-of-type .select2-choice', 'No Torpedo Upgrade'

    .run ->
        test.done()

casper.test.begin "Add/remove astromech upgrade", (test) ->
    casper.start "index.html", ->
        # Wait for pilot selector to become visible
        @waitUntilVisible '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'

    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Rookie Pilot')
    .then ->
        @waitUntilVisible '#rebel-builder .ship-xwing0 .points-display-container'

    common.selectFirstMatch('.ship-xwing0 .addon-container .select2-container:nth-of-type(2)', 'R5-K6')
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 23
        test.assertSelectorHasText '#rebel-builder .total-points', 23

    common.deselect('.addon-container .select2-container:nth-of-type(2)')
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 21
        test.assertSelectorHasText '#rebel-builder .total-points', 21
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:nth-of-type(2) .select2-choice', 'No Astromech Upgrade'

    .run ->
        test.done()

casper.test.begin "Add/remove modification", (test) ->
    casper.start "index.html", ->
        # Wait for pilot selector to become visible
        @waitUntilVisible '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'

    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Rookie Pilot')
    .then ->
        @waitUntilVisible '#rebel-builder .ship-xwing0 .points-display-container'

    common.selectFirstMatch('.ship-xwing0 .addon-container .select2-container:nth-of-type(3)', 'Engine Upgrade')
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 25
        test.assertSelectorHasText '#rebel-builder .total-points', 25

    common.deselect('.addon-container .select2-container:nth-of-type(3)')
    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 21
        test.assertSelectorHasText '#rebel-builder .total-points', 21
        test.assertSelectorHasText '.ship-xwing0 .addon-container .select2-container:nth-of-type(3) .select2-choice', 'No Modification'

    .run ->
        test.done()

casper.test.begin "Multiple upgrades", (test) ->
    casper.start "index.html", ->
        # Wait for pilot selector to become visible
        @waitUntilVisible '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'

    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Rookie Pilot')
    .then ->
        @waitUntilVisible '#rebel-builder .ship-xwing0 .points-display-container'

    common.selectFirstMatch('.ship-xwing0 .addon-container .select2-container:first-of-type', 'Proton Torpedoes')
    common.selectFirstMatch('.ship-xwing0 .addon-container .select2-container:nth-of-type(2)', 'R5-K6')
    common.selectFirstMatch('.ship-xwing0 .addon-container .select2-container:nth-of-type(3)', 'Engine Upgrade')

    .then ->
        test.assertSelectorHasText '#rebel-builder .ship-xwing0 .points-display-container', 31
        test.assertSelectorHasText '#rebel-builder .total-points', 31

    .run ->
        test.done()

casper.test.begin "Add/remove ships", (test) ->
    casper.start "index.html", ->
        # Wait for pilot selector to become visible
        @waitUntilVisible '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'

    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Rookie Pilot')
    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Gold Squadron Pilot')
    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Blue Squadron Pilot')

    .then ->
        test.assertSelectorHasText '#rebel-builder .total-points', 61

    .then ->
        @click '#rebel-builder .ship:nth-of-type(2) .remove-pilot'
        @waitForSelectorTextChange '#rebel-builder .total-points'
    .then ->
        test.assertSelectorHasText '#rebel-builder .total-points', 43

    .then ->
        @click '#rebel-builder .ship:nth-of-type(2) .remove-pilot'
        @waitForSelectorTextChange '#rebel-builder .total-points'
    .then ->
        test.assertSelectorHasText '#rebel-builder .total-points', 21

    .then ->
        @click '#rebel-builder .ship:first-of-type .remove-pilot'
        @waitForSelectorTextChange '#rebel-builder .total-points'
    .then ->
        test.assertSelectorHasText '#rebel-builder .total-points', 0

    common.selectFirstMatch('#rebel-builder .ship:last-of-type .pilot-selector-container .select2-container', 'Rookie Pilot')
    .then ->
        test.assertSelectorHasText '#rebel-builder .total-points', 21

    .run ->
        test.done()

casper.test.begin "Build from list specification", (test) ->
    casper.start "index.html", ->
        # Wait for pilot selector to become visible
        @waitUntilVisible '#rebel-builder .pilot-selector-container .select2-container .select2-choice:first-child'

    common.createList('#rebel-builder', [
        {
            ship: 'X-Wing'
            pilot: 'Rookie Pilot'
            upgrades: [
                null
                'R2 Astromech'
                null
            ]
        }
        {
            ship: 'A-Wing'
            pilot: 'Prototype Pilot'
            upgrades: [
                'Concussion Missiles'
                null
            ]
        }
    ])

    .then ->
        test.assertSelectorHasText '#rebel-builder .total-points', 43

    .run ->
        test.done()
