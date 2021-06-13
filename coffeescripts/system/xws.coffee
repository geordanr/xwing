exportObj = exports ? this

exportObj.fromXWSFaction =
    'rebelalliance': 'Rebel Alliance'
    'rebels': 'Rebel Alliance'
    'rebel': 'Rebel Alliance'
    'galacticempire': 'Galactic Empire'
    'imperial': 'Galactic Empire'
    'scumandvillainy': 'Scum and Villainy'
    'firstorder': 'First Order'
    'resistance': 'Resistance'
    'galacticrepublic': 'Galactic Republic'
    'separatistalliance': 'Separatist Alliance'

exportObj.toXWSFaction =
    'Rebel Alliance': 'rebelalliance'
    'Galactic Empire': 'galacticempire'
    'Scum and Villainy': 'scumandvillainy'
    'First Order': 'firstorder'
    'Resistance': 'resistance'
    'Galactic Republic': 'galacticrepublic'
    'Separatist Alliance': 'separatistalliance'

exportObj.toXWSUpgrade =
    'Modification': 'modification'
    'Force':'force-power'
    'Tactical Relay':'tactical-relay'

exportObj.fromXWSUpgrade =
    'amd': 'Astromech'
    'astromechdroid': 'Astromech'
    'ept': 'Talent'
    'elitepilottalent': 'Talent'
    'system': 'Sensor'
    'mod': 'Modification'
    'force-power':'Force'
    'tactical-relay':'Tactical Relay'

SPEC_URL = 'https://github.com/elistevens/xws-spec'
SQUAD_TO_XWS_URL = 'http://squad2xws.herokuapp.com/translate/'

exportObj.loadXWSButton = (xws_import_modal) ->
        import_status = $ xws_import_modal.find('.xws-import-status')
        import_status.text exportObj.translate('ui', 'Loading...')
        do (import_status) =>
            loadxws = (xws) =>
                $(window).trigger 'xwing:activateBuilder', [exportObj.fromXWSFaction[xws.faction], (builder) =>
                    if builder.current_squad.dirty and builder.backend?
                        xws_import_modal.modal 'hide'
                        builder.backend.warnUnsaved builder, =>
                            builder.loadFromXWS xws, (res) =>
                                unless res.success
                                    xws_import_modal.modal 'show'
                                    import_status.text res.error
                    else
                        builder.loadFromXWS xws, (res) =>
                            if res.success
                                xws_import_modal.modal 'hide'
                            else
                                import_status.text res.error
                ]

            input = xws_import_modal.find('.xws-content').val()
            try
                # try if we got a JSON input
                xws = JSON.parse input
                loadxws(xws)
            catch e
                # we did not get JSON. Maybe we got an official builder link/uid
                # strip everything before the last /
                uuid = input.split('/').pop()
                jsonurl = SQUAD_TO_XWS_URL + uuid
                # let squad2xws create an xws for us and read this
                ($.getJSON jsonurl, loadxws).catch((e) => import_status.text 'Invalid Input')
