require = patchRequire global.require
selectXPath = require('casper').selectXPath

exports.setup = ->
    _dfl_onWaitTimeout = casper.options.onWaitTimeout
    casper.options.onWaitTimeout = ->
        casper.capture "casperjs.png"
        _dfl_onWaitTimeout()

    casper.test.on 'fail', ->
        casper.capture 'casperjs.png'


exports.selectFirstMatch = (select2_selector, search_text) =>
    exports.selectNthMatch select2_selector, 1, search_text

exports.selectNthMatch = (select2_selector, n, search_text) =>
    casper.then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', search_text
        @mouseEvent 'mouseup', ".select2-match:nth-of-type(#{n})"

exports.assertNoMatch = (test, select2_selector, search_text) =>
    casper.then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', search_text
        test.assertExists '.select2-no-results', "No match found for #{search_text}"
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"

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
            exports.addShip builder_selector, ship.pilot
            for upgrade, upgrade_idx in ship.upgrades
                if upgrade?
                    exports.addUpgrade builder_selector, ship_idx + 1, upgrade_idx + 1, upgrade

exports.assertTotalPoints = (test, builder_selector, points) ->
    casper.then ->
        test.assertSelectorHasText "#{builder_selector} .total-points", parseInt(points), "#{builder_selector} reports #{points} points used"

# Indices passed as arguments are 1-based, to match the CSS indexing.
# So the first ship has a ship_idx of 1.
exports.assertShipHasPoints = (test, builder_selector, ship_idx, points) ->
    casper.then ->
        test.assertSelectorHasText "#{builder_selector} #{exports.selectorForShipIndex(ship_idx)} .points-display-container", points, "Ship in slot #{ship_idx} is worth #{points} points"

exports.waitForStartup = (builder_selector) ->
    casper.start "index.html", ->
        # Wait for pilot selector to become visible
        @waitUntilVisible "#{builder_selector} .pilot-selector-container .select2-container .select2-choice:first-child"
    .then ->
        exports.selectLanguage('English')

exports.addShip = (builder_selector, pilot) ->
    exports.selectFirstMatch("#{builder_selector} #{exports.selectorForLastShip} .pilot-selector-container .select2-container", pilot)

exports.removeShip = (builder_selector, ship_idx) ->
    casper.then ->
        @click "#{builder_selector} #{exports.selectorForShipIndex(ship_idx)} .remove-pilot"
        @waitForSelectorTextChange "#{builder_selector} .total-points"

exports.addUpgrade = (builder_selector, ship_idx, upgrade_idx, upgrade) ->
    exports.selectFirstMatch("#{builder_selector} #{exports.selectorForUpgradeIndex(ship_idx, upgrade_idx)}", upgrade)

exports.removeUpgrade = (builder_selector, ship_idx, upgrade_idx) ->
    exports.deselect("#{builder_selector} #{exports.selectorForUpgradeIndex(ship_idx, upgrade_idx)}")

exports.openRebelBuilder = ->
    casper.then ->
        @click '#rebelTab'

exports.openEmpireBuilder = ->
    casper.then ->
        @click '#empireTab'

exports.selectLanguage = (language) ->
    casper.then ->
        @click('.language-picker a')
    .waitUntilVisible '.dropdown-menu', ->
        @click(selectXPath("""//li[contains(@class, 'language-picker')]//li[contains(., '#{language}')]"""))
    .waitFor ->
        @fetchText('.language-placeholder') == language

# Selectors

exports.selectorForShipIndex = (ship_idx) ->
    ".ship:nth-of-type(#{ship_idx})"

exports.selectorForLastShip = ".ship:last-of-type"

exports.selectorForUpgradeIndex = (ship_idx, upgrade_idx) ->
    "#{exports.selectorForShipIndex ship_idx} .addon-container .select2-container:nth-of-type(#{upgrade_idx})"
