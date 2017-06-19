require = patchRequire global.require
selectXPath = require('casper').selectXPath

exports.setup = ->
    _dfl_onWaitTimeout = casper.options.onWaitTimeout
    casper.options.onWaitTimeout = ->
        casper.capture "casperjs.png"
        _dfl_onWaitTimeout()

    casper.test.on 'fail', ->
        casper.capture 'casperjs.png'
        # casper.die()

    casper.on 'remote.message', (message) ->
        casper.log("Console log: #{message}", "debug")

    casper.on 'resource.error', (resourceError) ->
        casper.log "Failed to load #{resourceError.url} (#{resourceError.errorCode} #{resourceError.errorString})", 'debug'

    casper.on 'page.error', (msg, trace) ->
        casper.log "Javascript error: #{msg}", "warning"
        for obj in trace
            casper.log "\t#{obj.file}:#{obj.line}, function #{obj.function}"

# These fat arrows are necessary, despite what Coffeelint says
exports.selectFirstMatch = (select2_selector, search_text) =>
    exports.selectNthMatch select2_selector, 1, search_text

exports.selectNthMatch = (select2_selector, n, search_text) =>
    casper.waitUntilVisible("#{select2_selector}")
    .then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', search_text
        @mouseEvent 'mouseup', ".select2-result:nth-of-type(#{n})"

exports.selectExactMatch = (select2_selector, search_text) =>
    casper.waitUntilVisible("#{select2_selector}")
    .then ->
        @log "=== Opening selector #{select2_selector}", "debug"
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @log "=== Sending '#{search_text}' to selector #{select2_selector}", "debug"
        @sendKeys 'input.select2-input', search_text
    .then ->
        matchIndices = @evaluate (q) ->
            $('.select2-result').map (idx,elem) ->
                if $(elem).text().trim() == q
                    idx
        , search_text
        if matchIndices.length == 1
            @log "=== Clicking on result #{matchIndices[0]+1}", "debug"
            @mouseEvent 'mouseup', ".select2-result:nth-of-type(#{matchIndices[0]+1})"
        else
            casper.log "No matches for search text '#{search_text}' at #{select2_selector}"
    .then ->
        @log "=== Exiting selectExactMatch", "debug"

exports.assertNoMatch = (test, select2_selector, search_text) =>
    casper.then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', search_text
        @capture 'casperjs.png'
        test.assertVisible '.select2-no-results', "No match found for #{search_text}"
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"

exports.assertMatchIsDisabled = (test, select2_selector, search_text) =>
    casper.then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', search_text
        test.assertSelectorHasText '.select2-disabled', search_text, "#{search_text} is disabled"
        @mouseEvent 'mousedown', ".select2-drop-mask"

exports.assertMatchIsNotInCollection = (test, select2_selector, search_text) =>
    casper.then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', search_text
        test.assertSelectorHasText '.select2-result-not-in-collection', search_text, "#{search_text} is marked as not in collection"
        @mouseEvent 'mousedown', ".select2-drop-mask"

exports.assertSelectorIsDisabled = (test, select2_selector) =>
    casper.then ->
        test.assertExists "#{select2_selector}.select2-container-disabled"

exports.assertSelectorIsEnabled = (test, select2_selector) =>
    casper.then ->
        test.assertDoesntExist "#{select2_selector}.select2-container-disabled"

exports.deselect = (select2_selector) ->
    casper.then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-search-choice-close"

exports.createList = (builder_selector, list) =>
    # [
    #   {
    #     ship: "X-Wing"
    #     pilot: "Rookie Pilot"
    #     upgrades: [
    #         null
    #         "R2 Astromech"
    #     ]
    #   }, ...
    # ]
    casper.then ->
        for ship, ship_idx in list
            exports.addShip builder_selector, ship.ship, ship.pilot
            for upgrade, upgrade_idx in ship.upgrades
                if upgrade?
                    exports.addUpgrade builder_selector, ship_idx + 1, upgrade_idx + 1, upgrade

exports.assertTotalPoints = (test, builder_selector, points) ->
    casper.then ->
        test.assertSelectorHasText "#{builder_selector} .total-points", parseInt(points), "#{builder_selector} reports #{points} points used"

exports.assertTotalEpicPoints = (test, builder_selector, epic_points) ->
    casper.then ->
        test.assertSelectorHasText "#{builder_selector} #{exports.selectorForEpicPointsUsed}", parseInt(epic_points), "#{builder_selector} reports #{epic_points} Epic Points used"

