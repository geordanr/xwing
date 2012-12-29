
/*
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
*/


(function() {
  var GenericAddon, Modification, Ship, Title, Upgrade, exportObj,
    __slice = [].slice,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; },
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

  exportObj.SquadBuilder = (function() {

    function SquadBuilder(args) {
      this.releaseUnique = __bind(this.releaseUnique, this);
      this.claimUnique = __bind(this.claimUnique, this);
      this.onPointsUpdated = __bind(this.onPointsUpdated, this);      this.container = $(args.container);
      this.faction = $.trim(args.faction);
      this.ships = [];
      this.uniques_in_use = {
        Pilot: [],
        Upgrade: [],
        Modification: [],
        Title: []
      };
      this.loading_from_serialized = false;
      this.setupUI();
      this.setupEventHandlers();
      if ($.getParameterByName('f') === this.faction) {
        this.loadFromSerialized($.getParameterByName('d'));
      } else {
        this.addShip();
      }
    }

    SquadBuilder.prototype.setupUI = function() {
      var content_container;
      this.status_container = $(document.createElement('DIV'));
      this.status_container.addClass('container-fluid');
      this.status_container.append($.trim('<div class="span4 points-display-container">Total Points: 0</div>\n<div class="span4 offset4 permalink-container"><a href="#">Permalink</a></div>'));
      this.container.append(this.status_container);
      this.points_container = $(this.status_container.find('div.points-display-container'));
      this.permalink = $(this.status_container.find('div.permalink-container a'));
      content_container = $(document.createElement('DIV'));
      content_container.addClass('container-fluid');
      this.container.append(content_container);
      content_container.append($.trim("<div class=\"row-fluid\">\n    <div class=\"span10 ship-container\" />\n    <div class=\"span2 hidden-phone info-container\" />\n</div>"));
      this.ship_container = $(content_container.find('div.ship-container'));
      this.info_container = $(content_container.find('div.info-container'));
      this.info_container.append($.trim("<table>\n    <tbody>\n        <tr class=\"info-name\">\n            <td>Name</td>\n            <td class=\"info-data\"></td>\n        </tr>\n        <tr class=\"info-ship\">\n            <td>Ship</td>\n            <td class=\"info-data\"></td>\n        </tr>\n        <tr class=\"info-skill\">\n            <td>Skill</td>\n            <td class=\"info-data info-skill\"></td>\n        </tr>\n        <tr class=\"info-attack\">\n            <td>Attack</td>\n            <td class=\"info-data info-attack\"></td>\n        </tr>\n        <tr class=\"info-agility\">\n            <td>Agility</td>\n            <td class=\"info-data info-agility\"></td>\n        </tr>\n        <tr class=\"info-hull\">\n            <td>Hull</td>\n            <td class=\"info-data info-hull\"></td>\n        </tr>\n        <tr class=\"info-shields info-shields\">\n            <td>Shields</td>\n            <td class=\"info-data\"></td>\n        </tr>\n        <tr class=\"info-actions\">\n            <td>Actions</td>\n            <td class=\"info-data\"></td>\n        </tr>\n    </tbody>\n</table>\n<p class=\"info-text\" />"));
      this.info_container.hide();
      this.button_container = $(document.createElement('DIV'));
      this.button_container.addClass('container-fluid');
      this.container.append(this.button_container);
      this.button_container.append($.trim('<button class="btn">View as Text</button>'));
      this.view_list_button = $(this.button_container.find('button'));
      this.list_modal = $(document.createElement('DIV'));
      this.list_modal.addClass('modal hide fade');
      $(document).append(this.list_modal);
      this.list_modal.append($.trim("<div class=\"modal-header\">\n    <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\n    <h3>" + this.faction + ": <span class=\"total-points\">0</span> Points </h3>\n</div>\n<div class=\"modal-body\">\n    <ul></ul>\n</div>\n<div class=\"modal-footer\">\n    <button class=\"btn\" data-dismiss=\"modal\" aria-hidden=\"true\">Close</button>\n</div>"));
      this.text_ul = $(this.list_modal.find('div.modal-body ul'));
      return this.text_total_points_container = $(this.list_modal.find('div.modal-header span.total-points'));
    };

    SquadBuilder.prototype.setupEventHandlers = function() {
      var _this = this;
      this.container.on('xwing:claimUnique', function(e, unique, type, cb) {
        return _this.claimUnique(unique, type, cb);
      }).on('xwing:releaseUnique', function(e, unique, type, cb) {
        return _this.releaseUnique(unique, type, cb);
      }).on('xwing:pointsUpdated', function(e, cb) {
        if (cb == null) cb = $.noop;
        return _this.onPointsUpdated(cb);
      });
      return this.view_list_button.click(function(e) {
        e.preventDefault();
        return _this.showTextListModal();
      });
    };

    SquadBuilder.prototype.onPointsUpdated = function(cb) {
      var i, ship, total_points, _i, _len, _ref;
      total_points = 0;
      _ref = this.ships;
      for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
        ship = _ref[i];
        total_points += ship.getPoints();
      }
      this.points_container.text("Total Points: " + total_points);
      this.text_total_points_container.text(total_points);
      this.permalink.attr('href', "" + (window.location.href.split('?')[0]) + "?f=" + (encodeURI(this.faction)) + "&d=" + (encodeURI(this.serialize())));
      return cb(total_points);
    };

    SquadBuilder.prototype.showTextListModal = function() {
      var addon_list, ship, total_points, upgrade, _i, _j, _len, _len1, _ref, _ref1, _ref2;
      this.text_ul.text('');
      _ref = this.ships;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        ship = _ref[_i];
        if (ship.pilot != null) {
          if (ship.getPoints() !== ship.pilot.points) {
            addon_list = '<ul>';
            if (ship.title != null) {
              addon_list += "<li>" + (ship.title.toString()) + "</li>";
            }
            _ref1 = ship.upgrades;
            for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
              upgrade = _ref1[_j];
              if (upgrade.data != null) {
                addon_list += "<li>" + (upgrade.toString()) + "</li>";
              }
            }
            if (((_ref2 = ship.modification) != null ? _ref2.data : void 0) != null) {
              addon_list += "<li>" + (ship.modification.toString()) + "</li>";
            }
            addon_list += '</ul>';
            total_points = "Total: " + (ship.getPoints());
          } else {
            total_points = '';
            addon_list = '';
          }
          this.text_ul.append($.trim("<li>\n    <strong>" + ship.pilot.name + " (" + ship.pilot.points + ")</strong>\n    <br />\n    " + addon_list + "\n    <em>" + total_points + "</em>\n</li>"));
        }
      }
      return this.list_modal.modal('show');
    };

    SquadBuilder.prototype.serialize = function() {
      var i, ship, slot, upgrade;
      return ((function() {
        var _i, _len, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6, _results;
        _ref = this.ships;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          ship = _ref[_i];
          if (ship.pilot != null) {
            _results.push("" + ship.pilot.id + ":" + ((function() {
              var _j, _len1, _ref1, _ref2, _ref3, _results1;
              _ref1 = ship.pilot.slots;
              _results1 = [];
              for (i = _j = 0, _len1 = _ref1.length; _j < _len1; i = ++_j) {
                slot = _ref1[i];
                _results1.push((_ref2 = (_ref3 = ship.upgrades[i].data) != null ? _ref3.id : void 0) != null ? _ref2 : -1);
              }
              return _results1;
            })()) + ":" + ((_ref1 = (_ref2 = ship.title) != null ? (_ref3 = _ref2.data) != null ? _ref3.id : void 0 : void 0) != null ? _ref1 : -1) + ":" + ((function() {
              var _j, _len1, _ref4, _ref5, _ref6, _ref7, _ref8, _results1;
              _ref6 = (_ref4 = (_ref5 = ship.title) != null ? _ref5.conferredUpgrades : void 0) != null ? _ref4 : [];
              _results1 = [];
              for (_j = 0, _len1 = _ref6.length; _j < _len1; _j++) {
                upgrade = _ref6[_j];
                _results1.push((_ref7 = (_ref8 = upgrade.data) != null ? _ref8.id : void 0) != null ? _ref7 : -1);
              }
              return _results1;
            })()) + ":" + ((_ref4 = (_ref5 = ship.modification) != null ? (_ref6 = _ref5.data) != null ? _ref6.id : void 0 : void 0) != null ? _ref4 : -1));
          }
        }
        return _results;
      }).call(this)).join(';');
    };

    SquadBuilder.prototype.loadFromSerialized = function(serialized) {
      var i, modification_id, new_ship, pilot_id, ship_str, title_conferred_upgrade_ids, title_id, upgrade_id, upgrade_ids, _i, _j, _k, _len, _len1, _len2, _ref, _ref1, _ref2, _ref3;
      this.loading_from_serialized = true;
      while (this.ships.length > 0) {
        this.removeShip(this.ships[0]);
      }
      if (this.ships.length > 0) throw "Ships not emptied";
      _ref = serialized.split(';');
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        ship_str = _ref[_i];
        _ref1 = ship_str.split(':'), pilot_id = _ref1[0], upgrade_ids = _ref1[1], title_id = _ref1[2], title_conferred_upgrade_ids = _ref1[3], modification_id = _ref1[4];
        new_ship = this.addShip();
        new_ship.setPilotById(parseInt(pilot_id));
        _ref2 = upgrade_ids.split(',');
        for (i = _j = 0, _len1 = _ref2.length; _j < _len1; i = ++_j) {
          upgrade_id = _ref2[i];
          upgrade_id = parseInt(upgrade_id);
          if (upgrade_id >= 0) new_ship.upgrades[i].setById(upgrade_id);
        }
        title_id = parseInt(title_id);
        if (title_id >= 0) new_ship.title.setById(title_id);
        if ((new_ship.title != null) && new_ship.title.conferredUpgrades.length > 0) {
          _ref3 = title_conferred_upgrade_ids.split(',');
          for (i = _k = 0, _len2 = _ref3.length; _k < _len2; i = ++_k) {
            upgrade_id = _ref3[i];
            upgrade_id = parseInt(upgrade_id);
            if (upgrade_id >= 0) {
              new_ship.title.conferredUpgrades[i].setById(upgrade_id);
            }
          }
        }
        modification_id = parseInt(modification_id);
        if (modification_id >= 0) new_ship.modification.setById(modification_id);
        new_ship.updateSelections();
      }
      this.loading_from_serialized = false;
      return this.addShip();
    };

    SquadBuilder.prototype.uniqueIndex = function(unique, type) {
      if (!(type in this.uniques_in_use)) {
        throw "Invalid unique type '" + type + "'";
      }
      return this.uniques_in_use[type].indexOf(unique);
    };

    SquadBuilder.prototype.claimUnique = function(unique, type, cb) {
      var crew, pilot;
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
        } else if (type === 'Upgrade' && unique.slot === 'Crew') {
          pilot = exportObj.pilots[unique.name];
          if ((pilot != null) && ((pilot != null ? pilot.unique : void 0) != null)) {
            if (this.uniqueIndex(pilot, 'Pilot') < 0) {
              this.uniques_in_use['Pilot'].push(pilot);
            } else {
              throw "Unique " + type + " '" + unique.name + "' already claimed as pilot";
            }
          }
        }
        this.uniques_in_use[type].push(unique);
      } else {
        throw "Unique " + type + " '" + unique.name + "' already claimed";
      }
      return cb();
    };

    SquadBuilder.prototype.releaseUnique = function(unique, type, cb) {
      var crew, idx, pilot;
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
        } else if (type === 'Upgrade' && unique.slot === 'Crew') {
          pilot = exportObj.pilots[unique.name];
          if ((pilot != null) && ((pilot != null ? pilot.unique : void 0) != null)) {
            idx = this.uniqueIndex(pilot, 'Pilot');
            if (idx < 0) {
              throw "Unique pilot accompanying " + unique.name + " was not also claimed!";
            }
            this.uniques_in_use['Pilot'].splice(idx, 1);
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
      var ___iced_passed_deferral, __iced_deferrals, __iced_k,
        _this = this;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      (function(__iced_k) {
        __iced_deferrals = new iced.Deferrals(__iced_k, {
          parent: ___iced_passed_deferral,
          funcname: "SquadBuilder.removeShip"
        });
        ship.destroy(__iced_deferrals.defer({
          lineno: 303
        }));
        __iced_deferrals._fulfill();
      })(function() {
        __iced_deferrals = new iced.Deferrals(__iced_k, {
          parent: ___iced_passed_deferral,
          funcname: "SquadBuilder.removeShip"
        });
        _this.container.trigger('xwing:pointsUpdated', __iced_deferrals.defer({
          lineno: 304
        }));
        __iced_deferrals._fulfill();
      });
    };

    SquadBuilder.prototype.matcher = function(item, term) {
      return item.toUpperCase().indexOf(term.toUpperCase()) >= 0;
    };

    SquadBuilder.prototype.getAvailablePilotsIncluding = function(include_pilot, term) {
      var pilot, pilot_name, result_pilot, result_pilots_by_ship, results, ship, unclaimed_faction_pilots, _i, _j, _len, _len1, _ref, _ref1;
      if (term == null) term = '';
      unclaimed_faction_pilots = (function() {
        var _ref, _results;
        _ref = exportObj.pilots;
        _results = [];
        for (pilot_name in _ref) {
          pilot = _ref[pilot_name];
          if (exportObj.ships[pilot.ship].faction === this.faction && this.matcher(pilot_name, term) && ((pilot.unique == null) || __indexOf.call(this.uniques_in_use['Pilot'], pilot) < 0)) {
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

    SquadBuilder.prototype.getAvailableUpgradesIncluding = function(slot, include_upgrade, term) {
      var unclaimed_upgrades, upgrade, upgrade_name;
      if (term == null) term = '';
      unclaimed_upgrades = (function() {
        var _ref, _results;
        _ref = exportObj.upgrades;
        _results = [];
        for (upgrade_name in _ref) {
          upgrade = _ref[upgrade_name];
          if (upgrade.slot === slot && this.matcher(upgrade_name, term) && ((upgrade.unique == null) || __indexOf.call(this.uniques_in_use['Upgrade'], upgrade) < 0) && ((upgrade.faction == null) || upgrade.faction === this.faction)) {
            _results.push(upgrade);
          }
        }
        return _results;
      }).call(this);
      if ((include_upgrade != null) && (include_upgrade.unique != null) && this.matcher(include_upgrade.name, term)) {
        unclaimed_upgrades.push(include_upgrade);
      }
      return ((function() {
        var _i, _len, _results;
        _results = [];
        for (_i = 0, _len = unclaimed_upgrades.length; _i < _len; _i++) {
          upgrade = unclaimed_upgrades[_i];
          _results.push({
            id: upgrade.id,
            text: "" + upgrade.name + " (" + upgrade.points + ")",
            points: upgrade.points
          });
        }
        return _results;
      })()).sort(exportObj.sortHelper);
    };

    SquadBuilder.prototype.getAvailableModificationsIncluding = function(include_modification, term) {
      var modification, modification_name, unclaimed_modifications;
      if (term == null) term = '';
      unclaimed_modifications = (function() {
        var _ref, _results;
        _ref = exportObj.modifications;
        _results = [];
        for (modification_name in _ref) {
          modification = _ref[modification_name];
          if (this.matcher(modification_name, term) && ((modification.unique == null) || __indexOf.call(this.uniques_in_use['Modification'], modification) < 0) && ((modification.faction == null) || modification.faction === this.faction)) {
            _results.push(modification);
          }
        }
        return _results;
      }).call(this);
      if ((include_modification != null) && (include_modification.unique != null) && this.matcher(include_modification.name, term)) {
        unclaimed_modifications.push(include_modification);
      }
      return ((function() {
        var _i, _len, _results;
        _results = [];
        for (_i = 0, _len = unclaimed_modifications.length; _i < _len; _i++) {
          modification = unclaimed_modifications[_i];
          _results.push({
            id: modification.id,
            text: "" + modification.name + " (" + modification.points + ")",
            points: modification.points
          });
        }
        return _results;
      })()).sort(exportObj.sortHelper);
    };

    SquadBuilder.prototype.getAvailableTitlesIncluding = function(ship_name, include_title, term) {
      var title, title_name, unclaimed_titles;
      if (term == null) term = '';
      unclaimed_titles = (function() {
        var _ref, _results;
        _ref = exportObj.titles;
        _results = [];
        for (title_name in _ref) {
          title = _ref[title_name];
          if (title.ship === ship_name && this.matcher(title_name, term) && __indexOf.call(this.uniques_in_use['Title'], title) < 0 && ((title.faction == null) || title.faction === this.faction)) {
            _results.push(title);
          }
        }
        return _results;
      }).call(this);
      if ((include_title != null) && this.matcher(include_title.name, term)) {
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
      switch (type) {
        case 'Pilot':
          this.info_container.find('tr.info-name td.info-data').text(data.name);
          this.info_container.find('tr.info-ship td.info-data').text(data.ship);
          this.info_container.find('tr.info-skill td.info-data').text(data.skill);
          this.info_container.find('tr.info-attack td.info-data').text(exportObj.ships[data.ship].attack);
          this.info_container.find('tr.info-agility td.info-data').text(exportObj.ships[data.ship].agility);
          this.info_container.find('tr.info-hull td.info-data').text(exportObj.ships[data.ship].hull);
          this.info_container.find('tr.info-shields td.info-data').text(exportObj.ships[data.ship].shields);
          this.info_container.find('tr.info-actions td.info-data').text(exportObj.ships[data.ship].actions);
          this.info_container.find('p.info-text').text(data.text);
      }
      return this.info_container.show();
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
      this.modification = null;
      this.title = null;
      this.setupUI();
    }

    Ship.prototype.destroy = function(cb) {
      var idx;
      this.resetPilot();
      this.resetAddons();
      this.teardownUI();
      idx = this.builder.ships.indexOf(this);
      if (idx < 0) throw "Ship not registered with builder";
      this.builder.ships.splice(idx, 1);
      return cb();
    };

    Ship.prototype.setPilotById = function(id) {
      return this.setPilot(exportObj.pilotsById[parseInt(id)]);
    };

    Ship.prototype.setPilotByName = function(name) {
      return this.setPilot(exportObj.pilots[$.trim(name)]);
    };

    Ship.prototype.setPilot = function(new_pilot) {
      var ___iced_passed_deferral, __iced_deferrals, __iced_k,
        _this = this;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      if (new_pilot !== this.pilot) {
        if (this.pilot == null) {
          if (!this.builder.loading_from_serialized) this.builder.addShip();
          this.remove_button.fadeIn('fast');
        }
        this.resetPilot();
        this.resetAddons();
        this.data = exportObj.ships[new_pilot != null ? new_pilot.ship : void 0];
        (function(__iced_k) {
          if ((new_pilot != null ? new_pilot.unique : void 0) != null) {
            (function(__iced_k) {
              __iced_deferrals = new iced.Deferrals(__iced_k, {
                parent: ___iced_passed_deferral,
                funcname: "Ship.setPilot"
              });
              _this.builder.container.trigger('xwing:claimUnique', [
                new_pilot, 'Pilot', __iced_deferrals.defer({
                  lineno: 406
                })
              ]);
              __iced_deferrals._fulfill();
            })(__iced_k);
          } else {
            return __iced_k();
          }
        })(function() {
          _this.pilot = new_pilot;
          if (_this.pilot != null) _this.setupAddons();
          return __iced_k(_this.builder.container.trigger('xwing:pointsUpdated'));
        });
      } else {
        return __iced_k();
      }
    };

    Ship.prototype.resetPilot = function() {
      var ___iced_passed_deferral, __iced_deferrals, __iced_k,
        _this = this;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      (function(__iced_k) {
        var _ref;
        if (((_ref = _this.pilot) != null ? _ref.unique : void 0) != null) {
          (function(__iced_k) {
            __iced_deferrals = new iced.Deferrals(__iced_k, {
              parent: ___iced_passed_deferral,
              funcname: "Ship.resetPilot"
            });
            _this.builder.container.trigger('xwing:releaseUnique', [
              _this.pilot, 'Pilot', __iced_deferrals.defer({
                lineno: 413
              })
            ]);
            __iced_deferrals._fulfill();
          })(__iced_k);
        } else {
          return __iced_k();
        }
      })(function() {
        return _this.pilot = null;
      });
    };

    Ship.prototype.setupAddons = function() {
      var slot, _i, _len, _ref, _ref1;
      _ref1 = (_ref = this.pilot.slots) != null ? _ref : [];
      for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
        slot = _ref1[_i];
        this.upgrades.push(new Upgrade({
          ship: this,
          container: this.addon_container,
          slot: slot
        }));
      }
      if (this.pilot.ship in exportObj.titlesByShip) {
        this.title = new Title({
          ship: this,
          container: this.addon_container
        });
      }
      return this.modification = new Modification({
        ship: this,
        container: this.addon_container
      });
    };

    Ship.prototype.resetAddons = function() {
      var i, upgrade, ___iced_passed_deferral, __iced_deferrals, __iced_k,
        _this = this;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      (function(__iced_k) {
        var _i, _len, _ref;
        __iced_deferrals = new iced.Deferrals(__iced_k, {
          parent: ___iced_passed_deferral,
          funcname: "Ship.resetAddons"
        });
        _ref = _this.upgrades;
        for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
          upgrade = _ref[i];
          upgrade.destroy(__iced_deferrals.defer({
            lineno: 436
          }));
        }
        if (_this.modification != null) {
          _this.modification.destroy(__iced_deferrals.defer({
            lineno: 437
          }));
        }
        if (_this.title != null) {
          _this.title.destroy(__iced_deferrals.defer({
            lineno: 438
          }));
        }
        __iced_deferrals._fulfill();
      })(function() {
        _this.upgrades = [];
        _this.modification = null;
        return _this.title = null;
      });
    };

    Ship.prototype.getPoints = function() {
      var points, upgrade, _i, _len, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6;
      points = ((_ref = (_ref1 = this.pilot) != null ? _ref1.points : void 0) != null ? _ref : 0) + ((_ref2 = (_ref3 = this.modification) != null ? _ref3.getPoints() : void 0) != null ? _ref2 : 0) + ((_ref4 = (_ref5 = this.title) != null ? _ref5.getPoints() : void 0) != null ? _ref4 : 0);
      _ref6 = this.upgrades;
      for (_i = 0, _len = _ref6.length; _i < _len; _i++) {
        upgrade = _ref6[_i];
        points += upgrade.getPoints();
      }
      this.points_container.text(points);
      if (this.pilot != null) this.points_container.show();
      return points;
    };

    Ship.prototype.updateSelections = function() {
      var upgrade, _i, _len, _ref;
      if (this.pilot != null) {
        this.pilot_selector.select2('data', {
          id: this.pilot.id,
          text: "" + this.pilot.name + " (" + this.pilot.points + ")"
        });
        _ref = this.upgrades;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          upgrade = _ref[_i];
          upgrade.updateSelection();
        }
        if (this.title != null) this.title.updateSelection();
        if (this.modification != null) return this.modification.updateSelection();
      } else {
        return this.pilot_selector.select2('data', null);
      }
    };

    Ship.prototype.setupUI = function() {
      var _this = this;
      this.row = $(document.createElement('DIV'));
      this.row.addClass('row-fluid');
      this.container.append(this.row);
      this.row.append($.trim('<div class="span4 pilot-selector-container">\n    <input type="hidden" />\n</div>\n<div class="span1 points-display-container" />\n<div class="span6 addon-container" />\n<div class="span1 remove-btn-container">\n    <button class="btn btn-danger">&times;</button>\n</div>'));
      this.pilot_selector = $(this.row.find('div.pilot-selector-container input[type=hidden]'));
      this.pilot_selector.select2({
        width: '100%',
        placeholder: 'Select a pilot',
        query: function(query) {
          return query.callback({
            more: false,
            results: _this.builder.getAvailablePilotsIncluding(_this.pilot, query.term)
          });
        }
      });
      this.pilot_selector.on('change', function(e) {
        return _this.setPilotById(_this.pilot_selector.select2('val'));
      });
      this.pilot_selector.data('select2').results.on('mousemove-filtered', function(e) {
        var select2_data;
        select2_data = $(e.target).closest('.select2-result-selectable').data('select2-data');
        if ((select2_data != null ? select2_data.id : void 0) != null) {
          return _this.builder.showTooltip('Pilot', exportObj.pilotsById[select2_data.id]);
        }
      });
      this.points_container = $(this.row.find('div.points-display-container'));
      this.points_container.hide();
      this.addon_container = $(this.row.find('div.addon-container'));
      this.remove_button = $(this.row.find('div.remove-btn-container button'));
      this.remove_button.click(function(e) {
        e.preventDefault();
        return _this.row.slideUp('fast', function() {
          return _this.builder.removeShip(_this);
        });
      });
      return this.remove_button.hide();
    };

    Ship.prototype.teardownUI = function() {
      this.row.text('');
      return this.row.remove();
    };

    return Ship;

  })();

  GenericAddon = (function() {

    function GenericAddon(args) {
      this.ship = args.ship;
      this.container = $(args.container);
      this.data = null;
      this.type = null;
      this.dataByName = null;
      this.dataById = null;
    }

    GenericAddon.prototype.destroy = function() {
      var args, cb, ___iced_passed_deferral, __iced_deferrals, __iced_k,
        _this = this;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      cb = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      (function(__iced_k) {
        var _ref;
        if (((_ref = _this.data) != null ? _ref.unique : void 0) != null) {
          (function(__iced_k) {
            __iced_deferrals = new iced.Deferrals(__iced_k, {
              parent: ___iced_passed_deferral,
              funcname: "GenericAddon.destroy"
            });
            _this.ship.builder.container.trigger('xwing:releaseUnique', [
              _this.data, _this.type, __iced_deferrals.defer({
                lineno: 526
              })
            ]);
            __iced_deferrals._fulfill();
          })(__iced_k);
        } else {
          return __iced_k();
        }
      })(function() {
        _this.selector.select2('destroy');
        return cb(args);
      });
    };

    GenericAddon.prototype.setupSelector = function(args) {
      var _this = this;
      this.selector = $(document.createElement('INPUT'));
      this.selector.attr('type', 'hidden');
      this.container.append(this.selector);
      this.selector.select2(args);
      return this.selector.on('change', function(e) {
        return _this.setById(_this.selector.select2('val'));
      });
    };

    GenericAddon.prototype.setById = function(id) {
      return this.setData(this.dataById[parseInt(id)]);
    };

    GenericAddon.prototype.setByName = function(name) {
      return this.setData(this.dataByName[$.trim(name)]);
    };

    GenericAddon.prototype.setData = function(new_data) {
      var ___iced_passed_deferral, __iced_deferrals, __iced_k,
        _this = this;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      if (new_data !== this.data) {
        (function(__iced_k) {
          var _ref;
          if (((_ref = _this.data) != null ? _ref.unique : void 0) != null) {
            (function(__iced_k) {
              __iced_deferrals = new iced.Deferrals(__iced_k, {
                parent: ___iced_passed_deferral,
                funcname: "GenericAddon.setData"
              });
              _this.ship.builder.container.trigger('xwing:releaseUnique', [
                _this.data, _this.type, __iced_deferrals.defer({
                  lineno: 547
                })
              ]);
              __iced_deferrals._fulfill();
            })(__iced_k);
          } else {
            return __iced_k();
          }
        })(function() {
          (function(__iced_k) {
            if ((new_data != null ? new_data.unique : void 0) != null) {
              (function(__iced_k) {
                __iced_deferrals = new iced.Deferrals(__iced_k, {
                  parent: ___iced_passed_deferral,
                  funcname: "GenericAddon.setData"
                });
                _this.ship.builder.container.trigger('xwing:claimUnique', [
                  new_data, _this.type, __iced_deferrals.defer({
                    lineno: 549
                  })
                ]);
                __iced_deferrals._fulfill();
              })(__iced_k);
            } else {
              return __iced_k();
            }
          })(function() {
            _this.data = new_data;
            return __iced_k(_this.ship.builder.container.trigger('xwing:pointsUpdated'));
          });
        });
      } else {
        return __iced_k();
      }
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

    return GenericAddon;

  })();

  Upgrade = (function(_super) {

    __extends(Upgrade, _super);

    function Upgrade(args) {
      Upgrade.__super__.constructor.call(this, args);
      this.slot = args.slot;
      this.type = 'Upgrade';
      this.dataById = exportObj.upgradesById;
      this.dataByName = exportObj.upgrades;
      this.setupSelector();
    }

    Upgrade.prototype.setupSelector = function() {
      var _this = this;
      return Upgrade.__super__.setupSelector.call(this, {
        width: '50%',
        placeholder: "No " + this.slot + " Upgrade",
        allowClear: true,
        query: function(query) {
          return query.callback({
            more: false,
            results: _this.ship.builder.getAvailableUpgradesIncluding(_this.slot, _this.data, query.term)
          });
        }
      });
    };

    return Upgrade;

  })(GenericAddon);

  Modification = (function(_super) {

    __extends(Modification, _super);

    function Modification(args) {
      Modification.__super__.constructor.call(this, args);
      this.type = 'Modification';
      this.dataById = exportObj.modificationsById;
      this.dataByName = exportObj.modifications;
      this.setupSelector();
    }

    Modification.prototype.setupSelector = function() {
      var _this = this;
      return Modification.__super__.setupSelector.call(this, {
        width: '50%',
        placeholder: "No Modification",
        allowClear: true,
        query: function(query) {
          return query.callback({
            more: false,
            results: _this.ship.builder.getAvailableModificationsIncluding(_this.data, query.term)
          });
        }
      });
    };

    return Modification;

  })(GenericAddon);

  Title = (function(_super) {

    __extends(Title, _super);

    function Title(args) {
      Title.__super__.constructor.call(this, args);
      this.type = 'Title';
      this.dataById = exportObj.titlesById;
      this.dataByName = exportObj.titles;
      this.conferredUpgrades = [];
      this.setupSelector();
    }

    Title.prototype.setData = function(new_data) {
      var idx, slot, upgrade, ___iced_passed_deferral, __iced_deferrals, __iced_k,
        _this = this;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      if (new_data !== this.data) {
        (function(__iced_k) {
          if (_this.data != null) {
            (function(__iced_k) {
              __iced_deferrals = new iced.Deferrals(__iced_k, {
                parent: ___iced_passed_deferral,
                funcname: "Title.setData"
              });
              _this.ship.builder.container.trigger('xwing:releaseUnique', [
                _this.data, 'Title', __iced_deferrals.defer({
                  lineno: 624
                })
              ]);
              __iced_deferrals._fulfill();
            })(function() {
              (function(__iced_k) {
                var _i, _len, _ref;
                __iced_deferrals = new iced.Deferrals(__iced_k, {
                  parent: ___iced_passed_deferral,
                  funcname: "Title.setData"
                });
                _ref = _this.conferredUpgrades;
                for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                  upgrade = _ref[_i];
                  upgrade.destroy(__iced_deferrals.defer({
                    lineno: 628
                  }));
                }
                __iced_deferrals._fulfill();
              })(function() {
                var _i, _len, _ref;
                _ref = _this.conferredUpgrades;
                for (_i = 0, _len = _ref.length; _i < _len; _i++) {
                  upgrade = _ref[_i];
                  idx = _this.ship.upgrades.indexOf(upgrade);
                  _this.ship.upgrades.splice(idx, 1);
                }
                return __iced_k(_this.conferredUpgrades = []);
              });
            });
          } else {
            return __iced_k();
          }
        })(function() {
          (function(__iced_k) {
            if (new_data != null) {
              (function(__iced_k) {
                __iced_deferrals = new iced.Deferrals(__iced_k, {
                  parent: ___iced_passed_deferral,
                  funcname: "Title.setData"
                });
                _this.ship.builder.container.trigger('xwing:claimUnique', [
                  new_data, 'Title', __iced_deferrals.defer({
                    lineno: 633
                  })
                ]);
                __iced_deferrals._fulfill();
              })(__iced_k);
            } else {
              return __iced_k();
            }
          })(function() {
            var _i, _len, _ref, _ref1;
            _this.data = new_data;
            _this.ship.builder.container.trigger('xwing:pointsUpdated');
            if ((((_ref = _this.data) != null ? _ref.slots : void 0) != null) && _this.data.slots.length > 0) {
              _ref1 = _this.data.slots;
              for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
                slot = _ref1[_i];
                upgrade = new Upgrade({
                  ship: _this.ship,
                  container: _this.container,
                  slot: slot
                });
                _this.ship.upgrades.push(upgrade);
                _this.conferredUpgrades.push(upgrade);
              }
            }
            return __iced_k();
          });
        });
      } else {
        return __iced_k();
      }
    };

    Title.prototype.setupSelector = function() {
      var _this = this;
      return Title.__super__.setupSelector.call(this, {
        width: '50%',
        placeholder: "No Title",
        allowClear: true,
        query: function(query) {
          return query.callback({
            more: false,
            results: _this.ship.builder.getAvailableTitlesIncluding(_this.ship.data.name, _this.data, query.term)
          });
        }
      });
    };

    return Title;

  })(GenericAddon);

}).call(this);
