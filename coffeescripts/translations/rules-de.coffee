# This must be loaded before any of the card language modules!
exportObj = exports ? this

# Returns an independent copy of the data which can be modified by translation modules.
exportObj.ruleLoaders ?= {}
exportObj.ruleLoaders.Deutsch = () ->
    # console.log("German rules file active")
    exportObj.rulesEntries = ->
        # console.log("German rules file accessed")
        version:
            number: "1.4.5"
            date: "06/09/23"
        glossary:
            "bla":
                name: "test"
                text: """test text"""
                
        faq:
            "test":
                name: "some question"
                text: """some answere"""
           