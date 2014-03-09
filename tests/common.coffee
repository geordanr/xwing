exports.setup = ->
    _dfl_onWaitTimeout = casper.options.onWaitTimeout
    casper.options.onWaitTimeout = ->
        casper.capture "casperjs.png"
        _dfl_onWaitTimeout()


exports.selectFirstMatch = (select2_selector, search_text) =>
    exports.selectNthMatch select2_selector, 1, search_text

exports.selectNthMatch = (select2_selector, n, search_text) =>
    casper.then ->
        @mouseEvent 'mousedown', "#{select2_selector} .select2-choice"
        @waitUntilVisible 'input.select2-input'
    .then ->
        @sendKeys 'input.select2-input', search_text
        @mouseEvent 'mouseup', ".select2-match:nth-of-type(#{n})"

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
            exports.selectFirstMatch("#{builder_selector} .ship:last-of-type .pilot-selector-container .select2-container", ship.pilot)
            for upgrade, upgrade_idx in ship.upgrades
                exports.selectFirstMatch("#{builder_selector} .ship:nth-of-type(#{ship_idx+1}) .addon-container .select2-container:nth-of-type(#{upgrade_idx+1})", upgrade) if upgrade?