# Indices passed as arguments are 1-based, to match the CSS indexing.
# So the first ship has a ship_idx of 1.
exports.assertShipHasPoints = (test, builder_selector, ship_idx, points) ->
    casper.then ->
        test.assertSelectorHasText "#{builder_selector} #{exports.selectorForShipIndex(ship_idx)} .points-display-container", points, "Ship in slot #{ship_idx} is worth #{points} points"

exports.assertPointsRemaining = (test, builder_selector, remaining) ->
    casper.then ->
        test.assertSelectorHasText "#{builder_selector} #{exports.selectorForPointsRemaining}", remaining, "List has #{remaining} points available"

exports.waitForStartup = (builder_selector, url="app/index.html") ->
    casper.start url, ->
        @viewport(1280, 1024)
    .then ->
        # Wait for pilot selector to become visible
        @waitUntilVisible "#{builder_selector} #{exports.selectorForShipDropdown} .select2-choice:first-child"
    .then ->
        exports.selectLanguage('English')

exports.addShip = (builder_selector, ship, pilot) ->
    casper.then ->
        @log("=== addShip('#{builder_selector}', '#{ship}', '#{pilot}')", "debug")
    exports.selectExactMatch("#{builder_selector} #{exports.selectorForLastShip} #{exports.selectorForShipDropdown}", ship)
    exports.selectFirstMatch("#{builder_selector} #{exports.selectorForSecondToLastShip} #{exports.selectorForPilotDropdown}", pilot)

exports.removeShip = (builder_selector, ship_idx) ->
    row_id = null

    #casper.then ->
    #    @log "=== removing ship in #{builder_selector} at index #{ship_idx}", "debug"
    casper.waitUntilVisible("#{builder_selector} #{exports.selectorForRemoveShip(ship_idx)}")
    .wait 300, ->
        # Row ID is generated from the autogenerated ship selector select2 ID.
        row_id = "#row-#{@getElementAttribute("#{builder_selector} #{exports.selectorForShipIndex(ship_idx)} #{exports.selectorForShipDropdown}", 'id')}"

    .then ->
        @click("#{builder_selector} #{exports.selectorForRemoveShip(ship_idx)}")

    .waitWhileVisible("#{row_id}")
    .wait 300

exports.cloneShip = (builder_selector, ship_idx) ->
    casper.then ->
        @click "#{builder_selector} #{exports.selectorForCloneShip(ship_idx)}"
        #@waitForSelectorTextChange "#{builder_selector} .total-points"

exports.setShipType = (builder_selector, ship_idx, ship_type) ->
    casper.then ->
        @log("=== setShipType('#{builder_selector}', #{ship_idx}, '#{ship_type}')", "debug")
    exports.selectExactMatch("#{builder_selector} #{exports.selectorForShipIndex(ship_idx)} #{exports.selectorForShipDropdown}", ship_type)

exports.setPilot = (builder_selector, ship_idx, pilot) ->
    casper.then ->
        @log("=== setPilot('#{builder_selector}', #{ship_idx}, '#{pilot}')", "debug")
    exports.selectFirstMatch("#{builder_selector} #{exports.selectorForShipIndex(ship_idx)} #{exports.selectorForPilotDropdown}", pilot)

exports.addUpgrade = (builder_selector, ship_idx, upgrade_idx, upgrade) ->
    casper.then ->
        @log("=== addUpgrade('#{builder_selector}', #{ship_idx}, #{upgrade_idx}, '#{upgrade}')", "debug")
    exports.selectFirstMatch("#{builder_selector} #{exports.selectorForUpgradeIndex(ship_idx, upgrade_idx)}", upgrade)

exports.removeUpgrade = (builder_selector, ship_idx, upgrade_idx) ->
    exports.deselect("#{builder_selector} #{exports.selectorForUpgradeIndex(ship_idx, upgrade_idx)}")

exports.openRebelBuilder = ->
    casper.then ->
        @click '#rebelTab'

exports.openEmpireBuilder = ->
    casper.then ->
        @click '#empireTab'

exports.openScumBuilder = ->
    casper.then ->
        @click '#scumTab'

exports.openCardBrowser = ->
    casper.then ->
        @click '#browserTab'

exports.selectLanguage = (language) ->
    casper.then ->
        @click('.language-picker a')
    .waitUntilVisible '.dropdown-menu', ->
        @click(selectXPath("""//li[contains(@class, 'language-picker')]//li[contains(., '#{language}')]"""))
    .waitFor ->
        @fetchText('.language-placeholder') == language

