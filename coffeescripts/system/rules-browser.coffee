###
    X-Wing Rules Browser
    Stephen Kim <raithos@gmail.com>
    https://github.com/raithos/xwing
###
exportObj = exports ? this

# Assumes cards.js has been loaded

class exportObj.RulesBrowser
    constructor: (args) ->
        # args
        @container = $ args.container

        # internals
        @language = 'English'

        @prepareRulesData()

        @setupRuleUI()
        @setupRulesHandlers()

    setupRuleUI: () ->
        @container.append $.trim """
            <div class="container-fluid xwing-rules-browser">
                <div class="row-fluid">
                    <div class="span4">
                        <div class="well card-search-container">
                            <h3>Rules Search</h3>
                            <div class="advanced-search-container">
                                <div class = "well search-container general-search-container">
                                    <h4 class="version">Version: </h4>
                                    <label class = "text-search advanced-search-label">
                                        <strong>Term: </strong>
                                        <input type="search" placeholder="Search for game term or card" class = "rule-search-text">
                                    </label>
                                </div>
                            </div>
                            <div class="rules-container card-selector-container">
                            </div>
                        </div>
                    </div>
                    <div class="span8">
                        <div class="well card-viewer-container card-search-container">
                            <span class="info-name"></span>
                            <br />
                            <p class="info-text" />
                        </div>
                    </div>
                </div>
            </div>
        """

        @versionlabel = $ @container.find('.xwing-rules-browser .version')
        @rule_selector_container = $ @container.find('.xwing-rules-browser .rules-container')
        @rule_viewer_container = $ @container.find('.xwing-rules-browser .card-viewer-container')
        @rule_viewer_container.hide()
        @advanced_search_container = $ @container.find('.xwing-rules-browser .advanced-search-container')

        # TODO: Make added inputs easy accessible
        
        version = @all_rules.version.number
        date = @all_rules.version.date
        @versionlabel.append "#{version}, #{date}"

        @rule_search_rules_text = ($ @container.find('.xwing-rules-browser .rule-search-text'))[0]

    setupRulesHandlers: () ->
        @renderRulesList()

        $(window).on 'xwing:afterLanguageLoad', (e, language, cb=$.noop) =>
            @language = language
            @prepareRulesData()
            @renderRulesList()
        @rule_search_rules_text.oninput = => @renderRulesList()

    prepareRulesData: () ->
        @all_rules = exportObj.rulesEntries()

        @ruletype = [ 'glossary', 'faq' ]

        
    renderRulesList: () ->
        # sort_by is one of `name`, `type-by-name`, `source`, `type-by-points`
        #
        # Renders multiselect to container
        # Selects previously selected rule if there is one
        @rule_selector.remove() if @rule_selector?
        @rule_selector = $ document.createElement('SELECT')
        @rule_selector.addClass 'card-selector'
        @rule_selector.attr 'size', 25
        @rule_selector_container.append @rule_selector
        
        for type in @ruletype
            optgroup = $ document.createElement('OPTGROUP')
            optgroup.attr 'label', exportObj.translate(@language, 'rulestypes', type)

            rule_added = false
            for rule_name, rule_data of @all_rules[type]
                if @checkRulesSearchCriteria rule_data
                    @addRulesTo optgroup, rule_data
                    rule_added = true
            if rule_added
                @rule_selector.append optgroup
                
        @rule_selector.change (e) =>
            @renderRules $(@rule_selector.find(':selected'))

    renderRules: (rule) ->
        # Renders rule to rule container
        data = 
            name: rule.data 'name'
            text: rule.data 'text'
        orig_type = 'Rules'

        exportObj.builders[0].showTooltip(orig_type, data, add_opts ? {}, @rule_viewer_container) # we use the render method from the squad builder, cause it works.

        @rule_viewer_container.show()
        # @rule_viewer_placeholder.hide()

    addRulesTo: (container, rule) ->
        option = $ document.createElement('OPTION')
        option.text "#{rule.name}"
        option.data 'name', rule.name
        option.data 'text', exportObj.fixIcons rule
        $(container).append option

    checkRulesSearchCriteria: (rule) ->
        # check for text search
        search_text = @rule_search_rules_text.value.toLowerCase()
        text_search = rule.name.toLowerCase().indexOf(search_text) > -1 or (rule.text and rule.text.toLowerCase().indexOf(search_text)) > -1
        
        if not text_search
            return false
            
        return true