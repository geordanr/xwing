
/*
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
*/


(function() {
  var exportObj,
    __slice = [].slice;

  window.iced = {
    Deferrals: (function() {

      function _Class(_arg) {
        this.continuation = _arg;
        this.count = 1;
        this.ret = null;
      }

      _Class.prototype._fulfill = function() {
        if (!--this.count) return this.continuation(this.ret);
      };

      _Class.prototype.defer = function(defer_params) {
        var _this = this;
        ++this.count;
        return function() {
          var inner_params, _ref;
          inner_params = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
          if (defer_params != null) {
            if ((_ref = defer_params.assign_fn) != null) {
              _ref.apply(null, inner_params);
            }
          }
          return _this._fulfill();
        };
      };

      return _Class;

    })(),
    findDeferral: function() {
      return null;
    },
    trampoline: function(_fn) {
      return _fn();
    }
  };
  window.__iced_k = window.__iced_k_noop = function() {};

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.SquadBuilderBackend = (function() {
    /*
            Usage:
    
                rebel_builder = new SquadBuilder
                    faction: 'Rebel Alliance'
                    ...
                empire_builder = new SquadBuilder
                    faction: 'Galactic Empire'
                    ...
                backend = new SquadBuilderBackend
                    server: 'https://xwing.example.com'
                    builders: [ rebel_builder, empire_builder ]
    */

    function SquadBuilderBackend(args) {
      var builder, _i, _len, _ref;
      this.server = args.server;
      this.builders = args.builders;
      this.authenticated = false;
      this.ui_ready = false;
      this.oauth_window = null;
      this.method_metadata = {
        google_oauth2: {
          icon: 'icon-google-plus-sign',
          text: 'Google'
        },
        facebook: {
          icon: 'icon-facebook-sign',
          text: 'Facebook'
        }
      };
      this.setupHandlers();
      this.setupUI();
      $.ajaxSetup({
        xhrFields: {
          withCredentials: true
        }
      });
      this.authenticate($.noop);
      _ref = this.builders;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        builder = _ref[_i];
        builder.setBackend(this);
      }
    }

    SquadBuilderBackend.prototype.save = function(serialized, id, name, faction, additional_data, cb) {
      var post_args, post_url,
        _this = this;
      if (id == null) id = null;
      if (additional_data == null) additional_data = {};
      post_args = {
        name: $.trim(name),
        faction: $.trim(faction),
        additional_data: additional_data
      };
      if (id != null) {
        post_url = "" + this.server + "/" + id;
      } else {
        post_url = "" + this.server + "/new";
        post_args['_method'] = 'put';
      }
      return $.post(post_args, function(data, textStatus, jqXHR) {
        return cb({
          id: data.id,
          success: data.success,
          error: data.error
        });
      });
    };

    SquadBuilderBackend.prototype["delete"] = function(id, cb) {
      var post_args,
        _this = this;
      post_args = {
        '_method': 'delete'
      };
      return $.post("" + this.server + "/" + id, post_args, function(data, textStatus, jqXHR) {
        return cb({
          success: data.success,
          error: data.error
        });
      });
    };

    SquadBuilderBackend.prototype.list = function(builder, all) {
      var list_ul, loading_pane, url,
        _this = this;
      if (all == null) all = false;
      if (all) {
        this.squad_list_modal.find('.modal-header h3').text("Everyone's " + builder.faction + " Squads");
      } else {
        this.squad_list_modal.find('.modal-header h3').text("My " + builder.faction + " Squads");
      }
      list_ul = $(this.squad_list_modal.find('ul.squad-list'));
      list_ul.text('');
      list_ul.hide();
      loading_pane = $(this.squad_list_modal.find('p.squad-list-loading'));
      loading_pane.show();
      this.squad_list_modal.modal('show');
      url = all ? "" + this.server + "/all" : "" + this.server + "/squads/list";
      return $.get(url, function(data, textStatus, jqXHR) {
        var li, squad, _i, _len, _ref;
        _ref = data[builder.faction];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          squad = _ref[_i];
          li = $(document.createElement('LI'));
          li.data('squad_id', squad.id);
          li.data('builder', builder);
          li.data('serialized', squad.serialized);
          list_ul.append(li);
          li.append($.trim("<h4>" + squad.name + "</h4>\n<span>Points: <strong>" + squad.additional_data.points + "</strong></span>\n<button class=\"btn load-squad\">Load</button>"));
          li.find('button.load-squad').click(function(e) {
            var button;
            e.preventDefault();
            button = $(e.target);
            li = button.closest('li');
            li.data('builder').loadFromSerialized(li.data('serialized'));
            return _this.squad_list_modal.modal('hide');
          });
        }
        loading_pane.fadeOut('fast');
        return list_ul.fadeIn('fast');
      });
    };

    SquadBuilderBackend.prototype.authenticate = function(cb) {
      var data, old_auth_state, ___iced_passed_deferral, __iced_deferrals, __iced_k,
        _this = this;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      if (cb == null) cb = $.noop;
      old_auth_state = this.authenticated;
      (function(__iced_k) {
        __iced_deferrals = new iced.Deferrals(__iced_k, {
          parent: ___iced_passed_deferral,
          funcname: "SquadBuilderBackend.authenticate"
        });
        $.get("" + _this.server + "/ping", __iced_deferrals.defer({
          assign_fn: (function() {
            return function() {
              return data = arguments[0];
            };
          })(),
          lineno: 114
        }));
        __iced_deferrals._fulfill();
      })(function() {
        if (typeof data !== "undefined" && data !== null ? data.success : void 0) {
          _this.authenticated = true;
          cb();
        } else {
          _this.authenticated = false;
        }
        if (old_auth_state !== _this.authenticated) {
          $(window).trigger('xwing-backend:authenticationChanged', _this.authenticated);
        }
        _this.oauth_window = null;
        return _this.authenticated;
      });
    };

    SquadBuilderBackend.prototype.login = function() {
      if (this.ui_ready) return this.login_modal.modal('show');
    };

    SquadBuilderBackend.prototype.logout = function(cb) {
      var _this = this;
      if (cb == null) cb = $.noop;
      return $.get("" + this.server + "/auth/logout", function(data, textStatus, jqXHR) {
        _this.authenticated = false;
        $(window).trigger('xwing-backend:authenticationChanged', _this.authenticated);
        return cb();
      });
    };

    SquadBuilderBackend.prototype.setupUI = function() {
      var oauth_explanation,
        _this = this;
      this.login_modal = $(document.createElement('DIV'));
      this.login_modal.addClass('modal hide fade hide-on-print');
      $(document.body).append(this.login_modal);
      this.login_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>Log in with OAuth</h3>\n</div>\n<div class=\"modal-body\">\n    <p>\n        Select one of the OAuth providers below to log in and start saving squads.\n        <a class=\"login-help\" href=\"#\">What's this?</a>\n    </p>\n    <div class=\"well well-small oauth-explanation\">\n        <p>\n            <a href=\"http://en.wikipedia.org/wiki/OAuth\" target=\"_blank\">OAuth</a> is an authorization system which lets you prove your identity at a web site without having to create a new account.  Instead, you tell some provider with whom you already have an account (e.g. Google or Facebook) to prove to this web site that you say who you are.  That way, the next time you visit, this site remembers that you're that user from Google.\n        </p>\n        <p>\n            The best part about this is that you don't have to come up with a new username and password to remember.  And don't worry, I'm not collecting any data from the providers about you.  I've tried to set the scope of data to be as small as possible, but some places send a bunch of data at minimum.  I throw it away.  All I look at is a unique identifier (usually some giant number).\n        </p>\n        <p>\n            For more information, check out this <a href=\"http://hueniverse.com/oauth/guide/intro/\" target=\"_blank\">introduction to OAuth</a>.\n        </p>\n        <button class=\"btn\">Got it!</button>\n    </div>\n    <ul class=\"login-providers inline\"></ul>\n    <p>\n        This will open a new window to let you authenticate with the chosen provider.  You may have to allow pop ups for this site.  (Sorry.)\n    </p>\n    <p class=\"login-in-progress\">\n        <em>OAuth login is in progress.  Please finish authorization at the specified provider using the window that was just created.</em>\n    </p>\n</div>\n<div class=\"modal-footer\">\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      oauth_explanation = $(this.login_modal.find('.oauth-explanation'));
      oauth_explanation.hide();
      this.login_modal.find('.login-in-progress').hide();
      this.login_modal.find('a.login-help').click(function(e) {
        e.preventDefault();
        if (!oauth_explanation.is(':visible')) {
          return oauth_explanation.slideDown('fast');
        }
      });
      oauth_explanation.find('button').click(function(e) {
        e.preventDefault();
        return oauth_explanation.slideUp('fast');
      });
      $.get("" + this.server + "/methods", function(data, textStatus, jqXHR) {
        var a, li, method, methods_ul, _i, _len, _ref;
        methods_ul = $(_this.login_modal.find('ul.login-providers'));
        _ref = data.methods;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          method = _ref[_i];
          a = $(document.createElement('A'));
          a.addClass('btn btn-inverse');
          a.data('url', "" + _this.server + "/auth/" + method);
          a.append("<i class=\"" + _this.method_metadata[method].icon + "\"></i>&nbsp;" + _this.method_metadata[method].text);
          a.click(function(e) {
            e.preventDefault();
            methods_ul.slideUp('fast');
            _this.login_modal.find('.login-in-progress').slideDown('fast');
            return _this.oauth_window = window.open($(e.target).data('url'), "xwing_login");
          });
          li = $(document.createElement('LI'));
          li.append(a);
          methods_ul.append(li);
        }
        return _this.ui_ready = true;
      });
      this.squad_list_modal = $(document.createElement('DIV'));
      this.squad_list_modal.addClass('modal hide fade hide-on-print');
      $(document.body).append(this.squad_list_modal);
      this.squad_list_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3></h3>\n</div>\n<div class=\"modal-body\">\n    <ul class=\"squad-list\"></ul>\n    <p class=\"pagination-centered squad-list-loading\">\n        <i class=\"icon-spinner icon-spin icon-3x\"></i>\n        <br />\n        Fetching squads...\n    </p>\n</div>\n<div class=\"modal-footer\">\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      return this.squad_list_modal.find('ul.squad-list').hide();
    };

    SquadBuilderBackend.prototype.setupHandlers = function() {
      var _this = this;
      return $(window).on('message', function(e) {
        var ev, _ref, _ref1;
        ev = e.originalEvent;
        if (ev.origin === _this.server) {
          switch ((_ref = ev.data) != null ? _ref.command : void 0) {
            case 'auth_successful':
              _this.authenticate($.noop);
              _this.login_modal.modal('hide');
              _this.login_modal.find('.login-in-progress').hide();
              _this.login_modal.find('ul.login-providers').show();
              return ev.source.close();
            default:
              return console.log("Unexpected command " + ((_ref1 = ev.data) != null ? _ref1.command : void 0));
          }
        } else {
          console.log("Message received from unapproved origin " + ev.origin);
          return window.last_ev = e;
        }
      });
    };

    return SquadBuilderBackend;

  })();

}).call(this);