exports.assertSelect2HasText = (test, selector, text) ->
    casper.then ->
        actual_text = @evaluate (sel) ->
            $(sel).data('select2').data().text
        , selector
        test.assert((actual_text ? "").indexOf(text) != -1, "Found #{actual_text}")

exports.assertSelect2IsEmpty = (test, selector) ->
    casper.then ->
        actual_text = @evaluate (sel) ->
            $(sel).data('select2').data().text
        , selector
        test.assert(actual_text == null, "Selector is empty")

exports.assertShipTypeIs = (test, builder_selector, ship_idx, ship) ->
    exports.assertSelect2HasText(test, "#{builder_selector} #{exports.selectorForShipIndex(ship_idx)} #{exports.selectorForShipDropdown}", ship)

exports.assertPilotIs = (test, builder_selector, ship_idx, pilot) ->
    exports.assertSelect2HasText(test, "#{builder_selector} #{exports.selectorForShipIndex(ship_idx)} #{exports.selectorForPilotDropdown}", pilot)

exports.assertUpgradeInSlot = (test, builder_selector, ship_idx, upgrade_idx, upgrade) ->
    exports.assertSelect2HasText(test, "#{builder_selector} #{exports.selectorForUpgradeIndex(ship_idx, upgrade_idx)}", upgrade)

exports.assertNoUpgradeInSlot = (test, builder_selector, ship_idx, upgrade_idx) ->
    exports.assertSelect2IsEmpty(test, "#{builder_selector} #{exports.selectorForUpgradeIndex(ship_idx, upgrade_idx)}")

exports.selectInCardBrowser = (text) ->
    casper.thenEvaluate (t) ->
        $('.card-selector').val(t).change()
    , text

exports.assertInCardBrowserDisplay = (test, text) ->
    casper.then ->
        test.assertSelectorHasText '.card-viewer-container', text, "Text '#{text}' in card browser info display"

exports.setGameType = (builder_selector, gametype) ->
    casper.then ->
        @log("=== Setting game type to #{gametype}", "debug")
    casper.thenEvaluate (sel, gtsel, gt) ->
        $("#{sel} #{gtsel}").val(gt)
        $("#{sel} #{gtsel}").change()
    , builder_selector, exports.selectorForGameTypeDropdown, gametype

exports.assertGameTypeIs = (test, builder_selector, gametype) ->
    casper.then ->
        test.assertFieldCSS("#{builder_selector} #{exports.selectorForGameTypeDropdown}", gametype)

# Selectors

exports.selectorForShipIndex = (ship_idx) ->
    ".ship:nth-of-type(#{ship_idx})"

# WARNING: Because of how last-of-type works, having a DIV after the ship rows breaks this. :(
#          What we really want is nth-last-match(0): https://www.w3.org/TR/selectors4/#nth-last-match-pseudo
exports.selectorForLastShip = ".ship:last-of-type"

exports.selectorForSecondToLastShip = ".ship:nth-last-of-type(2)"

exports.selectorForUpgradeIndex = (ship_idx, upgrade_idx) ->
    "#{exports.selectorForShipIndex ship_idx} .addon-container .select2-container:nth-of-type(#{upgrade_idx})"

exports.selectorForRemoveShip = (ship_idx) ->
    "#{exports.selectorForShipIndex(ship_idx)} .remove-pilot"

exports.selectorForCloneShip = (ship_idx) ->
    "#{exports.selectorForShipIndex(ship_idx)} .copy-pilot"

exports.selectorForShipDropdown = '.select2-container.ship-selector-container'

exports.selectorForPilotDropdown = '.select2-container.pilot-selector-container'

exports.selectorForGameTypeDropdown = '.game-type-selector'

exports.selectorForEpicWarning = '.epic-content-used'
exports.selectorForIllegalEpicWarning = '.illegal-epic-upgrades'

exports.selectorForPointsRemaining = '.points-remaining-container .points-remaining'

exports.selectorForTooManySmallShipsWarning = '.illegal-epic-too-many-small-ships'
exports.selectorForTooManyLargeShipsWarning = '.illegal-epic-too-many-large-ships'

exports.selectorForEpicPointsUsed = '.total-epic-points'
exports.selectorForMaxEpicPoints = '.max-epic-points'

exports.selectorForCollectionInvalid = '.collection-invalid'

exports.selectorForViewAsTextButton = '.view-as-text'
exports.selectorForBBCodeView = '.select-bbcode-view'
exports.selectorForBBCodeTextarea = '.bbcode-list textarea'
exports.selectorForHTMLView = '.select-html-view'
exports.selectorForHTMLTextarea = '.html-list textarea'
exports.selectorForClosePrintDialog = '.close-print-dialog'
