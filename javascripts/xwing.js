
/*
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
 */

(function() {
  var GenericAddon, SERIALIZATION_CODE_TO_CLASS, SQUAD_DISPLAY_NAME_MAX_LENGTH, Ship, exportObj, statAndEffectiveStat,
    __slice = [].slice,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; },
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  window.iced = {
    Deferrals: (function() {
      function _Class(_arg) {
        this.continuation = _arg;
        this.count = 1;
        this.ret = null;
      }

      _Class.prototype._fulfill = function() {
        if (!--this.count) {
          return this.continuation(this.ret);
        }
      };

      _Class.prototype.defer = function(defer_params) {
        ++this.count;
        return (function(_this) {
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
        })(this);
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

  exportObj.sortHelper = function(a, b) {
    var a_name, b_name;
    if (a.points === b.points) {
      a_name = a.text.replace(/[^a-z0-9]/ig, '');
      b_name = b.text.replace(/[^a-z0-9]/ig, '');
      if (a_name === b_name) {
        return 0;
      } else {
        if (a_name > b_name) {
          return 1;
        } else {
          return -1;
        }
      }
    } else {
      if (a.points > b.points) {
        return 1;
      } else {
        return -1;
      }
    }
  };

  $.isMobile = function() {
    return navigator.userAgent.match(/(iPhone|iPod|iPad|Android)/i);
  };

  $.randomInt = function(n) {
    return Math.floor(Math.random() * n);
  };

  $.getParameterByName = function(name) {
    var regex, regexS, results;
    name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
    regexS = "[\\?&]" + name + "=([^&#]*)";
    regex = new RegExp(regexS);
    results = regex.exec(window.location.search);
    if (results === null) {
      return "";
    } else {
      return decodeURIComponent(results[1].replace(/\+/g, " "));
    }
  };

  Array.prototype.intersects = function(other) {
    var item, _i, _len;
    for (_i = 0, _len = this.length; _i < _len; _i++) {
      item = this[_i];
      if (__indexOf.call(other, item) >= 0) {
        return true;
      }
    }
    return false;
  };

  Array.prototype.removeItem = function(item) {
    var idx;
    idx = this.indexOf(item);
    if (idx !== -1) {
      this.splice(idx, 1);
    }
    return this;
  };

  SQUAD_DISPLAY_NAME_MAX_LENGTH = 24;

  statAndEffectiveStat = function(base_stat, effective_stats, key) {
    return "" + base_stat + (effective_stats[key] !== base_stat ? " (" + effective_stats[key] + ")" : "");
  };

  exportObj.SquadBuilder = (function() {
    function SquadBuilder(args) {
      this._makeRandomizerLoopFunc = __bind(this._makeRandomizerLoopFunc, this);
      this._randomizerLoopBody = __bind(this._randomizerLoopBody, this);
      this.releaseUnique = __bind(this.releaseUnique, this);
      this.claimUnique = __bind(this.claimUnique, this);
      this.onSquadNameChanged = __bind(this.onSquadNameChanged, this);
      this.onSquadDirtinessChanged = __bind(this.onSquadDirtinessChanged, this);
      this.onSquadLoadRequested = __bind(this.onSquadLoadRequested, this);
      this.onPointsUpdated = __bind(this.onPointsUpdated, this);
      this.onNotesUpdated = __bind(this.onNotesUpdated, this);
      this.container = $(args.container);
      this.faction = $.trim(args.faction);
      this.printable_container = $(args.printable_container);
      this.ships = [];
      this.uniques_in_use = {
        Pilot: [],
        Upgrade: [],
        Modification: [],
        Title: []
      };
      this.suppress_automatic_new_ship = false;
      this.tooltip_currently_displaying = null;
      this.randomizer_options = {
        sources: null,
        points: 100
      };
      this.total_points = 0;
      this.backend = null;
      this.current_squad = {};
      this.language = 'English';
      this.setupUI();
      this.setupEventHandlers();
      this.resetCurrentSquad();
      if ($.getParameterByName('f') === this.faction) {
        this.loadFromSerialized($.getParameterByName('d'));
      } else {
        this.addShip();
      }
    }

    SquadBuilder.prototype.resetCurrentSquad = function() {
      this.current_squad = {
        id: null,
        name: $.trim(this.squad_name_input.val()) || "Unnamed Squadron",
        dirty: false,
        additional_data: {
          points: this.total_points,
          description: '',
          cards: [],
          notes: ''
        },
        faction: this.faction
      };
      if (this.total_points > 0) {
        this.current_squad.name = 'Unsaved Squadron';
        this.current_squad.dirty = true;
      }
      this.container.trigger('xwing-backend:squadNameChanged');
      return this.container.trigger('xwing-backend:squadDirtinessChanged');
    };

    SquadBuilder.prototype.newSquadFromScratch = function() {
      this.squad_name_input.val('New Squadron');
      this.removeAllShips();
      this.addShip();
      this.resetCurrentSquad();
      return this.notes.val('');
    };

    SquadBuilder.prototype.setupUI = function() {
      var DEFAULT_RANDOMIZER_ITERATIONS, DEFAULT_RANDOMIZER_POINTS, DEFAULT_RANDOMIZER_TIMEOUT_SEC, content_container, expansion, opt, _i, _len, _ref;
      DEFAULT_RANDOMIZER_POINTS = 100;
      DEFAULT_RANDOMIZER_TIMEOUT_SEC = 2;
      DEFAULT_RANDOMIZER_ITERATIONS = 1000;
      this.status_container = $(document.createElement('DIV'));
      this.status_container.addClass('container-fluid');
      this.status_container.append($.trim('<div class="row-fluid">\n    <div class="span3 squad-name-container">\n        <div class="display-name">\n            <span class="squad-name"></span>\n            <i class="icon-pencil"></i>\n        </div>\n        <div class="input-append">\n            <input type="text" maxlength="64" placeholder="Name your squad..." />\n            <button class="btn save"><i class="icon-edit"></i></button>\n        </div>\n    </div>\n    <div class="span3 points-display-container">\n        Points: <span class="total-points">0</span> / <input type="number" class="desired-points" value="100"> <span class="points-remaining-container">(<span class="points-remaining"></span> left)</span>\n    </div>\n    <div class="span6 pull-right button-container">\n        <div class="btn-group pull-right">\n\n            <button class="btn btn-primary view-as-text"><span class="hidden-phone"><i class="icon-print"></i>&nbsp;Print/View as </span>Text</button>\n            <!-- <button class="btn btn-primary print-list hidden-phone hidden-tablet"><i class="icon-print"></i>&nbsp;Print</button> -->\n            <a class="btn btn-primary permalink"><i class="icon-link hidden-phone hidden-tablet"></i>&nbsp;Permalink</a>\n\n            <button class="btn btn-primary randomize" ><i class="icon-random hidden-phone hidden-tablet"></i>&nbsp;Random<span class="hidden-phone"> Squad!</span></button>\n            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">\n                <span class="caret"></span>\n            </button>\n            <ul class="dropdown-menu">\n                <li><a class="randomize-options">Randomizer Options...</a></li>\n            </ul>\n        </div>\n    </div>\n</div>\n\n<div class="row-fluid style="display: none;">\n    <div class="span12">\n        <button class="show-authenticated btn btn-primary save-list"><i class="icon-save"></i>&nbsp;Save</button>\n        <button class="show-authenticated btn btn-primary save-list-as"><i class="icon-copy"></i>&nbsp;Save As...</button>\n        <button class="show-authenticated btn btn-primary delete-list disabled"><i class="icon-trash"></i>&nbsp;Delete</button>\n        <button class="show-authenticated btn btn-primary backend-list-my-squads show-authenticated">Load Squad</button>\n        <button class="btn btn-danger clear-squad">New Squad</button>\n        <span class="show-authenticated backend-status"></span>\n    </div>\n</div>'));
      this.container.append(this.status_container);
      this.list_modal = $(document.createElement('DIV'));
      this.list_modal.addClass('modal hide fade text-list-modal');
      this.container.append(this.list_modal);
      this.list_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close hidden-print\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n\n    <div class=\"hidden-phone hidden-print\">\n        <div class=\"fancy-header\">\n            <div class=\"squad-name\"></div>\n            <div class=\"mask\">\n                <div class=\"outer-circle\">\n                    <div class=\"inner-circle\">\n                        <span class=\"total-points\"></span>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"fancy-under-header\"></div>\n    </div>\n\n    <div class=\"visible-print\">\n        <div class=\"fancy-header\">\n            <div class=\"squad-name\"></div>\n            <div class=\"mask\">\n                <div class=\"outer-circle\">\n                    <div class=\"inner-circle\">\n                        <span class=\"total-points\"></span>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"fancy-under-header\"></div>\n    </div>\n\n    <div class=\"visible-phone hidden-print\">\n        <h4><span class=\"squad-name\"></span> (<span class=\"total-points\"></span>)<h4>\n    </div>\n\n</div>\n<div class=\"modal-body\">\n    <div class=\"fancy-list hidden-phone\"></div>\n    <div class=\"simple-list\"></div>\n    <div class=\"bbcode-list\">\n        Copy the BBCode below and paste it into your forum post.\n        <textarea></textarea>\n    </div>\n</div>\n<div class=\"modal-footer hidden-print\">\n    <label class=\"vertical-space-checkbox\"><input type=\"checkbox\" class=\"toggle-vertical-space\" /> Add space for damage/upgrade cards when printing</label>\n    <div class=\"btn-group list-display-mode\">\n        <button class=\"btn select-simple-view\">Simple</button>\n        <button class=\"btn select-fancy-view hidden-phone\">Fancy</button>\n        <button class=\"btn select-bbcode-view\">BBCode</button>\n    </div>\n    <button class=\"btn print-list hidden-phone\"><i class=\"icon-print\"></i>&nbsp;Print</button>\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      this.fancy_container = $(this.list_modal.find('div.modal-body .fancy-list'));
      this.fancy_total_points_container = $(this.list_modal.find('div.modal-header .total-points'));
      this.simple_container = $(this.list_modal.find('div.modal-body .simple-list'));
      this.bbcode_container = $(this.list_modal.find('div.modal-body .bbcode-list'));
      this.bbcode_textarea = $(this.bbcode_container.find('textarea'));
      this.bbcode_textarea.attr('readonly', 'readonly');
      this.toggle_vertical_space_container = $(this.list_modal.find('.vertical-space-checkbox'));
      this.toggle_vertical_space_checkbox = $(this.list_modal.find('.toggle-vertical-space'));
      this.select_simple_view_button = $(this.list_modal.find('.select-simple-view'));
      this.select_simple_view_button.click((function(_this) {
        return function(e) {
          _this.select_simple_view_button.blur();
          if (_this.list_display_mode !== 'simple') {
            _this.list_modal.find('.list-display-mode .btn').removeClass('btn-inverse');
            _this.select_simple_view_button.addClass('btn-inverse');
            _this.list_display_mode = 'simple';
            _this.simple_container.show();
            _this.fancy_container.hide();
            _this.bbcode_container.hide();
            return _this.toggle_vertical_space_container.hide();
          }
        };
      })(this));
      this.select_fancy_view_button = $(this.list_modal.find('.select-fancy-view'));
      this.select_fancy_view_button.click((function(_this) {
        return function(e) {
          _this.select_fancy_view_button.blur();
          if (_this.list_display_mode !== 'fancy') {
            _this.list_modal.find('.list-display-mode .btn').removeClass('btn-inverse');
            _this.select_fancy_view_button.addClass('btn-inverse');
            _this.list_display_mode = 'fancy';
            _this.fancy_container.show();
            _this.simple_container.hide();
            _this.bbcode_container.hide();
            return _this.toggle_vertical_space_container.show();
          }
        };
      })(this));
      this.select_bbcode_view_button = $(this.list_modal.find('.select-bbcode-view'));
      this.select_bbcode_view_button.click((function(_this) {
        return function(e) {
          _this.select_bbcode_view_button.blur();
          if (_this.list_display_mode !== 'bbcode') {
            _this.list_modal.find('.list-display-mode .btn').removeClass('btn-inverse');
            _this.select_bbcode_view_button.addClass('btn-inverse');
            _this.list_display_mode = 'bbcode';
            _this.bbcode_container.show();
            _this.simple_container.hide();
            _this.fancy_container.hide();
            _this.bbcode_textarea.select();
            _this.bbcode_textarea.focus();
            return _this.toggle_vertical_space_container.show();
          }
        };
      })(this));
      if ($(window).width() >= 768) {
        this.simple_container.hide();
        this.select_fancy_view_button.click();
      } else {
        this.select_simple_view_button.click();
      }
      this.clear_squad_button = $(this.status_container.find('.clear-squad'));
      this.clear_squad_button.click((function(_this) {
        return function(e) {
          if (_this.current_squad.dirty && (_this.backend != null)) {
            return _this.backend.warnUnsaved(_this, function() {
              return _this.newSquadFromScratch();
            });
          } else {
            return _this.newSquadFromScratch();
          }
        };
      })(this));
      this.squad_name_container = $(this.status_container.find('div.squad-name-container'));
      this.squad_name_display = $(this.container.find('.display-name'));
      this.squad_name_placeholder = $(this.container.find('.squad-name'));
      this.squad_name_input = $(this.squad_name_container.find('input'));
      this.squad_name_save_button = $(this.squad_name_container.find('button.save'));
      this.squad_name_input.closest('div').hide();
      this.points_container = $(this.status_container.find('div.points-display-container'));
      this.total_points_span = $(this.points_container.find('.total-points'));
      this.desired_points_input = $(this.points_container.find('.desired-points'));
      this.desired_points_input.change((function(_this) {
        return function(e) {
          return _this.onPointsUpdated($.noop);
        };
      })(this));
      this.points_remaining_span = $(this.points_container.find('.points-remaining'));
      this.points_remaining_container = $(this.points_container.find('.points-remaining-container'));
      this.permalink = $(this.status_container.find('div.button-container a.permalink'));
      this.view_list_button = $(this.status_container.find('div.button-container button.view-as-text'));
      this.randomize_button = $(this.status_container.find('div.button-container button.randomize'));
      this.customize_randomizer = $(this.status_container.find('div.button-container a.randomize-options'));
      this.backend_status = $(this.status_container.find('.backend-status'));
      this.backend_status.hide();
      this.squad_name_input.keypress((function(_this) {
        return function(e) {
          if (e.which === 13) {
            _this.squad_name_save_button.click();
            return false;
          }
        };
      })(this));
      this.squad_name_input.change((function(_this) {
        return function(e) {
          return _this.backend_status.fadeOut('slow');
        };
      })(this));
      this.squad_name_input.blur((function(_this) {
        return function(e) {
          _this.squad_name_input.change();
          return _this.squad_name_save_button.click();
        };
      })(this));
      this.squad_name_display.click((function(_this) {
        return function(e) {
          e.preventDefault();
          _this.squad_name_display.hide();
          _this.squad_name_input.val($.trim(_this.current_squad.name));
          window.setTimeout(function() {
            _this.squad_name_input.focus();
            return _this.squad_name_input.select();
          }, 100);
          return _this.squad_name_input.closest('div').show();
        };
      })(this));
      this.squad_name_save_button.click((function(_this) {
        return function(e) {
          var name;
          e.preventDefault();
          _this.current_squad.dirty = true;
          _this.container.trigger('xwing-backend:squadDirtinessChanged');
          name = _this.current_squad.name = $.trim(_this.squad_name_input.val());
          if (name.length > 0) {
            _this.squad_name_display.show();
            _this.container.trigger('xwing-backend:squadNameChanged');
            return _this.squad_name_input.closest('div').hide();
          }
        };
      })(this));
      this.randomizer_options_modal = $(document.createElement('DIV'));
      this.randomizer_options_modal.addClass('modal hide fade');
      $(document).append(this.randomizer_options_modal);
      this.randomizer_options_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>Random Squad Builder Options</h3>\n</div>\n<div class=\"modal-body\">\n    <form>\n        <label>\n            Desired Points\n            <input type=\"number\" class=\"randomizer-points\" value=\"" + DEFAULT_RANDOMIZER_POINTS + "\" placeholder=\"" + DEFAULT_RANDOMIZER_POINTS + "\" />\n        </label>\n        <label>\n            Sets and Expansions (default all)\n            <select class=\"randomizer-sources\" multiple=\"1\" data-placeholder=\"Use all sets and expansions\">\n            </select>\n        </label>\n        <label>\n            Maximum Seconds to Spend Randomizing\n            <input type=\"number\" class=\"randomizer-timeout\" value=\"" + DEFAULT_RANDOMIZER_TIMEOUT_SEC + "\" placeholder=\"" + DEFAULT_RANDOMIZER_TIMEOUT_SEC + "\" />\n        </label>\n        <label>\n            Maximum Randomization Iterations\n            <input type=\"number\" class=\"randomizer-iterations\" value=\"" + DEFAULT_RANDOMIZER_ITERATIONS + "\" placeholder=\"" + DEFAULT_RANDOMIZER_ITERATIONS + "\" />\n        </label>\n    </form>\n</div>\n<div class=\"modal-footer\">\n    <button class=\"btn btn-primary do-randomize\" aria-hidden=\"true\">Randomize!</button>\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      this.randomizer_source_selector = $(this.randomizer_options_modal.find('select.randomizer-sources'));
      _ref = exportObj.expansions;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        expansion = _ref[_i];
        opt = $(document.createElement('OPTION'));
        opt.text(expansion);
        this.randomizer_source_selector.append(opt);
      }
      this.randomizer_source_selector.select2({
        width: "100%",
        minimumResultsForSearch: $.isMobile() ? -1 : 0
      });
      this.randomize_button.click((function(_this) {
        return function(e) {
          var iterations, points, timeout_sec;
          e.preventDefault();
          if (_this.current_squad.dirty && (_this.backend != null)) {
            return _this.backend.warnUnsaved(_this, function() {
              return _this.randomize_button.click();
            });
          } else {
            points = parseInt($(_this.randomizer_options_modal.find('.randomizer-points')).val());
            if (isNaN(points) || points <= 0) {
              points = DEFAULT_RANDOMIZER_POINTS;
            }
            timeout_sec = parseInt($(_this.randomizer_options_modal.find('.randomizer-timeout')).val());
            if (isNaN(timeout_sec) || timeout_sec <= 0) {
              timeout_sec = DEFAULT_RANDOMIZER_TIMEOUT_SEC;
            }
            iterations = parseInt($(_this.randomizer_options_modal.find('.randomizer-iterations')).val());
            if (isNaN(iterations) || iterations <= 0) {
              iterations = DEFAULT_RANDOMIZER_ITERATIONS;
            }
            return _this.randomSquad(points, _this.randomizer_source_selector.val(), DEFAULT_RANDOMIZER_TIMEOUT_SEC * 1000, iterations);
          }
        };
      })(this));
      this.randomizer_options_modal.find('button.do-randomize').click((function(_this) {
        return function(e) {
          e.preventDefault();
          _this.randomizer_options_modal.modal('hide');
          return _this.randomize_button.click();
        };
      })(this));
      this.customize_randomizer.click((function(_this) {
        return function(e) {
          e.preventDefault();
          return _this.randomizer_options_modal.modal();
        };
      })(this));
      this.backend_list_squads_button = $(this.container.find('button.backend-list-my-squads'));
      this.backend_list_squads_button.click((function(_this) {
        return function(e) {
          e.preventDefault();
          if (_this.backend != null) {
            return _this.backend.list(_this);
          }
        };
      })(this));
      this.backend_save_list_button = $(this.container.find('button.save-list'));
      this.backend_save_list_button.click((function(_this) {
        return function(e) {
          var additional_data, results, ___iced_passed_deferral, __iced_deferrals, __iced_k;
          __iced_k = __iced_k_noop;
          ___iced_passed_deferral = iced.findDeferral(arguments);
          e.preventDefault();
          if ((_this.backend != null) && !_this.backend_save_list_button.hasClass('disabled')) {
            additional_data = {
              points: _this.total_points,
              description: _this.describeSquad(),
              cards: _this.listCards(),
              notes: _this.notes.val().substr(0, 1024)
            };
            _this.backend_status.html($.trim("<i class=\"icon-refresh icon-spin\"></i>&nbsp;Saving squad..."));
            _this.backend_status.show();
            _this.backend_save_list_button.addClass('disabled');
            (function(__iced_k) {
              __iced_deferrals = new iced.Deferrals(__iced_k, {
                parent: ___iced_passed_deferral,
                filename: "coffeescripts/xwing.coffee"
              });
              _this.backend.save(_this.serialize(), _this.current_squad.id, _this.current_squad.name, _this.faction, additional_data, __iced_deferrals.defer({
                assign_fn: (function() {
                  return function() {
                    return results = arguments[0];
                  };
                })(),
                lineno: 434
              }));
              __iced_deferrals._fulfill();
            })(function() {
              return __iced_k(results.success ? (_this.current_squad.dirty = false, _this.current_squad.id != null ? _this.backend_status.html($.trim("<i class=\"icon-ok\"></i>&nbsp;Squad updated successfully.")) : (_this.backend_status.html($.trim("<i class=\"icon-ok\"></i>&nbsp;New squad saved successfully.")), _this.current_squad.id = results.id), _this.container.trigger('xwing-backend:squadDirtinessChanged')) : (_this.backend_status.html($.trim("<i class=\"icon-exclamation-sign\"></i>&nbsp;" + results.error)), _this.backend_save_list_button.removeClass('disabled')));
            });
          } else {
            return __iced_k();
          }
        };
      })(this));
      this.backend_save_list_as_button = $(this.container.find('button.save-list-as'));
      this.backend_save_list_as_button.addClass('disabled');
      this.backend_save_list_as_button.click((function(_this) {
        return function(e) {
          e.preventDefault();
          if ((_this.backend != null) && !_this.backend_save_list_as_button.hasClass('disabled')) {
            return _this.backend.showSaveAsModal(_this);
          }
        };
      })(this));
      this.backend_delete_list_button = $(this.container.find('button.delete-list'));
      this.backend_delete_list_button.click((function(_this) {
        return function(e) {
          e.preventDefault();
          if ((_this.backend != null) && !_this.backend_delete_list_button.hasClass('disabled')) {
            return _this.backend.showDeleteModal(_this);
          }
        };
      })(this));
      content_container = $(document.createElement('DIV'));
      content_container.addClass('container-fluid');
      this.container.append(content_container);
      content_container.append($.trim("<div class=\"row-fluid\">\n    <div class=\"span9 ship-container\">\n                <label class=\"notes-container show-authenticated\">\n                    Squad Notes:\n                    <br />\n                    <textarea class=\"squad-notes\"></textarea>\n                </label>\n    </div>\n    <div class=\"span3 hidden-phone info-container\" />\n</div>\n"));
      this.ship_container = $(content_container.find('div.ship-container'));
      this.info_container = $(content_container.find('div.info-container'));
      this.notes_container = $(content_container.find('.notes-container'));
      this.notes = $(this.notes_container.find('textarea.squad-notes'));
      this.info_container.append($.trim("<div class=\"well well-small info-well\">\n    <span class=\"info-name\"></span>\n    <br />\n    <span class=\"info-sources\"></span>\n    <table>\n        <tbody>\n            <tr class=\"info-ship\">\n                <td>Ship</td>\n                <td class=\"info-data\"></td>\n            </tr>\n            <tr class=\"info-skill\">\n                <td>Skill</td>\n                <td class=\"info-data info-skill\"></td>\n            </tr>\n            <tr class=\"info-energy\">\n                <td><img class=\"icon-energy\" src=\"images/transparent.png\" alt=\"Energy\" /></td>\n                <td class=\"info-data info-energy\"></td>\n            </tr>\n            <tr class=\"info-attack\">\n                <td><img class=\"icon-attack\" src=\"images/transparent.png\" alt=\"Attack\" /></td>\n                <td class=\"info-data info-attack\"></td>\n            </tr>\n            <tr class=\"info-range\">\n                <td>Range</td>\n                <td class=\"info-data info-range\"></td>\n            </tr>\n            <tr class=\"info-agility\">\n                <td><img class=\"icon-agility\" src=\"images/transparent.png\" alt=\"Agility\" /></td>\n                <td class=\"info-data info-agility\"></td>\n            </tr>\n            <tr class=\"info-hull\">\n                <td><img class=\"icon-hull\" src=\"images/transparent.png\" alt=\"Hull\" /></td>\n                <td class=\"info-data info-hull\"></td>\n            </tr>\n            <tr class=\"info-shields\">\n                <td><img class=\"icon-shields\" src=\"images/transparent.png\" alt=\"Shields\" /></td>\n                <td class=\"info-data info-shields\"></td>\n            </tr>\n            <tr class=\"info-actions\">\n                <td>Actions</td>\n                <td class=\"info-data\"></td>\n            </tr>\n            <tr class=\"info-upgrades\">\n                <td>Upgrades</td>\n                <td class=\"info-data\"></td>\n            </tr>\n        </tbody>\n    </table>\n    <p class=\"info-text\" />\n</div>"));
      this.info_container.hide();
      this.print_list_button = $(this.container.find('button.print-list'));
      return this.container.find('[rel=tooltip]').tooltip();
    };

    SquadBuilder.prototype.setupEventHandlers = function() {
      this.container.on('xwing:claimUnique', (function(_this) {
        return function(e, unique, type, cb) {
          return _this.claimUnique(unique, type, cb);
        };
      })(this)).on('xwing:releaseUnique', (function(_this) {
        return function(e, unique, type, cb) {
          return _this.releaseUnique(unique, type, cb);
        };
      })(this)).on('xwing:pointsUpdated', (function(_this) {
        return function(e, cb) {
          if (cb == null) {
            cb = $.noop;
          }
          return _this.onPointsUpdated(cb);
        };
      })(this)).on('xwing-backend:squadLoadRequested', (function(_this) {
        return function(e, squad) {
          return _this.onSquadLoadRequested(squad);
        };
      })(this)).on('xwing-backend:squadDirtinessChanged', (function(_this) {
        return function(e) {
          return _this.onSquadDirtinessChanged();
        };
      })(this)).on('xwing-backend:squadNameChanged', (function(_this) {
        return function(e) {
          return _this.onSquadNameChanged();
        };
      })(this));
      $(window).on('xwing-backend:authenticationChanged', (function(_this) {
        return function(e) {
          return _this.resetCurrentSquad();
        };
      })(this)).on('xwing:beforeLanguageLoad', (function(_this) {
        return function(e, cb) {
          if (cb == null) {
            cb = $.noop;
          }
          _this.pretranslation_serialized = _this.serialize();
          _this.removeAllShips();
          return cb();
        };
      })(this)).on('xwing:afterLanguageLoad', (function(_this) {
        return function(e, language, cb) {
          var ship, _i, _len, _ref;
          if (cb == null) {
            cb = $.noop;
          }
          _this.language = language;
          _this.loadFromSerialized(_this.pretranslation_serialized);
          _ref = _this.ships;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            ship = _ref[_i];
            ship.updateSelections();
          }
          _this.pretranslation_serialized = void 0;
          return cb();
        };
      })(this)).on('xwing:shipUpdated', (function(_this) {
        return function(e, cb) {
          var all_allocated, ship, _i, _len, _ref;
          if (cb == null) {
            cb = $.noop;
          }
          all_allocated = true;
          _ref = _this.ships;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            ship = _ref[_i];
            ship.updateSelections();
            if (ship.ship_selector.val() === '') {
              all_allocated = false;
            }
          }
          if (all_allocated && !_this.suppress_automatic_new_ship) {
            return _this.addShip();
          }
        };
      })(this));
      this.view_list_button.click((function(_this) {
        return function(e) {
          e.preventDefault();
          return _this.showTextListModal();
        };
      })(this));
      this.print_list_button.click((function(_this) {
        return function(e) {
          var ship, _i, _len, _ref;
          e.preventDefault();
          _this.printable_container.find('.printable-header').html(_this.list_modal.find('.modal-header').html());
          switch (_this.list_display_mode) {
            case 'simple':
              _this.printable_container.find('.printable-body').html(_this.simple_container.html());
              break;
            default:
              _this.printable_container.find('.printable-body').text('');
              _ref = _this.ships;
              for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                ship = _ref[_i];
                if (ship.pilot != null) {
                  _this.printable_container.find('.printable-body').append(ship.toHTML());
                }
              }
              _this.printable_container.find('.fancy-ship').toggleClass('tall', _this.toggle_vertical_space_checkbox.prop('checked'));
          }
          return window.print();
        };
      })(this));
      $(window).resize((function(_this) {
        return function() {
          if ($(window).width() < 768 && _this.list_display_mode !== 'simple') {
            return _this.select_simple_view_button.click();
          }
        };
      })(this));
      this.notes.change(this.onNotesUpdated);
      return this.notes.on('keyup', this.onNotesUpdated);
    };

    SquadBuilder.prototype.onNotesUpdated = function() {
      if (this.total_points > 0) {
        this.current_squad.dirty = true;
        return this.container.trigger('xwing-backend:squadDirtinessChanged');
      }
    };

    SquadBuilder.prototype.onPointsUpdated = function(cb) {
      var bbcode_ships, i, points_left, ship, _i, _j, _len, _len1, _ref, _ref1;
      this.total_points = 0;
      _ref = this.ships;
      for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
        ship = _ref[i];
        ship.validate();
        this.total_points += ship.getPoints();
      }
      this.total_points_span.text(this.total_points);
      points_left = parseInt(this.desired_points_input.val()) - this.total_points;
      this.points_remaining_span.text(points_left);
      this.points_remaining_container.toggleClass('red', points_left < 0);
      this.fancy_total_points_container.text(this.total_points);
      this.permalink.attr('href', "" + (window.location.href.split('?')[0]) + "?f=" + (encodeURI(this.faction)) + "&d=" + (encodeURI(this.serialize())));
      this.fancy_container.text('');
      this.simple_container.html('<table class="simple-table"></table>');
      bbcode_ships = [];
      _ref1 = this.ships;
      for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
        ship = _ref1[_j];
        if (ship.pilot != null) {
          this.fancy_container.append(ship.toHTML());
          this.simple_container.find('table').append(ship.toTableRow());
          bbcode_ships.push(ship.toBBCode());
        }
      }
      this.bbcode_container.find('textarea').val($.trim("" + (bbcode_ships.join("\n\n")) + "\n\n[b][i]Total: " + this.total_points + "[/i][/b]\n\n[url=" + (this.permalink.attr('href')) + "]View in Yet Another Squad Builder[/url]"));
      return cb(this.total_points);
    };

    SquadBuilder.prototype.onSquadLoadRequested = function(squad) {
      var _ref;
      this.current_squad = squad;
      this.backend_delete_list_button.removeClass('disabled');
      this.squad_name_input.val(this.current_squad.name);
      this.squad_name_placeholder.text(this.current_squad.name);
      this.loadFromSerialized(squad.serialized);
      this.notes.val((_ref = squad.additional_data.notes) != null ? _ref : '');
      this.backend_status.fadeOut('slow');
      this.current_squad.dirty = false;
      return this.container.trigger('xwing-backend:squadDirtinessChanged');
    };

    SquadBuilder.prototype.onSquadDirtinessChanged = function() {
      this.backend_save_list_button.toggleClass('disabled', !(this.current_squad.dirty && this.total_points > 0));
      this.backend_save_list_as_button.toggleClass('disabled', this.total_points === 0);
      return this.backend_delete_list_button.toggleClass('disabled', this.current_squad.id == null);
    };

    SquadBuilder.prototype.onSquadNameChanged = function() {
      var short_name;
      if (this.current_squad.name.length > SQUAD_DISPLAY_NAME_MAX_LENGTH) {
        short_name = "" + (this.current_squad.name.substr(0, SQUAD_DISPLAY_NAME_MAX_LENGTH)) + "&hellip;";
      } else {
        short_name = this.current_squad.name;
      }
      this.squad_name_placeholder.text('');
      this.squad_name_placeholder.append(short_name);
      return this.squad_name_input.val(this.current_squad.name);
    };

    SquadBuilder.prototype.removeAllShips = function() {
      while (this.ships.length > 0) {
        this.removeShip(this.ships[0]);
      }
      if (this.ships.length > 0) {
        throw "Ships not emptied";
      }
    };

    SquadBuilder.prototype.showTextListModal = function() {
      return this.list_modal.modal('show');
    };

    SquadBuilder.prototype.serialize = function() {
      var serialization_version, ship;
      serialization_version = 2;
      return "v" + serialization_version + "!" + (((function() {
        var _i, _len, _ref, _results;
        _ref = this.ships;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          ship = _ref[_i];
          if (ship.pilot != null) {
            _results.push(ship.toSerialized());
          }
        }
        return _results;
      }).call(this)).join(';'));
    };

    SquadBuilder.prototype.loadFromSerialized = function(serialized) {
      var matches, new_ship, re, serialized_ship, _i, _j, _len, _len1, _ref, _ref1;
      this.suppress_automatic_new_ship = true;
      this.removeAllShips();
      re = /^v(\d+)!(.*)/;
      matches = re.exec(serialized);
      if (matches != null) {
        _ref = matches[2].split(';');
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          serialized_ship = _ref[_i];
          if (serialized_ship !== '') {
            new_ship = this.addShip();
            new_ship.fromSerialized(parseInt(matches[1]), serialized_ship);
          }
        }
      } else {
        _ref1 = serialized.split(';');
        for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
          serialized_ship = _ref1[_j];
          if (serialized !== '') {
            new_ship = this.addShip();
            new_ship.fromSerialized(1, serialized_ship);
          }
        }
      }
      this.suppress_automatic_new_ship = false;
      return this.addShip();
    };

    SquadBuilder.prototype.uniqueIndex = function(unique, type) {
      if (!(type in this.uniques_in_use)) {
        throw "Invalid unique type '" + type + "'";
      }
      return this.uniques_in_use[type].indexOf(unique);
    };

    SquadBuilder.prototype.claimUnique = function(unique, type, cb) {
      var crew, pilot, upgrade_alias, _i, _len, _ref, _ref1;
      if (this.uniqueIndex(unique, type) < 0) {
        if (type === 'Pilot') {
          crew = exportObj.upgrades[unique.name];
          if ((crew != null) && ((crew != null ? crew.unique : void 0) != null)) {
            if (this.uniqueIndex(crew, 'Upgrade') < 0) {
              this.uniques_in_use['Upgrade'].push(crew);
            } else {
              throw "Unique " + type + " '" + unique.name + "' already claimed as crew";
            }
          }
        } else if (type === 'Upgrade') {
          if (unique.slot === 'Crew') {
            pilot = exportObj.pilots[unique.name];
            if ((pilot != null) && ((pilot != null ? pilot.unique : void 0) != null)) {
              if (this.uniqueIndex(pilot, 'Pilot') < 0) {
                this.uniques_in_use['Pilot'].push(pilot);
              } else {
                throw "Unique " + type + " '" + unique.name + "' already claimed as pilot";
              }
            }
          }
          _ref1 = (_ref = unique.aka) != null ? _ref : [];
          for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
            upgrade_alias = _ref1[_i];
            this.uniques_in_use['Upgrade'].push(exportObj.upgrades[upgrade_alias]);
          }
        }
        this.uniques_in_use[type].push(unique);
      } else {
        throw "Unique " + type + " '" + unique.name + "' already claimed";
      }
      return cb();
    };

    SquadBuilder.prototype.releaseUnique = function(unique, type, cb) {
      var alias_idx, crew, idx, pilot, upgrade_alias, _i, _len, _ref, _ref1;
      idx = this.uniqueIndex(unique, type);
      if (idx >= 0) {
        this.uniques_in_use[type].splice(idx, 1);
        if (type === 'Pilot') {
          crew = exportObj.upgrades[unique.name];
          if ((crew != null) && ((crew != null ? crew.unique : void 0) != null)) {
            idx = this.uniqueIndex(crew, 'Upgrade');
            if (idx < 0) {
              throw "Unique crew accompanying " + unique.name + " was not also claimed!";
            }
            this.uniques_in_use['Upgrade'].splice(idx, 1);
          }
        } else if (type === 'Upgrade') {
          if (unique.slot === 'Crew') {
            pilot = exportObj.pilots[unique.name];
            if ((pilot != null) && ((pilot != null ? pilot.unique : void 0) != null)) {
              idx = this.uniqueIndex(pilot, 'Pilot');
              if (idx < 0) {
                throw "Unique pilot accompanying " + unique.name + " was not also claimed!";
              }
              this.uniques_in_use['Pilot'].splice(idx, 1);
            }
          }
          _ref1 = (_ref = unique.aka) != null ? _ref : [];
          for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
            upgrade_alias = _ref1[_i];
            alias_idx = this.uniqueIndex(exportObj.upgrades[upgrade_alias], 'Upgrade');
            this.uniques_in_use['Upgrade'].splice(alias_idx, 1);
          }
        }
      } else {
        throw "Unique " + type + " '" + unique.name + "' not in use";
      }
      return cb();
    };

    SquadBuilder.prototype.addShip = function() {
      var new_ship;
      new_ship = new Ship({
        builder: this,
        container: this.ship_container
      });
      this.ships.push(new_ship);
      return new_ship;
    };

    SquadBuilder.prototype.removeShip = function(ship) {
      var ___iced_passed_deferral, __iced_deferrals, __iced_k;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      (function(_this) {
        return (function(__iced_k) {
          __iced_deferrals = new iced.Deferrals(__iced_k, {
            parent: ___iced_passed_deferral,
            filename: "coffeescripts/xwing.coffee",
            funcname: "SquadBuilder.removeShip"
          });
          ship.destroy(__iced_deferrals.defer({
            lineno: 782
          }));
          __iced_deferrals._fulfill();
        });
      })(this)((function(_this) {
        return function() {
          (function(__iced_k) {
            __iced_deferrals = new iced.Deferrals(__iced_k, {
              parent: ___iced_passed_deferral,
              filename: "coffeescripts/xwing.coffee",
              funcname: "SquadBuilder.removeShip"
            });
            _this.container.trigger('xwing:pointsUpdated', __iced_deferrals.defer({
              lineno: 783
            }));
            __iced_deferrals._fulfill();
          })(function() {
            _this.current_squad.dirty = true;
            return _this.container.trigger('xwing-backend:squadDirtinessChanged');
          });
        };
      })(this));
    };

    SquadBuilder.prototype.matcher = function(item, term) {
      return item.toUpperCase().indexOf(term.toUpperCase()) >= 0;
    };

    SquadBuilder.prototype.getAvailableShipsMatching = function(term) {
      var ship_data, ship_name, ships, _ref;
      if (term == null) {
        term = '';
      }
      ships = [];
      _ref = exportObj.ships;
      for (ship_name in _ref) {
        ship_data = _ref[ship_name];
        if (ship_data.faction === this.faction && this.matcher(ship_data.name, term)) {
          ships.push({
            id: ship_data.name,
            text: ship_data.name
          });
        }
      }
      return ships.sort(exportObj.sortHelper);
    };

    SquadBuilder.prototype.getAvailablePilotsForShipIncluding = function(ship, include_pilot, term) {
      var pilot, pilot_name, result_pilot, result_pilots_by_ship, results, unclaimed_faction_pilots, _i, _j, _len, _len1, _ref, _ref1;
      if (term == null) {
        term = '';
      }
      unclaimed_faction_pilots = (function() {
        var _ref, _results;
        _ref = exportObj.pilots;
        _results = [];
        for (pilot_name in _ref) {
          pilot = _ref[pilot_name];
          if (exportObj.ships[pilot.ship].faction === this.faction && ((ship == null) || pilot.ship === ship) && this.matcher(pilot_name, term) && ((pilot.unique == null) || __indexOf.call(this.uniques_in_use['Pilot'], pilot) < 0)) {
            _results.push(pilot);
          }
        }
        return _results;
      }).call(this);
      if ((include_pilot != null) && (include_pilot.unique != null) && this.matcher(include_pilot.name, term)) {
        unclaimed_faction_pilots.push(include_pilot);
      }
      result_pilots_by_ship = {};
      _ref = (function() {
        var _j, _len, _results;
        _results = [];
        for (_j = 0, _len = unclaimed_faction_pilots.length; _j < _len; _j++) {
          pilot = unclaimed_faction_pilots[_j];
          _results.push({
            id: pilot.id,
            text: "" + pilot.name + " (" + pilot.points + ")",
            points: pilot.points,
            ship: pilot.ship
          });
        }
        return _results;
      })();
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        result_pilot = _ref[_i];
        if (!(result_pilot.ship in result_pilots_by_ship)) {
          result_pilots_by_ship[result_pilot.ship] = [];
        }
        result_pilots_by_ship[result_pilot.ship].push(result_pilot);
      }
      results = [];
      _ref1 = Object.keys(result_pilots_by_ship).sort();
      for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
        ship = _ref1[_j];
        results.push({
          text: ship,
          children: result_pilots_by_ship[ship].sort(exportObj.sortHelper)
        });
      }
      return results;
    };

    SquadBuilder.prototype.getAvailableUpgradesIncluding = function(slot, include_upgrade, ship, term) {
      var current_upgrade_forcibly_removed, equipped_upgrade, unclaimed_upgrades, upgrade, upgrade_name, _i, _len, _ref, _ref1, _ref2;
      if (term == null) {
        term = '';
      }
      unclaimed_upgrades = (function() {
        var _ref, _results;
        _ref = exportObj.upgrades;
        _results = [];
        for (upgrade_name in _ref) {
          upgrade = _ref[upgrade_name];
          if (upgrade.slot === slot && this.matcher(upgrade_name, term) && ((upgrade.ship == null) || upgrade.ship === ship.data.name) && ((upgrade.unique == null) || __indexOf.call(this.uniques_in_use['Upgrade'], upgrade) < 0) && ((upgrade.faction == null) || upgrade.faction === this.faction) && (!((ship != null) && (upgrade.restriction_func != null)) || upgrade.restriction_func(ship))) {
            _results.push(upgrade);
          }
        }
        return _results;
      }).call(this);
      current_upgrade_forcibly_removed = false;
      if ((ship != null ? (_ref = ship.title) != null ? (_ref1 = _ref.data) != null ? _ref1.name : void 0 : void 0 : void 0) === 'A-Wing Test Pilot') {
        _ref2 = (function() {
          var _j, _len, _ref2, _results;
          _ref2 = ship.upgrades;
          _results = [];
          for (_j = 0, _len = _ref2.length; _j < _len; _j++) {
            upgrade = _ref2[_j];
            if ((upgrade != null ? upgrade.data : void 0) != null) {
              _results.push(upgrade.data);
            }
          }
          return _results;
        })();
        for (_i = 0, _len = _ref2.length; _i < _len; _i++) {
          equipped_upgrade = _ref2[_i];
          unclaimed_upgrades.removeItem(equipped_upgrade);
          if (equipped_upgrade === include_upgrade) {
            current_upgrade_forcibly_removed = true;
          }
        }
      }
      if ((include_upgrade != null) && (((include_upgrade.unique != null) && this.matcher(include_upgrade.name, term)) || current_upgrade_forcibly_removed)) {
        unclaimed_upgrades.push(include_upgrade);
      }
      return ((function() {
        var _j, _len1, _results;
        _results = [];
        for (_j = 0, _len1 = unclaimed_upgrades.length; _j < _len1; _j++) {
          upgrade = unclaimed_upgrades[_j];
          _results.push({
            id: upgrade.id,
            text: "" + upgrade.name + " (" + upgrade.points + ")",
            points: upgrade.points
          });
        }
        return _results;
      })()).sort(exportObj.sortHelper);
    };

    SquadBuilder.prototype.getAvailableModificationsIncluding = function(include_modification, ship, term) {
      var current_mod_forcibly_removed, equipped_modification, modification, modification_name, unclaimed_modifications, _i, _len, _ref, _ref1, _ref2;
      if (term == null) {
        term = '';
      }
      unclaimed_modifications = (function() {
        var _ref, _results;
        _ref = exportObj.modifications;
        _results = [];
        for (modification_name in _ref) {
          modification = _ref[modification_name];
          if (this.matcher(modification_name, term) && ((modification.ship == null) || modification.ship === ship.data.name) && ((modification.unique == null) || __indexOf.call(this.uniques_in_use['Modification'], modification) < 0) && ((modification.faction == null) || modification.faction === this.faction) && (!((ship != null) && (modification.restriction_func != null)) || modification.restriction_func(ship))) {
            _results.push(modification);
          }
        }
        return _results;
      }).call(this);
      current_mod_forcibly_removed = false;
      if ((ship != null ? (_ref = ship.title) != null ? (_ref1 = _ref.data) != null ? _ref1.name : void 0 : void 0 : void 0) === 'Royal Guard TIE') {
        _ref2 = (function() {
          var _j, _len, _ref2, _results;
          _ref2 = ship.modifications;
          _results = [];
          for (_j = 0, _len = _ref2.length; _j < _len; _j++) {
            modification = _ref2[_j];
            if ((modification != null ? modification.data : void 0) != null) {
              _results.push(modification.data);
            }
          }
          return _results;
        })();
        for (_i = 0, _len = _ref2.length; _i < _len; _i++) {
          equipped_modification = _ref2[_i];
          unclaimed_modifications.removeItem(equipped_modification);
          if (equipped_modification === include_modification) {
            current_mod_forcibly_removed = true;
          }
        }
      }
      if ((include_modification != null) && (((include_modification.unique != null) && this.matcher(include_modification.name, term)) || current_mod_forcibly_removed)) {
        unclaimed_modifications.push(include_modification);
      }
      return ((function() {
        var _j, _len1, _results;
        _results = [];
        for (_j = 0, _len1 = unclaimed_modifications.length; _j < _len1; _j++) {
          modification = unclaimed_modifications[_j];
          _results.push({
            id: modification.id,
            text: "" + modification.name + " (" + modification.points + ")",
            points: modification.points
          });
        }
        return _results;
      })()).sort(exportObj.sortHelper);
    };

    SquadBuilder.prototype.getAvailableTitlesIncluding = function(ship, include_title, term) {
      var title, title_name, unclaimed_titles;
      if (term == null) {
        term = '';
      }
      unclaimed_titles = (function() {
        var _ref, _results;
        _ref = exportObj.titles;
        _results = [];
        for (title_name in _ref) {
          title = _ref[title_name];
          if (title.ship === ship.data.name && this.matcher(title_name, term) && ((title.unique == null) || __indexOf.call(this.uniques_in_use['Title'], title) < 0) && ((title.faction == null) || title.faction === this.faction) && (!((ship != null) && (title.restriction_func != null)) || title.restriction_func(ship))) {
            _results.push(title);
          }
        }
        return _results;
      }).call(this);
      if ((include_title != null) && (include_title.unique != null) && this.matcher(include_title.name, term)) {
        unclaimed_titles.push(include_title);
      }
      return ((function() {
        var _i, _len, _results;
        _results = [];
        for (_i = 0, _len = unclaimed_titles.length; _i < _len; _i++) {
          title = unclaimed_titles[_i];
          _results.push({
            id: title.id,
            text: "" + title.name + " (" + title.points + ")",
            points: title.points
          });
        }
        return _results;
      })()).sort(exportObj.sortHelper);
    };

    SquadBuilder.prototype.showTooltip = function(type, data) {
      var a, action, effective_stats, extra_actions, ship, slot, source, _ref, _ref1, _ref10, _ref11, _ref12, _ref13, _ref14, _ref15, _ref16, _ref17, _ref18, _ref19, _ref2, _ref20, _ref21, _ref22, _ref23, _ref24, _ref25, _ref26, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
      if (data !== this.tooltip_currently_displaying) {
        switch (type) {
          case 'Ship':
            this.info_container.find('.info-sources').text(((function() {
              var _i, _len, _ref, _results;
              _ref = data.pilot.sources;
              _results = [];
              for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                source = _ref[_i];
                _results.push(exportObj.translate(this.language, 'sources', source));
              }
              return _results;
            }).call(this)).sort().join(', '));
            effective_stats = data.effectiveStats();
            extra_actions = $.grep(effective_stats.actions, function(el, i) {
              return __indexOf.call(data.data.actions, el) < 0;
            });
            this.info_container.find('.info-name').html("" + (data.pilot.unique ? "&middot;&nbsp;" : "") + data.pilot.name);
            this.info_container.find('p.info-text').html((_ref = data.pilot.text) != null ? _ref : '');
            this.info_container.find('tr.info-ship td.info-data').text(data.pilot.ship);
            this.info_container.find('tr.info-ship').show();
            this.info_container.find('tr.info-skill td.info-data').text(statAndEffectiveStat(data.pilot.skill, effective_stats, 'skill'));
            this.info_container.find('tr.info-skill').show();
            this.info_container.find('tr.info-attack td.info-data').text(statAndEffectiveStat((_ref1 = (_ref2 = data.pilot.ship_override) != null ? _ref2.attack : void 0) != null ? _ref1 : data.data.attack, effective_stats, 'attack'));
            this.info_container.find('tr.info-attack').toggle((((_ref3 = data.pilot.ship_override) != null ? _ref3.attack : void 0) != null) || (data.data.attack != null));
            this.info_container.find('tr.info-energy td.info-data').text(statAndEffectiveStat((_ref4 = (_ref5 = data.pilot.ship_override) != null ? _ref5.energy : void 0) != null ? _ref4 : data.data.energy, effective_stats, 'energy'));
            this.info_container.find('tr.info-energy').toggle((((_ref6 = data.pilot.ship_override) != null ? _ref6.energy : void 0) != null) || (data.data.energy != null));
            this.info_container.find('tr.info-range').hide();
            this.info_container.find('tr.info-agility td.info-data').text(statAndEffectiveStat((_ref7 = (_ref8 = data.pilot.ship_override) != null ? _ref8.agility : void 0) != null ? _ref7 : data.data.agility, effective_stats, 'agility'));
            this.info_container.find('tr.info-agility').show();
            this.info_container.find('tr.info-hull td.info-data').text(statAndEffectiveStat((_ref9 = (_ref10 = data.pilot.ship_override) != null ? _ref10.hull : void 0) != null ? _ref9 : data.data.hull, effective_stats, 'hull'));
            this.info_container.find('tr.info-hull').show();
            this.info_container.find('tr.info-shields td.info-data').text(statAndEffectiveStat((_ref11 = (_ref12 = data.pilot.ship_override) != null ? _ref12.shields : void 0) != null ? _ref11 : data.data.shields, effective_stats, 'shields'));
            this.info_container.find('tr.info-shields').show();
            this.info_container.find('tr.info-actions td.info-data').html(((function() {
              var _i, _len, _ref13, _results;
              _ref13 = data.data.actions.concat((function() {
                var _j, _len, _results1;
                _results1 = [];
                for (_j = 0, _len = extra_actions.length; _j < _len; _j++) {
                  action = extra_actions[_j];
                  _results1.push("<strong>" + (exportObj.translate(this.language, 'action', action)) + "</strong>");
                }
                return _results1;
              }).call(this));
              _results = [];
              for (_i = 0, _len = _ref13.length; _i < _len; _i++) {
                a = _ref13[_i];
                _results.push(exportObj.translate(this.language, 'action', a));
              }
              return _results;
            }).call(this)).join(', '));
            this.info_container.find('tr.info-actions').show();
            this.info_container.find('tr.info-upgrades').show();
            this.info_container.find('tr.info-upgrades td.info-data').text(((function() {
              var _i, _len, _ref13, _results;
              _ref13 = data.pilot.slots;
              _results = [];
              for (_i = 0, _len = _ref13.length; _i < _len; _i++) {
                slot = _ref13[_i];
                _results.push(exportObj.translate(this.language, 'slot', slot));
              }
              return _results;
            }).call(this)).join(', ') || 'None');
            break;
          case 'Pilot':
            this.info_container.find('.info-sources').text(((function() {
              var _i, _len, _ref13, _results;
              _ref13 = data.sources;
              _results = [];
              for (_i = 0, _len = _ref13.length; _i < _len; _i++) {
                source = _ref13[_i];
                _results.push(exportObj.translate(this.language, 'sources', source));
              }
              return _results;
            }).call(this)).sort().join(', '));
            this.info_container.find('.info-name').html("" + (data.unique ? "&middot;&nbsp;" : "") + data.name);
            this.info_container.find('p.info-text').html((_ref13 = data.text) != null ? _ref13 : '');
            ship = exportObj.ships[data.ship];
            this.info_container.find('tr.info-ship td.info-data').text(data.ship);
            this.info_container.find('tr.info-ship').show();
            this.info_container.find('tr.info-skill td.info-data').text(data.skill);
            this.info_container.find('tr.info-skill').show();
            this.info_container.find('tr.info-attack td.info-data').text((_ref14 = (_ref15 = data.ship_override) != null ? _ref15.attack : void 0) != null ? _ref14 : ship.attack);
            this.info_container.find('tr.info-attack').toggle((((_ref16 = data.ship_override) != null ? _ref16.attack : void 0) != null) || (ship.attack != null));
            this.info_container.find('tr.info-energy td.info-data').text((_ref17 = (_ref18 = data.ship_override) != null ? _ref18.energy : void 0) != null ? _ref17 : ship.energy);
            this.info_container.find('tr.info-energy').toggle((((_ref19 = data.ship_override) != null ? _ref19.energy : void 0) != null) || (ship.energy != null));
            this.info_container.find('tr.info-range').hide();
            this.info_container.find('tr.info-agility td.info-data').text((_ref20 = (_ref21 = data.ship_override) != null ? _ref21.agility : void 0) != null ? _ref20 : ship.agility);
            this.info_container.find('tr.info-agility').show();
            this.info_container.find('tr.info-hull td.info-data').text((_ref22 = (_ref23 = data.ship_override) != null ? _ref23.hull : void 0) != null ? _ref22 : ship.hull);
            this.info_container.find('tr.info-hull').show();
            this.info_container.find('tr.info-shields td.info-data').text((_ref24 = (_ref25 = data.ship_override) != null ? _ref25.shields : void 0) != null ? _ref24 : ship.shields);
            this.info_container.find('tr.info-shields').show();
            this.info_container.find('tr.info-actions td.info-data').text(((function() {
              var _i, _len, _ref26, _results;
              _ref26 = exportObj.ships[data.ship].actions;
              _results = [];
              for (_i = 0, _len = _ref26.length; _i < _len; _i++) {
                action = _ref26[_i];
                _results.push(exportObj.translate(this.language, 'action', action));
              }
              return _results;
            }).call(this)).join(', '));
            this.info_container.find('tr.info-actions').show();
            this.info_container.find('tr.info-upgrades').show();
            this.info_container.find('tr.info-upgrades td.info-data').text(((function() {
              var _i, _len, _ref26, _results;
              _ref26 = data.slots;
              _results = [];
              for (_i = 0, _len = _ref26.length; _i < _len; _i++) {
                slot = _ref26[_i];
                _results.push(exportObj.translate(this.language, 'slot', slot));
              }
              return _results;
            }).call(this)).join(', ') || 'None');
            break;
          case 'Addon':
            this.info_container.find('.info-sources').text(((function() {
              var _i, _len, _ref26, _results;
              _ref26 = data.sources;
              _results = [];
              for (_i = 0, _len = _ref26.length; _i < _len; _i++) {
                source = _ref26[_i];
                _results.push(exportObj.translate(this.language, 'sources', source));
              }
              return _results;
            }).call(this)).sort().join(', '));
            this.info_container.find('.info-name').html("" + (data.unique ? "&middot;&nbsp;" : "") + data.name);
            this.info_container.find('p.info-text').html((_ref26 = data.text) != null ? _ref26 : '');
            this.info_container.find('tr.info-ship').hide();
            this.info_container.find('tr.info-skill').hide();
            if (data.energy != null) {
              this.info_container.find('tr.info-energy td.info-data').text(data.energy);
              this.info_container.find('tr.info-energy').show();
            } else {
              this.info_container.find('tr.info-energy').hide();
            }
            if (data.attack != null) {
              this.info_container.find('tr.info-attack td.info-data').text(data.attack);
              this.info_container.find('tr.info-attack').show();
            } else {
              this.info_container.find('tr.info-attack').hide();
            }
            if (data.range != null) {
              this.info_container.find('tr.info-range td.info-data').text(data.range);
              this.info_container.find('tr.info-range').show();
            } else {
              this.info_container.find('tr.info-range').hide();
            }
            this.info_container.find('tr.info-agility').hide();
            this.info_container.find('tr.info-hull').hide();
            this.info_container.find('tr.info-shields').hide();
            this.info_container.find('tr.info-actions').hide();
            this.info_container.find('tr.info-upgrades').hide();
        }
        this.info_container.show();
        return this.tooltip_currently_displaying = data;
      }
    };

    SquadBuilder.prototype._randomizerLoopBody = function(data) {
      var addon, available_modifications, available_pilots, available_titles, available_upgrades, idx, modification, new_ship, pilot, removable_things, ship, ship_group, thing_to_remove, title, unused_addons, upgrade, _i, _j, _k, _l, _len, _len1, _len2, _len3, _len4, _len5, _m, _n, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7;
      if (data.keep_running && data.iterations < data.max_iterations) {
        data.iterations++;
        if (this.total_points === data.max_points) {
          data.keep_running = false;
        } else if (this.total_points < data.max_points) {
          unused_addons = [];
          _ref = this.ships;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            ship = _ref[_i];
            _ref1 = ship.upgrades;
            for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
              upgrade = _ref1[_j];
              if (upgrade.data == null) {
                unused_addons.push(upgrade);
              }
            }
            if ((ship.title != null) && (ship.title.data == null)) {
              unused_addons.push(ship.title);
            }
            _ref2 = ship.modifications;
            for (_k = 0, _len2 = _ref2.length; _k < _len2; _k++) {
              modification = _ref2[_k];
              if (modification.data == null) {
                unused_addons.push(modification);
              }
            }
          }
          idx = $.randomInt(1 + unused_addons.length);
          if (idx === 0) {
            available_pilots = this.getAvailablePilotsForShipIncluding();
            ship_group = available_pilots[$.randomInt(available_pilots.length)];
            pilot = ship_group.children[$.randomInt(ship_group.children.length)];
            if (exportObj.pilotsById[pilot.id].sources.intersects(data.allowed_sources)) {
              new_ship = this.addShip();
              new_ship.setPilotById(pilot.id);
            }
          } else {
            addon = unused_addons[idx - 1];
            switch (addon.type) {
              case 'Upgrade':
                available_upgrades = (function() {
                  var _l, _len3, _ref3, _results;
                  _ref3 = this.getAvailableUpgradesIncluding(addon.slot, null, addon.ship);
                  _results = [];
                  for (_l = 0, _len3 = _ref3.length; _l < _len3; _l++) {
                    upgrade = _ref3[_l];
                    if (exportObj.upgradesById[upgrade.id].sources.intersects(data.allowed_sources)) {
                      _results.push(upgrade);
                    }
                  }
                  return _results;
                }).call(this);
                if (available_upgrades.length > 0) {
                  addon.setById(available_upgrades[$.randomInt(available_upgrades.length)].id);
                }
                break;
              case 'Title':
                available_titles = (function() {
                  var _l, _len3, _ref3, _results;
                  _ref3 = this.getAvailableTitlesIncluding(addon.ship);
                  _results = [];
                  for (_l = 0, _len3 = _ref3.length; _l < _len3; _l++) {
                    title = _ref3[_l];
                    if (exportObj.titlesById[title.id].sources.intersects(data.allowed_sources)) {
                      _results.push(title);
                    }
                  }
                  return _results;
                }).call(this);
                if (available_titles.length > 0) {
                  addon.setById(available_titles[$.randomInt(available_titles.length)].id);
                }
                break;
              case 'Modification':
                available_modifications = (function() {
                  var _l, _len3, _ref3, _results;
                  _ref3 = this.getAvailableModificationsIncluding(null, addon.ship);
                  _results = [];
                  for (_l = 0, _len3 = _ref3.length; _l < _len3; _l++) {
                    modification = _ref3[_l];
                    if (exportObj.modificationsById[modification.id].sources.intersects(data.allowed_sources)) {
                      _results.push(modification);
                    }
                  }
                  return _results;
                }).call(this);
                if (available_modifications.length > 0) {
                  addon.setById(available_modifications[$.randomInt(available_modifications.length)].id);
                }
                break;
              default:
                throw "Invalid addon type " + addon.type;
            }
          }
        } else {
          removable_things = [];
          _ref3 = this.ships;
          for (_l = 0, _len3 = _ref3.length; _l < _len3; _l++) {
            ship = _ref3[_l];
            removable_things.push(ship);
            _ref4 = ship.upgrades;
            for (_m = 0, _len4 = _ref4.length; _m < _len4; _m++) {
              upgrade = _ref4[_m];
              if (upgrade.data != null) {
                removable_things.push(upgrade);
              }
            }
            if (((_ref5 = ship.title) != null ? _ref5.data : void 0) != null) {
              removable_things.push(ship.title);
            }
            if (((_ref6 = ship.modification) != null ? _ref6.data : void 0) != null) {
              removable_things.push(ship.modification);
            }
          }
          if (removable_things.length > 0) {
            thing_to_remove = removable_things[$.randomInt(removable_things.length)];
            if (thing_to_remove instanceof Ship) {
              this.removeShip(thing_to_remove);
            } else if (thing_to_remove instanceof GenericAddon) {
              thing_to_remove.setData(null);
            } else {
              throw "Unknown thing to remove " + thing_to_remove;
            }
          }
        }
        return window.setTimeout(this._makeRandomizerLoopFunc(data), 0);
      } else {
        window.clearTimeout(data.timer);
        _ref7 = this.ships;
        for (_n = 0, _len5 = _ref7.length; _n < _len5; _n++) {
          ship = _ref7[_n];
          ship.updateSelections();
        }
        this.suppress_automatic_new_ship = false;
        return this.addShip();
      }
    };

    SquadBuilder.prototype._makeRandomizerLoopFunc = function(data) {
      return (function(_this) {
        return function() {
          return _this._randomizerLoopBody(data);
        };
      })(this);
    };

    SquadBuilder.prototype.randomSquad = function(max_points, allowed_sources, timeout_ms, max_iterations) {
      var data, stopHandler;
      if (max_points == null) {
        max_points = 100;
      }
      if (allowed_sources == null) {
        allowed_sources = null;
      }
      if (timeout_ms == null) {
        timeout_ms = 1000;
      }
      if (max_iterations == null) {
        max_iterations = 1000;
      }
      this.backend_status.fadeOut('slow');
      this.suppress_automatic_new_ship = true;
      while (this.ships.length > 0) {
        this.removeShip(this.ships[0]);
      }
      if (this.ships.length > 0) {
        throw "Ships not emptied";
      }
      data = {
        iterations: 0,
        max_points: max_points,
        allowed_sources: allowed_sources,
        max_iterations: max_iterations,
        keep_running: true,
        allowed_sources: allowed_sources != null ? allowed_sources : exportObj.expansions
      };
      stopHandler = (function(_this) {
        return function() {
          return data.keep_running = false;
        };
      })(this);
      data.timer = window.setTimeout(stopHandler, timeout_ms);
      window.setTimeout(this._makeRandomizerLoopFunc(data), 0);
      this.resetCurrentSquad();
      this.current_squad.name = 'Random Squad';
      return this.container.trigger('xwing-backend:squadNameChanged');
    };

    SquadBuilder.prototype.setBackend = function(backend) {
      return this.backend = backend;
    };

    SquadBuilder.prototype.describeSquad = function() {
      var ship;
      return ((function() {
        var _i, _len, _ref, _results;
        _ref = this.ships;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          ship = _ref[_i];
          if (ship.pilot != null) {
            _results.push(ship.pilot.name);
          }
        }
        return _results;
      }).call(this)).join(', ');
    };

    SquadBuilder.prototype.listCards = function() {
      var card_obj, ship, upgrade, _i, _j, _len, _len1, _ref, _ref1, _ref2, _ref3;
      card_obj = {};
      _ref = this.ships;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        ship = _ref[_i];
        if (ship.pilot != null) {
          card_obj[ship.pilot.name] = null;
          _ref1 = ship.upgrades;
          for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
            upgrade = _ref1[_j];
            if (upgrade.data != null) {
              card_obj[upgrade.data.name] = null;
            }
          }
          if (((_ref2 = ship.title) != null ? _ref2.data : void 0) != null) {
            card_obj[ship.title.data.name] = null;
          }
          if (((_ref3 = ship.modification) != null ? _ref3.data : void 0) != null) {
            card_obj[ship.modification.data.name] = null;
          }
        }
      }
      return Object.keys(card_obj).sort();
    };

    SquadBuilder.prototype.getNotes = function() {
      return this.notes.val();
    };

    return SquadBuilder;

  })();

  Ship = (function() {
    function Ship(args) {
      this.builder = args.builder;
      this.container = args.container;
      this.pilot = null;
      this.data = null;
      this.upgrades = [];
      this.modifications = [];
      this.title = null;
      this.setupUI();
    }

    Ship.prototype.destroy = function(cb) {
      var idx;
      this.resetPilot();
      this.resetAddons();
      this.teardownUI();
      idx = this.builder.ships.indexOf(this);
      if (idx < 0) {
        throw "Ship not registered with builder";
      }
      this.builder.ships.splice(idx, 1);
      return cb();
    };

    Ship.prototype.copyFrom = function(other) {
      var i, other_conferred_addon, other_conferred_addons, other_upgrade, _i, _j, _k, _len, _len1, _len2, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7;
      if (other === this) {
        throw "Cannot copy from self";
      }
      if (!((other.pilot != null) && (other.data != null) && !other.pilot.unique)) {
        return;
      }
      this.setPilotById(other.pilot.id);
      other_conferred_addons = [];
      if ((other.title != null) && other.title.conferredAddons.length > 0) {
        other_conferred_addons = other_conferred_addons.concat(other.title.conferredAddons);
      }
      if (((_ref = other.modifications[0]) != null ? _ref.data : void 0) != null) {
        other_conferred_addons = other_conferred_addons.concat(other.modifications[0].conferredAddons);
      }
      _ref1 = other.upgrades;
      for (i = _i = 0, _len = _ref1.length; _i < _len; i = ++_i) {
        other_upgrade = _ref1[i];
        if ((other_upgrade.data != null) && __indexOf.call(other_conferred_addons, other_upgrade) < 0 && !other_upgrade.data.unique) {
          this.upgrades[i].setById(other_upgrade.data.id);
        }
      }
      if ((((_ref2 = other.title) != null ? _ref2.data : void 0) != null) && !other.title.data.unique) {
        this.title.setById(other.title.data.id);
      }
      if (((_ref3 = other.modifications[0]) != null ? _ref3.data : void 0) && !other.modifications[0].data.unique) {
        this.modifications[0].setById(other.modifications[0].data.id);
      }
      if ((other.title != null) && other.title.conferredAddons.length > 0) {
        _ref4 = other.title.conferredAddons;
        for (i = _j = 0, _len1 = _ref4.length; _j < _len1; i = ++_j) {
          other_conferred_addon = _ref4[i];
          if (!((_ref5 = other_conferred_addon.data) != null ? _ref5.unique : void 0)) {
            this.title.conferredAddons[i].setById(other_conferred_addon.data.id);
          }
        }
      }
      if ((other.modifications[0] != null) && other.modifications[0].conferredAddons.length > 0) {
        _ref6 = other.modifications[0].conferredAddons;
        for (i = _k = 0, _len2 = _ref6.length; _k < _len2; i = ++_k) {
          other_conferred_addon = _ref6[i];
          if (!((_ref7 = other_conferred_addon.data) != null ? _ref7.unique : void 0)) {
            this.modifications[0].conferredAddons[i].setById(other_conferred_addon.data.id);
          }
        }
      }
      this.updateSelections();
      this.builder.container.trigger('xwing:pointsUpdated');
      this.builder.current_squad.dirty = true;
      return this.builder.container.trigger('xwing-backend:squadDirtinessChanged');
    };

    Ship.prototype.setShipType = function(ship_type) {
      var cls, _i, _len, _ref, _ref1;
      this.pilot_selector.data('select2').container.show();
      if (ship_type !== ((_ref = this.pilot) != null ? _ref.ship : void 0)) {
        this.setPilot(null);
      }
      _ref1 = this.row.attr('class').split(/\s+/);
      for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
        cls = _ref1[_i];
        if (cls.indexOf('ship-') === 0) {
          this.row.removeClass(cls);
        }
      }
      this.remove_button.fadeIn('fast');
      this.row.addClass("ship-" + (ship_type.toLowerCase().replace(/[^a-z0-9]/gi, '')) + "0");
      return this.builder.container.trigger('xwing:shipUpdated');
    };

    Ship.prototype.setPilotById = function(id) {
      return this.setPilot(exportObj.pilotsById[parseInt(id)]);
    };

    Ship.prototype.setPilotByName = function(name) {
      return this.setPilot(exportObj.pilots[$.trim(name)]);
    };

    Ship.prototype.setPilot = function(new_pilot) {
      var modification, old_modification, old_modifications, old_title, old_upgrade, old_upgrades, ship_changed, upgrade, ___iced_passed_deferral, __iced_deferrals, __iced_k, _i, _j, _len, _len1, _name, _ref, _ref1;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      if (new_pilot !== this.pilot) {
        ship_changed = (this.pilot != null) && (new_pilot != null ? new_pilot.ship : void 0) === this.pilot.ship;
        old_upgrades = {};
        old_title = null;
        old_modifications = [];
        if (ship_changed) {
          _ref = this.upgrades;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            upgrade = _ref[_i];
            if ((upgrade != null ? upgrade.data : void 0) != null) {
              if (old_upgrades[_name = upgrade.slot] == null) {
                old_upgrades[_name] = [];
              }
              old_upgrades[upgrade.slot].push(upgrade);
            }
          }
          if (this.title != null) {
            old_title = this.title;
          }
          _ref1 = this.modifications;
          for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
            modification = _ref1[_j];
            if ((modification != null ? modification.data : void 0) != null) {
              old_modifications.push(modification);
            }
          }
        }
        this.resetPilot();
        this.resetAddons();
        (function(_this) {
          return (function(__iced_k) {
            if (new_pilot != null) {
              _this.data = exportObj.ships[new_pilot != null ? new_pilot.ship : void 0];
              (function(__iced_k) {
                if ((new_pilot != null ? new_pilot.unique : void 0) != null) {
                  (function(__iced_k) {
                    __iced_deferrals = new iced.Deferrals(__iced_k, {
                      parent: ___iced_passed_deferral,
                      filename: "coffeescripts/xwing.coffee",
                      funcname: "Ship.setPilot"
                    });
                    _this.builder.container.trigger('xwing:claimUnique', [
                      new_pilot, 'Pilot', __iced_deferrals.defer({
                        lineno: 1175
                      })
                    ]);
                    __iced_deferrals._fulfill();
                  })(__iced_k);
                } else {
                  return __iced_k();
                }
              })(function() {
                var _k, _l, _len2, _len3, _ref2, _ref3, _ref4, _ref5;
                _this.pilot = new_pilot;
                if (_this.pilot != null) {
                  _this.setupAddons();
                }
                _this.copy_button.toggle(!((_ref2 = _this.pilot) != null ? _ref2.unique : void 0));
                _this.setShipType(_this.pilot.ship);
                if (ship_changed) {
                  if ((old_title != null ? old_title.data : void 0) != null) {
                    _this.title.setById(old_title.data.id);
                  }
                  _ref3 = _this.modifications;
                  for (_k = 0, _len2 = _ref3.length; _k < _len2; _k++) {
                    modification = _ref3[_k];
                    old_modification = old_modifications.shift();
                    if (old_modification != null) {
                      modification.setById(old_modification.data.id);
                    }
                  }
                  _ref4 = _this.upgrades;
                  for (_l = 0, _len3 = _ref4.length; _l < _len3; _l++) {
                    upgrade = _ref4[_l];
                    old_upgrade = ((_ref5 = old_upgrades[upgrade.slot]) != null ? _ref5 : []).shift();
                    if (old_upgrade != null) {
                      upgrade.setById(old_upgrade.data.id);
                    }
                  }
                }
                return __iced_k();
              });
            } else {
              return __iced_k(_this.copy_button.hide());
            }
          });
        })(this)((function(_this) {
          return function() {
            return __iced_k(_this.builder.container.trigger('xwing:pointsUpdated'));
          };
        })(this));
      } else {
        return __iced_k();
      }
    };

    Ship.prototype.resetPilot = function() {
      var ___iced_passed_deferral, __iced_deferrals, __iced_k;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      (function(_this) {
        return (function(__iced_k) {
          var _ref;
          if (((_ref = _this.pilot) != null ? _ref.unique : void 0) != null) {
            (function(__iced_k) {
              __iced_deferrals = new iced.Deferrals(__iced_k, {
                parent: ___iced_passed_deferral,
                filename: "coffeescripts/xwing.coffee",
                funcname: "Ship.resetPilot"
              });
              _this.builder.container.trigger('xwing:releaseUnique', [
                _this.pilot, 'Pilot', __iced_deferrals.defer({
                  lineno: 1198
                })
              ]);
              __iced_deferrals._fulfill();
            })(__iced_k);
          } else {
            return __iced_k();
          }
        });
      })(this)((function(_this) {
        return function() {
          return _this.pilot = null;
        };
      })(this));
    };

    Ship.prototype.setupAddons = function() {
      var slot, _i, _len, _ref, _ref1;
      _ref1 = (_ref = this.pilot.slots) != null ? _ref : [];
      for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
        slot = _ref1[_i];
        this.upgrades.push(new exportObj.Upgrade({
          ship: this,
          container: this.addon_container,
          slot: slot
        }));
      }
      if (this.pilot.ship in exportObj.titlesByShip) {
        this.title = new exportObj.Title({
          ship: this,
          container: this.addon_container
        });
      }
      return this.modifications.push(new exportObj.Modification({
        ship: this,
        container: this.addon_container
      }));
    };

    Ship.prototype.resetAddons = function() {
      var modification, upgrade, ___iced_passed_deferral, __iced_deferrals, __iced_k;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      (function(_this) {
        return (function(__iced_k) {
          var _i, _j, _len, _len1, _ref, _ref1;
          __iced_deferrals = new iced.Deferrals(__iced_k, {
            parent: ___iced_passed_deferral,
            filename: "coffeescripts/xwing.coffee",
            funcname: "Ship.resetAddons"
          });
          if (_this.title != null) {
            _this.title.destroy(__iced_deferrals.defer({
              lineno: 1220
            }));
          }
          _ref = _this.upgrades;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            upgrade = _ref[_i];
            upgrade.destroy(__iced_deferrals.defer({
              lineno: 1222
            }));
          }
          _ref1 = _this.modifications;
          for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
            modification = _ref1[_j];
            if (modification != null) {
              modification.destroy(__iced_deferrals.defer({
                lineno: 1224
              }));
            }
          }
          __iced_deferrals._fulfill();
        });
      })(this)((function(_this) {
        return function() {
          _this.upgrades = [];
          _this.modifications = [];
          return _this.title = null;
        };
      })(this));
    };

    Ship.prototype.getPoints = function() {
      var modification, points, upgrade, _i, _j, _len, _len1, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6;
      points = ((_ref = (_ref1 = this.pilot) != null ? _ref1.points : void 0) != null ? _ref : 0) + ((_ref2 = (_ref3 = this.title) != null ? _ref3.getPoints() : void 0) != null ? _ref2 : 0);
      _ref4 = this.upgrades;
      for (_i = 0, _len = _ref4.length; _i < _len; _i++) {
        upgrade = _ref4[_i];
        points += upgrade.getPoints();
      }
      _ref5 = this.modifications;
      for (_j = 0, _len1 = _ref5.length; _j < _len1; _j++) {
        modification = _ref5[_j];
        points += (_ref6 = modification != null ? modification.getPoints() : void 0) != null ? _ref6 : 0;
      }
      this.points_container.find('span').text(points);
      if (points > 0) {
        this.points_container.fadeTo('fast', 1);
      } else {
        this.points_container.fadeTo(0, 0);
      }
      return points;
    };

    Ship.prototype.updateSelections = function() {
      var modification, upgrade, _i, _j, _len, _len1, _ref, _ref1, _results;
      if (this.pilot != null) {
        this.ship_selector.select2('data', {
          id: this.pilot.ship,
          text: this.pilot.ship
        });
        this.pilot_selector.select2('data', {
          id: this.pilot.id,
          text: "" + this.pilot.name + " (" + this.pilot.points + ")"
        });
        this.pilot_selector.data('select2').container.show();
        _ref = this.upgrades;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          upgrade = _ref[_i];
          upgrade.updateSelection();
        }
        if (this.title != null) {
          this.title.updateSelection();
        }
        _ref1 = this.modifications;
        _results = [];
        for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
          modification = _ref1[_j];
          if (modification != null) {
            _results.push(modification.updateSelection());
          } else {
            _results.push(void 0);
          }
        }
        return _results;
      } else {
        this.pilot_selector.select2('data', null);
        return this.pilot_selector.data('select2').container.toggle(this.ship_selector.val() !== '');
      }
    };

    Ship.prototype.setupUI = function() {
      this.row = $(document.createElement('DIV'));
      this.row.addClass('row-fluid ship');
      this.row.insertBefore(this.builder.notes_container);
      this.row.append($.trim('<div class="span3">\n    <input class="ship-selector-container" type="hidden" />\n    <br />\n    <input type="hidden" class="pilot-selector-container" />\n</div>\n<div class="span1 points-display-container">\n    <span></span>\n</div>\n<div class="span6 addon-container" />\n<div class="span2 button-container">\n    <button class="btn btn-danger remove-pilot"><span class="visible-desktop visible-tablet hidden-phone" data-toggle="tooltip" title="Remove Pilot"><i class="icon-remove"></i></span><span class="hidden-desktop hidden-tablet visible-phone">Remove Pilot</span></button>\n    <button class="btn copy-pilot"><span class="visible-desktop visible-tablet hidden-phone" data-toggle="tooltip" title="Clone Pilot"><i class="icon-copy"></i></span><span class="hidden-desktop hidden-tablet visible-phone">Clone Pilot</span></button>\n</div>'));
      this.row.find('.button-container span').tooltip();
      this.ship_selector = $(this.row.find('input.ship-selector-container'));
      this.pilot_selector = $(this.row.find('input.pilot-selector-container'));
      this.ship_selector.select2({
        width: '100%',
        placeholder: exportObj.translate(this.builder.language, 'ui', 'shipSelectorPlaceholder'),
        query: (function(_this) {
          return function(query) {
            return query.callback({
              more: false,
              results: _this.builder.getAvailableShipsMatching(query.term)
            });
          };
        })(this),
        minimumResultsForSearch: $.isMobile() ? -1 : 0
      });
      this.ship_selector.on('change', (function(_this) {
        return function(e) {
          return _this.setShipType(_this.ship_selector.val());
        };
      })(this));
      this.row.attr('id', "row-" + (this.ship_selector.data('select2').container.attr('id')));
      this.pilot_selector.select2({
        width: '100%',
        placeholder: exportObj.translate(this.builder.language, 'ui', 'pilotSelectorPlaceholder'),
        query: (function(_this) {
          return function(query) {
            return query.callback({
              more: false,
              results: _this.builder.getAvailablePilotsForShipIncluding(_this.ship_selector.val(), _this.pilot, query.term)
            });
          };
        })(this),
        minimumResultsForSearch: $.isMobile() ? -1 : 0
      });
      this.pilot_selector.on('change', (function(_this) {
        return function(e) {
          _this.setPilotById(_this.pilot_selector.select2('val'));
          _this.builder.current_squad.dirty = true;
          _this.builder.container.trigger('xwing-backend:squadDirtinessChanged');
          return _this.builder.backend_status.fadeOut('slow');
        };
      })(this));
      this.pilot_selector.data('select2').results.on('mousemove-filtered', (function(_this) {
        return function(e) {
          var select2_data;
          select2_data = $(e.target).closest('.select2-result-selectable').data('select2-data');
          if ((select2_data != null ? select2_data.id : void 0) != null) {
            return _this.builder.showTooltip('Pilot', exportObj.pilotsById[select2_data.id]);
          }
        };
      })(this));
      this.pilot_selector.data('select2').container.on('mouseover', (function(_this) {
        return function(e) {
          if (_this.data != null) {
            return _this.builder.showTooltip('Ship', _this);
          }
        };
      })(this));
      this.pilot_selector.data('select2').container.hide();
      this.points_container = $(this.row.find('.points-display-container'));
      this.points_container.fadeTo(0, 0);
      this.addon_container = $(this.row.find('div.addon-container'));
      this.remove_button = $(this.row.find('button.remove-pilot'));
      this.remove_button.click((function(_this) {
        return function(e) {
          e.preventDefault();
          return _this.row.slideUp('fast', function() {
            var _ref;
            _this.builder.removeShip(_this);
            return (_ref = _this.backend_status) != null ? _ref.fadeOut('slow') : void 0;
          });
        };
      })(this));
      this.remove_button.hide();
      this.copy_button = $(this.row.find('button.copy-pilot'));
      this.copy_button.click((function(_this) {
        return function(e) {
          var clone;
          clone = _this.builder.ships[_this.builder.ships.length - 1];
          return clone.copyFrom(_this);
        };
      })(this));
      return this.copy_button.hide();
    };

    Ship.prototype.teardownUI = function() {
      this.row.text('');
      return this.row.remove();
    };

    Ship.prototype.toString = function() {
      if (this.pilot != null) {
        return "Pilot " + this.pilot.name + " flying " + this.data.name;
      } else {
        return "Ship without pilot";
      }
    };

    Ship.prototype.toHTML = function() {
      var action, action_bar, attackHTML, effective_stats, energyHTML, html, modification, slotted_upgrades, upgrade, _i, _j, _len, _len1, _ref, _ref1, _ref10, _ref11, _ref12, _ref13, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
      effective_stats = this.effectiveStats();
      action_bar = "";
      _ref = effective_stats.actions;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        action = _ref[_i];
        action_bar += (function() {
          switch (action) {
            case 'Focus':
              return "<img class=\"icon-focus\" src=\"images/transparent.png\" />";
            case 'Evade':
              return "<img class=\"icon-evade\" src=\"images/transparent.png\" />";
            case 'Barrel Roll':
              return "<img class=\"icon-barrel-roll\" src=\"images/transparent.png\" />";
            case 'Target Lock':
              return "<img class=\"icon-target-lock\" src=\"images/transparent.png\" />";
            case 'Boost':
              return "<img class=\"icon-boost\" src=\"images/transparent.png\" />";
            case 'Coordinate':
              return "<img class=\"icon-coordinate\" src=\"images/transparent.png\" />";
            case 'Jam':
              return "<img class=\"icon-jam\" src=\"images/transparent.png\" />";
            case 'Recover':
              return "<img class=\"icon-recover\" src=\"images/transparent.png\" />";
            case 'Reinforce':
              return "<img class=\"icon-reinforce\" src=\"images/transparent.png\" />";
            case 'Cloak':
              return "<img class=\"icon-cloak\" src=\"images/transparent.png\" />";
            default:
              return "<span>&nbsp;" + action + "<span>";
          }
        })();
      }
      attackHTML = (((_ref1 = this.pilot.ship_override) != null ? _ref1.attack : void 0) != null) || (this.data.attack != null) ? $.trim("<img class=\"icon-attack\" src=\"images/transparent.png\" />\n<span class=\"info-data info-attack\">" + (statAndEffectiveStat((_ref2 = (_ref3 = this.pilot.ship_override) != null ? _ref3.attack : void 0) != null ? _ref2 : this.data.attack, effective_stats, 'attack')) + "</span>") : '';
      energyHTML = (((_ref4 = this.pilot.ship_override) != null ? _ref4.energy : void 0) != null) || (this.data.energy != null) ? $.trim("<img class=\"icon-energy\" src=\"images/transparent.png\" />\n<span class=\"info-data info-energy\">" + (statAndEffectiveStat((_ref5 = (_ref6 = this.pilot.ship_override) != null ? _ref6.energy : void 0) != null ? _ref5 : this.data.energy, effective_stats, 'energy')) + "</span>") : '';
      html = $.trim("<div class=\"fancy-pilot-header\">\n    <div class=\"pilot-header-text\">" + this.pilot.name + " / " + this.data.name + "</div>\n    <div class=\"mask\">\n        <div class=\"outer-circle\">\n            <div class=\"inner-circle pilot-points\">" + this.pilot.points + "</div>\n        </div>\n    </div>\n</div>\n<div class=\"fancy-pilot-stats\">\n    <div class=\"pilot-stats-content\">\n        <span class=\"info-data info-skill\">PS " + (statAndEffectiveStat(this.pilot.skill, effective_stats, 'skill')) + "</span>\n        " + attackHTML + "\n        " + energyHTML + "\n        <img class=\"icon-agility\" src=\"images/transparent.png\" />\n        <span class=\"info-data info-agility\">" + (statAndEffectiveStat((_ref7 = (_ref8 = this.pilot.ship_override) != null ? _ref8.agility : void 0) != null ? _ref7 : this.data.agility, effective_stats, 'agility')) + "</span>\n        <img class=\"icon-hull\" src=\"images/transparent.png\" />\n        <span class=\"info-data info-hull\">" + (statAndEffectiveStat((_ref9 = (_ref10 = this.pilot.ship_override) != null ? _ref10.hull : void 0) != null ? _ref9 : this.data.hull, effective_stats, 'hull')) + "</span>\n        <img class=\"icon-shields\" src=\"images/transparent.png\" />\n        <span class=\"info-data info-shields\">" + (statAndEffectiveStat((_ref11 = (_ref12 = this.pilot.ship_override) != null ? _ref12.shields : void 0) != null ? _ref11 : this.data.shields, effective_stats, 'shields')) + "</span>\n        &nbsp;\n        " + action_bar + "\n    </div>\n</div>");
      if (this.pilot.text) {
        html += $.trim("<div class=\"fancy-pilot-text\">" + this.pilot.text + "</div>");
      }
      slotted_upgrades = ((function() {
        var _j, _len1, _ref13, _results;
        _ref13 = this.upgrades;
        _results = [];
        for (_j = 0, _len1 = _ref13.length; _j < _len1; _j++) {
          upgrade = _ref13[_j];
          if (upgrade.data != null) {
            _results.push(upgrade);
          }
        }
        return _results;
      }).call(this)).concat((function() {
        var _j, _len1, _ref13, _results;
        _ref13 = this.modifications;
        _results = [];
        for (_j = 0, _len1 = _ref13.length; _j < _len1; _j++) {
          modification = _ref13[_j];
          if (modification.data != null) {
            _results.push(modification);
          }
        }
        return _results;
      }).call(this));
      if (((_ref13 = this.title) != null ? _ref13.data : void 0) != null) {
        slotted_upgrades.push(this.title);
      }
      if (slotted_upgrades.length > 0) {
        html += $.trim("<div class=\"fancy-upgrade-container\">");
        for (_j = 0, _len1 = slotted_upgrades.length; _j < _len1; _j++) {
          upgrade = slotted_upgrades[_j];
          html += upgrade.toHTML();
        }
        html += $.trim("</div>");
      }
      return "<div class=\"fancy-ship\">" + html + "</div>";
    };

    Ship.prototype.toTableRow = function() {
      var modification, slotted_upgrades, table_html, upgrade, _i, _len, _ref;
      table_html = $.trim("<tr class=\"simple-pilot\">\n    <td class=\"name\">" + this.pilot.name + " &mdash; " + this.data.name + "</td>\n    <td class=\"points\">" + this.pilot.points + "</td>\n</tr>");
      slotted_upgrades = ((function() {
        var _i, _len, _ref, _results;
        _ref = this.upgrades;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          upgrade = _ref[_i];
          if (upgrade.data != null) {
            _results.push(upgrade);
          }
        }
        return _results;
      }).call(this)).concat((function() {
        var _i, _len, _ref, _results;
        _ref = this.modifications;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          modification = _ref[_i];
          if (modification.data != null) {
            _results.push(modification);
          }
        }
        return _results;
      }).call(this));
      if (((_ref = this.title) != null ? _ref.data : void 0) != null) {
        slotted_upgrades.push(this.title);
      }
      if (slotted_upgrades.length > 0) {
        for (_i = 0, _len = slotted_upgrades.length; _i < _len; _i++) {
          upgrade = slotted_upgrades[_i];
          table_html += upgrade.toTableRow();
        }
      }
      table_html += '<tr><td>&nbsp;</td><td></td></tr>';
      return table_html;
    };

    Ship.prototype.toBBCode = function() {
      var bbcode, bbcode_upgrades, modification, slotted_upgrades, upgrade, upgrade_bbcode, _i, _len, _ref;
      bbcode = "[b]" + this.pilot.name + " (" + this.pilot.points + ")[/b]";
      slotted_upgrades = ((function() {
        var _i, _len, _ref, _results;
        _ref = this.upgrades;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          upgrade = _ref[_i];
          if (upgrade.data != null) {
            _results.push(upgrade);
          }
        }
        return _results;
      }).call(this)).concat((function() {
        var _i, _len, _ref, _results;
        _ref = this.modifications;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          modification = _ref[_i];
          if (modification.data != null) {
            _results.push(modification);
          }
        }
        return _results;
      }).call(this));
      if (((_ref = this.title) != null ? _ref.data : void 0) != null) {
        slotted_upgrades.push(this.title);
      }
      if (slotted_upgrades.length > 0) {
        bbcode += "\n";
        bbcode_upgrades = [];
        for (_i = 0, _len = slotted_upgrades.length; _i < _len; _i++) {
          upgrade = slotted_upgrades[_i];
          upgrade_bbcode = upgrade.toBBCode();
          if (upgrade_bbcode != null) {
            bbcode_upgrades.push(upgrade_bbcode);
          }
        }
        bbcode += bbcode_upgrades.join("\n");
      }
      return bbcode;
    };

    Ship.prototype.toSerialized = function() {
      var addon, conferredAddonsList, conferred_addons, i, upgrade, upgrades, _i, _len, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
      conferred_addons = (_ref = (_ref1 = this.title) != null ? _ref1.conferredAddons : void 0) != null ? _ref : [];
      upgrades = "" + ((function() {
        var _i, _len, _ref2, _ref3, _ref4, _results;
        _ref2 = this.upgrades;
        _results = [];
        for (i = _i = 0, _len = _ref2.length; _i < _len; i = ++_i) {
          upgrade = _ref2[i];
          if (__indexOf.call(conferred_addons, upgrade) < 0) {
            _results.push((_ref3 = upgrade != null ? (_ref4 = upgrade.data) != null ? _ref4.id : void 0 : void 0) != null ? _ref3 : -1);
          }
        }
        return _results;
      }).call(this));
      conferredAddonsList = [];
      if (((_ref2 = this.title) != null ? _ref2.conferredAddons : void 0) && this.title.conferredAddons.length > 0) {
        _ref3 = this.title.conferredAddons;
        for (_i = 0, _len = _ref3.length; _i < _len; _i++) {
          addon = _ref3[_i];
          conferredAddonsList.push(addon.toSerialized());
        }
      }
      return [this.pilot.id, upgrades, (_ref4 = (_ref5 = this.title) != null ? (_ref6 = _ref5.data) != null ? _ref6.id : void 0 : void 0) != null ? _ref4 : -1, (_ref7 = (_ref8 = this.modifications[0]) != null ? (_ref9 = _ref8.data) != null ? _ref9.id : void 0 : void 0) != null ? _ref7 : -1, conferredAddonsList.join(',')].join(':');
    };

    Ship.prototype.fromSerialized = function(version, serialized) {
      var addon_cls, addon_id, addon_type_serialized, conferred_addon, conferredaddon_pair, conferredaddon_pairs, i, modification_id, pilot_id, title_conferred_upgrade_ids, title_id, upgrade_id, upgrade_ids, _i, _j, _k, _l, _len, _len1, _len2, _len3, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6;
      switch (version) {
        case 1:
          _ref = serialized.split(':'), pilot_id = _ref[0], upgrade_ids = _ref[1], title_id = _ref[2], title_conferred_upgrade_ids = _ref[3], modification_id = _ref[4];
          this.setPilotById(parseInt(pilot_id));
          _ref1 = upgrade_ids.split(',');
          for (i = _i = 0, _len = _ref1.length; _i < _len; i = ++_i) {
            upgrade_id = _ref1[i];
            upgrade_id = parseInt(upgrade_id);
            if (upgrade_id >= 0) {
              this.upgrades[i].setById(upgrade_id);
            }
          }
          title_id = parseInt(title_id);
          if (title_id >= 0) {
            this.title.setById(title_id);
          }
          if ((this.title != null) && this.title.conferredAddons.length > 0) {
            _ref2 = title_conferred_upgrade_ids.split(',');
            for (i = _j = 0, _len1 = _ref2.length; _j < _len1; i = ++_j) {
              upgrade_id = _ref2[i];
              upgrade_id = parseInt(upgrade_id);
              if (upgrade_id >= 0) {
                this.title.conferredAddons[i].setById(upgrade_id);
              }
            }
          }
          modification_id = parseInt(modification_id);
          if (modification_id >= 0) {
            this.modifications[0].setById(modification_id);
          }
          break;
        case 2:
          _ref3 = serialized.split(':'), pilot_id = _ref3[0], upgrade_ids = _ref3[1], title_id = _ref3[2], modification_id = _ref3[3], conferredaddon_pairs = _ref3[4];
          this.setPilotById(parseInt(pilot_id));
          _ref4 = upgrade_ids.split(',');
          for (i = _k = 0, _len2 = _ref4.length; _k < _len2; i = ++_k) {
            upgrade_id = _ref4[i];
            upgrade_id = parseInt(upgrade_id);
            if (upgrade_id >= 0) {
              this.upgrades[i].setById(upgrade_id);
            }
          }
          title_id = parseInt(title_id);
          if (title_id >= 0) {
            this.title.setById(title_id);
          }
          modification_id = parseInt(modification_id);
          if (modification_id >= 0) {
            this.modifications[0].setById(modification_id);
          }
          if ((this.title != null) && this.title.conferredAddons.length > 0) {
            _ref5 = conferredaddon_pairs.split(',');
            for (i = _l = 0, _len3 = _ref5.length; _l < _len3; i = ++_l) {
              conferredaddon_pair = _ref5[i];
              _ref6 = conferredaddon_pair.split('.'), addon_type_serialized = _ref6[0], addon_id = _ref6[1];
              addon_id = parseInt(addon_id);
              addon_cls = SERIALIZATION_CODE_TO_CLASS[addon_type_serialized];
              conferred_addon = this.title.conferredAddons[i];
              if (conferred_addon instanceof addon_cls) {
                conferred_addon.setById(addon_id);
              } else {
                throw "Expected addon class " + addon_cls.constructor.name + " for conferred addon at index " + i + " but " + conferred_addon.constructor.name + " is there";
              }
            }
          }
      }
      return this.updateSelections();
    };

    Ship.prototype.effectiveStats = function() {
      var modification, stats, upgrade, _i, _j, _len, _len1, _ref, _ref1, _ref10, _ref11, _ref12, _ref13, _ref14, _ref15, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
      stats = {
        skill: this.pilot.skill,
        attack: (_ref = (_ref1 = this.pilot.ship_override) != null ? _ref1.attack : void 0) != null ? _ref : this.data.attack,
        energy: (_ref2 = (_ref3 = this.pilot.ship_override) != null ? _ref3.energy : void 0) != null ? _ref2 : this.data.energy,
        agility: (_ref4 = (_ref5 = this.pilot.ship_override) != null ? _ref5.agility : void 0) != null ? _ref4 : this.data.agility,
        hull: (_ref6 = (_ref7 = this.pilot.ship_override) != null ? _ref7.hull : void 0) != null ? _ref6 : this.data.hull,
        shields: (_ref8 = (_ref9 = this.pilot.ship_override) != null ? _ref9.shields : void 0) != null ? _ref8 : this.data.shields,
        actions: this.data.actions.slice(0)
      };
      _ref10 = this.upgrades;
      for (_i = 0, _len = _ref10.length; _i < _len; _i++) {
        upgrade = _ref10[_i];
        if ((upgrade != null ? (_ref11 = upgrade.data) != null ? _ref11.modifier_func : void 0 : void 0) != null) {
          upgrade.data.modifier_func(stats);
        }
      }
      if (((_ref12 = this.title) != null ? (_ref13 = _ref12.data) != null ? _ref13.modifier_func : void 0 : void 0) != null) {
        this.title.data.modifier_func(stats);
      }
      _ref14 = this.modifications;
      for (_j = 0, _len1 = _ref14.length; _j < _len1; _j++) {
        modification = _ref14[_j];
        if ((modification != null ? (_ref15 = modification.data) != null ? _ref15.modifier_func : void 0 : void 0) != null) {
          modification.data.modifier_func(stats);
        }
      }
      return stats;
    };

    Ship.prototype.validate = function() {
      var i, max_checks, modification, upgrade, valid, _i, _j, _k, _len, _len1, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8;
      max_checks = 32;
      for (i = _i = 0; 0 <= max_checks ? _i <= max_checks : _i >= max_checks; i = 0 <= max_checks ? ++_i : --_i) {
        valid = true;
        _ref = this.upgrades;
        for (_j = 0, _len = _ref.length; _j < _len; _j++) {
          upgrade = _ref[_j];
          if (((upgrade != null ? (_ref1 = upgrade.data) != null ? _ref1.restriction_func : void 0 : void 0) != null) && !(upgrade != null ? (_ref2 = upgrade.data) != null ? _ref2.restriction_func(this) : void 0 : void 0)) {
            upgrade.setById(null);
            valid = false;
            break;
          }
        }
        if ((((_ref3 = this.title) != null ? (_ref4 = _ref3.data) != null ? _ref4.restriction_func : void 0 : void 0) != null) && !((_ref5 = this.title) != null ? (_ref6 = _ref5.data) != null ? _ref6.restriction_func(this) : void 0 : void 0)) {
          this.title.setById(null);
          continue;
        }
        _ref7 = this.modifications;
        for (_k = 0, _len1 = _ref7.length; _k < _len1; _k++) {
          modification = _ref7[_k];
          if (((modification != null ? (_ref8 = modification.data) != null ? _ref8.restriction_func : void 0 : void 0) != null) && !modification.data.restriction_func(this)) {
            modification.setById(null);
            valid = false;
            break;
          }
        }
        if (valid) {
          break;
        }
      }
      return this.updateSelections();
    };

    return Ship;

  })();

  GenericAddon = (function() {
    function GenericAddon(args) {
      this.ship = args.ship;
      this.container = $(args.container);
      this.data = null;
      this.conferredAddons = [];
      this.serialization_code = 'X';
      this.type = null;
      this.dataByName = null;
      this.dataById = null;
    }

    GenericAddon.prototype.destroy = function() {
      var args, cb, ___iced_passed_deferral, __iced_deferrals, __iced_k;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      cb = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      (function(_this) {
        return (function(__iced_k) {
          var _ref;
          if (((_ref = _this.data) != null ? _ref.unique : void 0) != null) {
            (function(__iced_k) {
              __iced_deferrals = new iced.Deferrals(__iced_k, {
                parent: ___iced_passed_deferral,
                filename: "coffeescripts/xwing.coffee",
                funcname: "GenericAddon.destroy"
              });
              _this.ship.builder.container.trigger('xwing:releaseUnique', [
                _this.data, _this.type, __iced_deferrals.defer({
                  lineno: 1601
                })
              ]);
              __iced_deferrals._fulfill();
            })(__iced_k);
          } else {
            return __iced_k();
          }
        });
      })(this)((function(_this) {
        return function() {
          _this.selector.select2('destroy');
          return cb(args);
        };
      })(this));
    };

    GenericAddon.prototype.setupSelector = function(args) {
      this.selector = $(document.createElement('INPUT'));
      this.selector.attr('type', 'hidden');
      this.container.append(this.selector);
      if ($.isMobile()) {
        args.minimumResultsForSearch = -1;
      }
      this.selector.select2(args);
      this.selector.on('change', (function(_this) {
        return function(e) {
          _this.setById(_this.selector.select2('val'));
          _this.ship.builder.current_squad.dirty = true;
          _this.ship.builder.container.trigger('xwing-backend:squadDirtinessChanged');
          return _this.ship.builder.backend_status.fadeOut('slow');
        };
      })(this));
      this.selector.data('select2').results.on('mousemove-filtered', (function(_this) {
        return function(e) {
          var select2_data;
          select2_data = $(e.target).closest('.select2-result-selectable').data('select2-data');
          if ((select2_data != null ? select2_data.id : void 0) != null) {
            return _this.ship.builder.showTooltip('Addon', _this.dataById[select2_data.id]);
          }
        };
      })(this));
      return this.selector.data('select2').container.on('mouseover', (function(_this) {
        return function(e) {
          if (_this.data != null) {
            return _this.ship.builder.showTooltip('Addon', _this.data);
          }
        };
      })(this));
    };

    GenericAddon.prototype.setById = function(id) {
      return this.setData(this.dataById[parseInt(id)]);
    };

    GenericAddon.prototype.setByName = function(name) {
      return this.setData(this.dataByName[$.trim(name)]);
    };

    GenericAddon.prototype.setData = function(new_data) {
      var ___iced_passed_deferral, __iced_deferrals, __iced_k;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      if (new_data !== this.data) {
        (function(_this) {
          return (function(__iced_k) {
            var _ref;
            if (((_ref = _this.data) != null ? _ref.unique : void 0) != null) {
              (function(__iced_k) {
                __iced_deferrals = new iced.Deferrals(__iced_k, {
                  parent: ___iced_passed_deferral,
                  filename: "coffeescripts/xwing.coffee",
                  funcname: "GenericAddon.setData"
                });
                _this.ship.builder.container.trigger('xwing:releaseUnique', [
                  _this.data, _this.type, __iced_deferrals.defer({
                    lineno: 1631
                  })
                ]);
                __iced_deferrals._fulfill();
              })(__iced_k);
            } else {
              return __iced_k();
            }
          });
        })(this)((function(_this) {
          return function() {
            _this.rescindAddons();
            (function(__iced_k) {
              if ((new_data != null ? new_data.unique : void 0) != null) {
                (function(__iced_k) {
                  __iced_deferrals = new iced.Deferrals(__iced_k, {
                    parent: ___iced_passed_deferral,
                    filename: "coffeescripts/xwing.coffee",
                    funcname: "GenericAddon.setData"
                  });
                  _this.ship.builder.container.trigger('xwing:claimUnique', [
                    new_data, _this.type, __iced_deferrals.defer({
                      lineno: 1634
                    })
                  ]);
                  __iced_deferrals._fulfill();
                })(__iced_k);
              } else {
                return __iced_k();
              }
            })(function() {
              _this.data = new_data;
              _this.ship.builder.container.trigger('xwing:pointsUpdated');
              return __iced_k(_this.conferAddons());
            });
          };
        })(this));
      } else {
        return __iced_k();
      }
    };

    GenericAddon.prototype.conferAddons = function() {
      var addon, args, cls, _i, _len, _ref, _ref1, _results;
      if ((((_ref = this.data) != null ? _ref.confersAddons : void 0) != null) && this.data.confersAddons.length > 0) {
        _ref1 = this.data.confersAddons;
        _results = [];
        for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
          addon = _ref1[_i];
          cls = addon.type;
          args = {
            ship: this.ship,
            container: this.container
          };
          if (addon.slot != null) {
            args.slot = addon.slot;
          }
          addon = new cls(args);
          if (addon instanceof exportObj.Upgrade) {
            this.ship.upgrades.push(addon);
          } else if (addon instanceof exportObj.Modification) {
            this.ship.modifications.push(addon);
          } else {
            throw "Unexpected addon type for addon " + addon;
          }
          _results.push(this.conferredAddons.push(addon));
        }
        return _results;
      }
    };

    GenericAddon.prototype.rescindAddons = function() {
      var addon, ___iced_passed_deferral, __iced_deferrals, __iced_k;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      (function(_this) {
        return (function(__iced_k) {
          var _i, _len, _ref;
          __iced_deferrals = new iced.Deferrals(__iced_k, {
            parent: ___iced_passed_deferral,
            filename: "coffeescripts/xwing.coffee",
            funcname: "GenericAddon.rescindAddons"
          });
          _ref = _this.conferredAddons;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            addon = _ref[_i];
            addon.destroy(__iced_deferrals.defer({
              lineno: 1659
            }));
          }
          __iced_deferrals._fulfill();
        });
      })(this)((function(_this) {
        return function() {
          var _i, _len, _ref;
          _ref = _this.conferredAddons;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            addon = _ref[_i];
            if (addon instanceof exportObj.Upgrade) {
              _this.ship.upgrades.removeItem(addon);
            } else if (addon instanceof exportObj.Modification) {
              _this.ship.modifications.removeItem(addon);
            } else {
              throw "Unexpected addon type for addon " + addon;
            }
          }
          return _this.conferredAddons = [];
        };
      })(this));
    };

    GenericAddon.prototype.getPoints = function() {
      var _ref, _ref1;
      return (_ref = (_ref1 = this.data) != null ? _ref1.points : void 0) != null ? _ref : 0;
    };

    GenericAddon.prototype.updateSelection = function() {
      if (this.data != null) {
        return this.selector.select2('data', {
          id: this.data.id,
          text: "" + this.data.name + " (" + this.data.points + ")"
        });
      } else {
        return this.selector.select2('data', null);
      }
    };

    GenericAddon.prototype.toString = function() {
      if (this.data != null) {
        return "" + this.data.name + " (" + this.data.points + ")";
      } else {
        return "No " + this.type;
      }
    };

    GenericAddon.prototype.toHTML = function() {
      if (this.data != null) {
        return $.trim("<div class=\"upgrade-container\">\n    <div class=\"mask\">\n        <div class=\"outer-circle\">\n            <div class=\"inner-circle upgrade-points\">" + this.data.points + "</div>\n        </div>\n    </div>\n    <div class=\"upgrade-name\">" + this.data.name + "</div>\n</div>");
      } else {
        return '';
      }
    };

    GenericAddon.prototype.toTableRow = function() {
      if (this.data != null) {
        return $.trim("<tr class=\"simple-addon\">\n    <td class=\"name\">" + this.data.name + "</td>\n    <td class=\"points\">" + this.data.points + "</td>\n</tr>");
      } else {
        return '';
      }
    };

    GenericAddon.prototype.toBBCode = function() {
      if (this.data != null) {
        return "[i]" + this.data.name + " (" + this.data.points + ")[/i]";
      } else {
        return null;
      }
    };

    GenericAddon.prototype.toSerialized = function() {
      var _ref, _ref1;
      return "" + this.serialization_code + "." + ((_ref = (_ref1 = this.data) != null ? _ref1.id : void 0) != null ? _ref : -1);
    };

    return GenericAddon;

  })();

  exportObj.Upgrade = (function(_super) {
    __extends(Upgrade, _super);

    function Upgrade(args) {
      Upgrade.__super__.constructor.call(this, args);
      this.slot = args.slot;
      this.type = 'Upgrade';
      this.dataById = exportObj.upgradesById;
      this.dataByName = exportObj.upgrades;
      this.serialization_code = 'U';
      this.setupSelector();
    }

    Upgrade.prototype.setupSelector = function() {
      return Upgrade.__super__.setupSelector.call(this, {
        width: '50%',
        placeholder: exportObj.translate(this.ship.builder.language, 'ui', 'upgradePlaceholder', this.slot),
        allowClear: true,
        query: (function(_this) {
          return function(query) {
            return query.callback({
              more: false,
              results: _this.ship.builder.getAvailableUpgradesIncluding(_this.slot, _this.data, _this.ship, query.term)
            });
          };
        })(this)
      });
    };

    return Upgrade;

  })(GenericAddon);

  exportObj.Modification = (function(_super) {
    __extends(Modification, _super);

    function Modification(args) {
      Modification.__super__.constructor.call(this, args);
      this.type = 'Modification';
      this.dataById = exportObj.modificationsById;
      this.dataByName = exportObj.modifications;
      this.serialization_code = 'M';
      this.setupSelector();
    }

    Modification.prototype.setupSelector = function() {
      return Modification.__super__.setupSelector.call(this, {
        width: '50%',
        placeholder: exportObj.translate(this.ship.builder.language, 'ui', 'modificationPlaceholder'),
        allowClear: true,
        query: (function(_this) {
          return function(query) {
            return query.callback({
              more: false,
              results: _this.ship.builder.getAvailableModificationsIncluding(_this.data, _this.ship, query.term)
            });
          };
        })(this)
      });
    };

    return Modification;

  })(GenericAddon);

  exportObj.Title = (function(_super) {
    __extends(Title, _super);

    function Title(args) {
      Title.__super__.constructor.call(this, args);
      this.type = 'Title';
      this.dataById = exportObj.titlesById;
      this.dataByName = exportObj.titles;
      this.serialization_code = 'T';
      this.setupSelector();
    }

    Title.prototype.setupSelector = function() {
      return Title.__super__.setupSelector.call(this, {
        width: '50%',
        placeholder: exportObj.translate(this.ship.builder.language, 'ui', 'titlePlaceholder'),
        allowClear: true,
        query: (function(_this) {
          return function(query) {
            return query.callback({
              more: false,
              results: _this.ship.builder.getAvailableTitlesIncluding(_this.ship, _this.data, query.term)
            });
          };
        })(this)
      });
    };

    return Title;

  })(GenericAddon);

  SERIALIZATION_CODE_TO_CLASS = {
    'M': exportObj.Modification,
    'T': exportObj.Title,
    'U': exportObj.Upgrade
  };

}).call(this);

//@ sourceMappingURL=xwing.map