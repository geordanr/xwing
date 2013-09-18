/*
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
*/


(function() {
  var exportObj,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };



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
                login_logout_button: '#login-logout'
                auth_status: '#auth-status'
    */

    function SquadBuilderBackend(args) {
      this.nameCheck = __bind(this.nameCheck, this);
      this.maybeAuthenticationChanged = __bind(this.maybeAuthenticationChanged, this);
      var builder, _i, _len, _ref,
        _this = this;
      $.ajaxSetup({
        dataType: "json",
        xhrFields: {
          withCredentials: true
        }
      });
      this.server = args.server;
      this.builders = args.builders;
      this.login_logout_button = $(args.login_logout_button);
      this.auth_status = $(args.auth_status);
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
        },
        twitter: {
          icon: 'icon-twitter-sign',
          text: 'Twitter'
        }
      };
      this.setupHandlers();
      this.setupUI();
      this.authenticate(function() {
        _this.auth_status.hide();
        return _this.login_logout_button.removeClass('hidden');
      });
      _ref = this.builders;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        builder = _ref[_i];
        builder.setBackend(this);
      }
      this.updateAuthenticationVisibility();
    }

    SquadBuilderBackend.prototype.updateAuthenticationVisibility = function() {
      if (this.authenticated) {
        $('.show-authenticated').show();
        return $('.hide-authenticated').hide();
      } else {
        $('.show-authenticated').hide();
        return $('.hide-authenticated').show();
      }
    };

    SquadBuilderBackend.prototype.save = function(serialized, id, name, faction, additional_data, cb) {
      var post_args, post_url,
        _this = this;
      if (id == null) {
        id = null;
      }
      if (additional_data == null) {
        additional_data = {};
      }
      if (serialized === "") {
        return cb({
          id: null,
          success: false,
          error: "You cannot save an empty squad"
        });
      } else if ($.trim(name) === "") {
        return cb({
          id: null,
          success: false,
          error: "Squad name cannot be empty"
        });
      } else if ((faction == null) || faction === "") {
        throw "Faction unspecified to save()";
      } else {
        post_args = {
          name: $.trim(name),
          faction: $.trim(faction),
          serialized: serialized,
          additional_data: additional_data
        };
        if (id != null) {
          post_url = "" + this.server + "/squads/" + id;
        } else {
          post_url = "" + this.server + "/squads/new";
          post_args['_method'] = 'put';
        }
        return $.post(post_url, post_args, function(data, textStatus, jqXHR) {
          return cb({
            id: data.id,
            success: data.success,
            error: data.error
          });
        });
      }
    };

    SquadBuilderBackend.prototype["delete"] = function(id, cb) {
      var post_args,
        _this = this;
      post_args = {
        '_method': 'delete'
      };
      return $.post("" + this.server + "/squads/" + id, post_args, function(data, textStatus, jqXHR) {
        return cb({
          success: data.success,
          error: data.error
        });
      });
    };

    SquadBuilderBackend.prototype.list = function(builder, all) {
      var list_ul, loading_pane, url,
        _this = this;
      if (all == null) {
        all = false;
      }
      if (all) {
        this.squad_list_modal.find('.modal-header h3').text("Everyone's " + builder.faction + " Squads");
      } else {
        this.squad_list_modal.find('.modal-header h3').text("Your " + builder.faction + " Squads");
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
        if (data[builder.faction].length === 0) {
          list_ul.append($.trim("<li>You have no squads saved.  Go save one!</li>"));
        } else {
          _ref = data[builder.faction];
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            squad = _ref[_i];
            li = $(document.createElement('LI'));
            li.data('squad', squad);
            li.data('builder', builder);
            list_ul.append(li);
            li.append($.trim("<div class=\"row-fluid\">\n    <div class=\"span9\">\n        <h4>" + squad.name + "</h4>\n    </div>\n    <div class=\"span3\">\n        <h5>" + squad.additional_data.points + " Points</h5>\n    </div>\n</div>\n<div class=\"row-fluid\">\n    <div class=\"span10\">\n        " + squad.additional_data.description + "\n    </div>\n    <div class=\"span2\">\n        <button class=\"btn load-squad\">Load</button>\n    </div>\n</div>"));
            li.find('button.load-squad').click(function(e) {
              var button;
              e.preventDefault();
              button = $(e.target);
              li = button.closest('li');
              builder = li.data('builder');
              _this.squad_list_modal.modal('hide');
              if (builder.current_squad.dirty) {
                return _this.warnUnsaved(builder, function() {
                  return builder.container.trigger('xwing-backend:squadLoadRequested', li.data('squad'));
                });
              } else {
                return builder.container.trigger('xwing-backend:squadLoadRequested', li.data('squad'));
              }
            });
          }
        }
        loading_pane.fadeOut('fast');
        return list_ul.fadeIn('fast');
      });
    };

    SquadBuilderBackend.prototype.authenticate = function(cb) {
      var old_auth_state,
        _this = this;
      if (cb == null) {
        cb = $.noop;
      }
      $(this.auth_status.find('.payload')).text('Checking auth status...');
      this.auth_status.show();
      old_auth_state = this.authenticated;
      return $.ajax({
        url: "" + this.server + "/ping",
        success: function(data) {
          if (data != null ? data.success : void 0) {
            _this.authenticated = true;
          } else {
            _this.authenticated = false;
          }
          return _this.maybeAuthenticationChanged(old_auth_state, cb);
        },
        error: function(jqXHR, textStatus, errorThrown) {
          _this.authenticated = false;
          return _this.maybeAuthenticationChanged(old_auth_state, cb);
        }
      });
    };

    SquadBuilderBackend.prototype.maybeAuthenticationChanged = function(old_auth_state, cb) {
      if (old_auth_state !== this.authenticated) {
        $(window).trigger('xwing-backend:authenticationChanged', this.authenticated);
      }
      this.oauth_window = null;
      this.auth_status.hide();
      cb(this.authenticated);
      return this.authenticated;
    };

    SquadBuilderBackend.prototype.login = function() {
      if (this.ui_ready) {
        return this.login_modal.modal('show');
      }
    };

    SquadBuilderBackend.prototype.logout = function(cb) {
      var _this = this;
      if (cb == null) {
        cb = $.noop;
      }
      $(this.auth_status.find('.payload')).text('Logging out...');
      this.auth_status.show();
      return $.get("" + this.server + "/auth/logout", function(data, textStatus, jqXHR) {
        _this.authenticated = false;
        $(window).trigger('xwing-backend:authenticationChanged', _this.authenticated);
        _this.auth_status.hide();
        return cb();
      });
    };

    SquadBuilderBackend.prototype.showSaveAsModal = function(builder) {
      this.save_as_modal.data('builder', builder);
      this.save_as_input.val(builder.current_squad.name);
      this.save_as_save_button.addClass('disabled');
      this.nameCheck();
      return this.save_as_modal.modal('show');
    };

    SquadBuilderBackend.prototype.showDeleteModal = function(builder) {
      this.delete_modal.data('builder', builder);
      this.delete_name_container.text(builder.current_squad.name);
      return this.delete_modal.modal('show');
    };

    SquadBuilderBackend.prototype.nameCheck = function() {
      var name,
        _this = this;
      window.clearInterval(this.save_as_modal.data('timer'));
      name = $.trim(this.save_as_input.val());
      if (name.length === 0) {
        this.name_availability_container.text('');
        return this.name_availability_container.append($.trim("<i class=\"icon-thumbs-down\"> A name is required"));
      } else {
        return $.post("" + this.server + "/squads/namecheck", {
          name: name
        }, function(data) {
          _this.name_availability_container.text('');
          if (data.available) {
            _this.name_availability_container.append($.trim("<i class=\"icon-thumbs-up\"> Name is available"));
            return _this.save_as_save_button.removeClass('disabled');
          } else {
            _this.name_availability_container.append($.trim("<i class=\"icon-thumbs-down\"> You already have a squad with that name"));
            return _this.save_as_save_button.addClass('disabled');
          }
        });
      }
    };

    SquadBuilderBackend.prototype.warnUnsaved = function(builder, action) {
      this.unsaved_modal.data('builder', builder);
      this.unsaved_modal.data('callback', action);
      return this.unsaved_modal.modal('show');
    };

    SquadBuilderBackend.prototype.setupUI = function() {
      var oauth_explanation,
        _this = this;
      this.auth_status.addClass('disabled');
      this.auth_status.click(function(e) {
        return false;
      });
      this.login_modal = $(document.createElement('DIV'));
      this.login_modal.addClass('modal hide fade hidden-print');
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
      this.squad_list_modal.addClass('modal hide fade hidden-print squad-list');
      $(document.body).append(this.squad_list_modal);
      this.squad_list_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3></h3>\n</div>\n<div class=\"modal-body\">\n    <ul class=\"squad-list\"></ul>\n    <p class=\"pagination-centered squad-list-loading\">\n        <i class=\"icon-spinner icon-spin icon-3x\"></i>\n        <br />\n        Fetching squads...\n    </p>\n</div>\n<div class=\"modal-footer\">\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      this.squad_list_modal.find('ul.squad-list').hide();
      this.save_as_modal = $(document.createElement('DIV'));
      this.save_as_modal.addClass('modal hide fade hidden-print');
      $(document.body).append(this.save_as_modal);
      this.save_as_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>Save Squad As...</h3>\n</div>\n<div class=\"modal-body\">\n    <label for=\"xw-be-squad-save-as\">\n        New Squad Name\n        <input id=\"xw-be-squad-save-as\"></input>\n    </label>\n    <span class=\"name-availability\"></span>\n</div>\n<div class=\"modal-footer\">\n    <button class=\"btn btn-primary save\" aria-hidden=\"true\">Save</button>\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      this.save_as_modal.on('shown', function() {
        return window.setTimeout(function() {
          _this.save_as_input.focus();
          return _this.save_as_input.select();
        }, 100);
      });
      this.save_as_save_button = this.save_as_modal.find('button.save');
      this.save_as_save_button.click(function(e) {
        var additional_data, builder, new_name, timer;
        e.preventDefault();
        if (!_this.save_as_save_button.hasClass('disabled')) {
          timer = _this.save_as_modal.data('timer');
          if (timer != null) {
            window.clearInterval(timer);
          }
          _this.save_as_modal.modal('hide');
          builder = _this.save_as_modal.data('builder');
          additional_data = {
            points: builder.total_points,
            description: builder.describeSquad(),
            cards: builder.listCards()
          };
          builder.backend_save_list_as_button.addClass('disabled');
          builder.backend_status.html($.trim("<i class=\"icon-refresh icon-spin\"></i>&nbsp;Saving squad..."));
          builder.backend_status.show();
          new_name = $.trim(_this.save_as_input.val());
          return _this.save(builder.serialize(), null, new_name, builder.faction, additional_data, function(results) {
            if (results.success) {
              builder.current_squad.id = results.id;
              builder.current_squad.name = new_name;
              builder.current_squad.dirty = false;
              builder.container.trigger('xwing-backend:squadDirtinessChanged');
              builder.container.trigger('xwing-backend:squadNameChanged');
              builder.backend_status.html($.trim("<i class=\"icon-ok\"></i>&nbsp;New squad saved successfully."));
            } else {
              builder.backend_status.html($.trim("<i class=\"icon-exclamation-sign\"></i>&nbsp;" + results.error));
            }
            return builder.backend_save_list_as_button.removeClass('disabled');
          });
        }
      });
      this.save_as_input = $(this.save_as_modal.find('input'));
      this.save_as_input.keypress(function(e) {
        var timer;
        if (e.which === 13) {
          _this.save_as_save_button.click();
          return false;
        } else {
          _this.name_availability_container.text('');
          _this.name_availability_container.append($.trim("<i class=\"icon-spin icon-spinner\"></i> Checking name availability..."));
          timer = _this.save_as_modal.data('timer');
          if (timer != null) {
            window.clearInterval(timer);
          }
          return _this.save_as_modal.data('timer', window.setInterval(_this.nameCheck, 500));
        }
      });
      this.name_availability_container = $(this.save_as_modal.find('.name-availability'));
      this.delete_modal = $(document.createElement('DIV'));
      this.delete_modal.addClass('modal hide fade hidden-print');
      $(document.body).append(this.delete_modal);
      this.delete_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>Really Delete <span class=\"squad-name-placeholder\"></span>?</h3>\n</div>\n<div class=\"modal-body\">\n    <p>Are you sure you want to delete this squad?</p>\n</div>\n<div class=\"modal-footer\">\n    <button class=\"btn btn-danger delete\" aria-hidden=\"true\">Yes, Delete <i class=\"squad-name-placeholder\"></i></button>\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Never Mind</button>\n</div>"));
      this.delete_name_container = $(this.delete_modal.find('.squad-name-placeholder'));
      this.delete_button = $(this.delete_modal.find('button.delete'));
      this.delete_button.click(function(e) {
        var builder;
        e.preventDefault();
        builder = _this.delete_modal.data('builder');
        builder.backend_status.html($.trim("<i class=\"icon-refresh icon-spin\"></i>&nbsp;Deleting squad..."));
        builder.backend_status.show();
        builder.backend_delete_list_button.addClass('disabled');
        _this.delete_modal.modal('hide');
        return _this["delete"](builder.current_squad.id, function(results) {
          if (results.success) {
            builder.resetCurrentSquad();
            builder.current_squad.dirty = true;
            builder.container.trigger('xwing-backend:squadDirtinessChanged');
            return builder.backend_status.html($.trim("<i class=\"icon-ok\"></i>&nbsp;Squad deleted."));
          } else {
            builder.backend_status.html($.trim("<i class=\"icon-exclamation-sign\"></i>&nbsp;" + results.error));
            return builder.backend_delete_list_button.removeClass('disabled');
          }
        });
      });
      this.unsaved_modal = $(document.createElement('DIV'));
      this.unsaved_modal.addClass('modal hide fade hidden-print');
      $(document.body).append(this.unsaved_modal);
      this.unsaved_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>Unsaved Changes</h3>\n</div>\n<div class=\"modal-body\">\n    <p>You have not saved changes to this squad.  Do you want to go back and save?</p>\n</div>\n<div class=\"modal-footer\">\n    <button class=\"btn btn-primary\" aria-hidden=\"true\" data-dismiss=\"modal\">Go Back</button>\n    <button class=\"btn btn-danger discard\" aria-hidden=\"true\">Discard Changes</button>\n</div>"));
      this.unsaved_discard_button = $(this.unsaved_modal.find('button.discard'));
      return this.unsaved_discard_button.click(function(e) {
        e.preventDefault();
        _this.unsaved_modal.data('builder').current_squad.dirty = false;
        _this.unsaved_modal.data('callback')();
        return _this.unsaved_modal.modal('hide');
      });
    };

    SquadBuilderBackend.prototype.setupHandlers = function() {
      var _this = this;
      $(window).on('xwing-backend:authenticationChanged', function() {
        return _this.updateAuthenticationVisibility();
      });
      this.login_logout_button.click(function(e) {
        e.preventDefault();
        if (_this.authenticated) {
          return _this.logout();
        } else {
          return _this.login();
        }
      });
      return $(window).on('message', function(e) {
        var ev, _ref, _ref1;
        ev = e.originalEvent;
        if (ev.origin === _this.server) {
          switch ((_ref = ev.data) != null ? _ref.command : void 0) {
            case 'auth_successful':
              _this.authenticate();
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

//@ sourceMappingURL=backend.map