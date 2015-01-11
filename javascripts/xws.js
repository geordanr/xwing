(function() {
  var QRErrorCorrectLevel, exportObj;

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.fromXWSFaction = {
    'rebels': 'Rebel Alliance',
    'empire': 'Galactic Empire',
    'scum': 'Scum and Villainy'
  };

  exportObj.toXWSFaction = {
    'Rebel Alliance': 'rebels',
    'Galactic Empire': 'empire',
    'Scum and Villainy': 'scum'
  };

  exportObj.toXWSUpgrade = {
    'Astromech': 'amd',
    'Elite': 'ept',
    'Modification': 'mod',
    'Salvaged Astromech': 'samd'
  };

  exportObj.fromXWSUpgrade = {
    'amd': 'Astromech',
    'astromechdroid': 'Astromech',
    'ept': 'Elite',
    'elitepilottalent': 'Elite',
    'mod': 'Modification',
    'samd': 'Salvaged Astromech'
  };

  QRErrorCorrectLevel = {
    L: 1,
    M: 0,
    Q: 3,
    H: 2
  };

  exportObj.XWSManager = (function() {
    function XWSManager(args) {
      this.container = $(args.container);
      this.setupUI();
      this.setupHandlers();
    }

    XWSManager.prototype.setupUI = function() {
      this.container.addClass('hidden-print');
      this.container.html($.trim("<div class=\"row-fluid\">\n    <div class=\"span9\">\n        <button class=\"btn btn-primary from-xws\">Import from XWS (beta)</button>\n        <button class=\"btn btn-primary to-xws\">Export to XWS (beta)</button>\n    </div>\n</div>"));
      this.xws_export_modal = $(document.createElement('DIV'));
      this.xws_export_modal.addClass('modal hide fade xws-modal hidden-print');
      this.container.append(this.xws_export_modal);
      this.xws_export_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close hidden-print\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>XWS Export (Beta!)</h3>\n</div>\n<div class=\"modal-body\">\n    <ul class=\"nav nav-pills\">\n        <li><a id=\"xws-text-tab\" href=\"#xws-text\" data-toggle=\"tab\">Text</a></li>\n        <li><a id=\"xws-qrcode-tab\" href=\"#xws-qrcode\" data-toggle=\"tab\">QR Code</a></li>\n    </ul>\n    <div class=\"tab-content\">\n        <div class=\"tab-pane\" id=\"xws-text\">\n            Copy and paste this into an XWS-compliant application to transfer your list.\n            <i>(This is in beta, and the <a href=\"https://gist.github.com/voidstate/288965581669a2a68073\">spec</a> is still being defined, so it may not work!)</i>\n            <div class=\"container-fluid\">\n                <textarea class=\"xws-content\"></textarea>\n            </div>\n        </div>\n        <div class=\"tab-pane\" id=\"xws-qrcode\">\n            Below is a QR Code of XWS.  <i>This is still very experimental!</i>\n            <div id=\"xws-qrcode-container\"></div>\n        </div>\n    </div>\n</div>\n<div class=\"modal-footer hidden-print\">\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      this.xws_import_modal = $(document.createElement('DIV'));
      this.xws_import_modal.addClass('modal hide fade xws-modal hidden-print');
      this.container.append(this.xws_import_modal);
      return this.xws_import_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close hidden-print\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>XWS Import (Beta!)</h3>\n</div>\n<div class=\"modal-body\">\n    Paste XWS here to load a list exported from another application.\n    <i>(This is in beta, and the <a href=\"https://gist.github.com/voidstate/288965581669a2a68073\">spec</a> is still being defined, so it may not work!)</i>\n    <div class=\"container-fluid\">\n        <textarea class=\"xws-content\" placeholder=\"Paste XWS here...\"></textarea>\n    </div>\n</div>\n<div class=\"modal-footer hidden-print\">\n    <span class=\"xws-import-status\"></span>&nbsp;\n    <button class=\"btn btn-primary import-xws\">Import It!</button>\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
    };

    XWSManager.prototype.setupHandlers = function() {
      this.from_xws_button = this.container.find('button.from-xws');
      this.from_xws_button.click((function(_this) {
        return function(e) {
          e.preventDefault();
          return _this.xws_import_modal.modal('show');
        };
      })(this));
      this.to_xws_button = this.container.find('button.to-xws');
      this.to_xws_button.click((function(_this) {
        return function(e) {
          e.preventDefault();
          return $(window).trigger('xwing:pingActiveBuilder', function(builder) {
            var textarea, xws_json;
            textarea = $(_this.xws_export_modal.find('.xws-content'));
            textarea.attr('readonly');
            xws_json = JSON.stringify(builder.toXWS());
            textarea.val(xws_json);
            $('#xws-qrcode-container').text('');
            $('#xws-qrcode-container').qrcode({
              text: xws_json,
              correctLevel: QRErrorCorrectLevel.L
            });
            _this.xws_export_modal.modal('show');
            $('#xws-text-tab').tab('show');
            textarea.select();
            return textarea.focus();
          });
        };
      })(this));
      $('#xws-qrcode-container').click(function(e) {
        return window.open($('#xws-qrcode-container canvas')[0].toDataURL());
      });
      this.load_xws_button = $(this.xws_import_modal.find('button.import-xws'));
      return this.load_xws_button.click((function(_this) {
        return function(e) {
          var import_status;
          e.preventDefault();
          import_status = $(_this.xws_import_modal.find('.xws-import-status'));
          import_status.text('Loading...');
          return (function(import_status) {
            var xws;
            try {
              xws = JSON.parse(_this.xws_import_modal.find('.xws-content').val());
            } catch (_error) {
              e = _error;
              import_status.text('Invalid JSON');
              return;
            }
            return (function(xws) {
              return $(window).trigger('xwing:activateBuilder', [
                exportObj.fromXWSFaction[xws.faction], function(builder) {
                  if (builder.current_squad.dirty && (builder.backend != null)) {
                    _this.xws_import_modal.modal('hide');
                    return builder.backend.warnUnsaved(builder, function() {
                      return builder.loadFromXWS(xws, function(res) {
                        if (!res.success) {
                          _this.xws_import_modal.modal('show');
                          return import_status.text(res.error);
                        }
                      });
                    });
                  } else {
                    return builder.loadFromXWS(xws, function(res) {
                      if (res.success) {
                        return _this.xws_import_modal.modal('hide');
                      } else {
                        return import_status.text(res.error);
                      }
                    });
                  }
                }
              ]);
            })(xws);
          })(import_status);
        };
      })(this));
    };

    return XWSManager;

  })();

}).call(this);

//@ sourceMappingURL=xws.map