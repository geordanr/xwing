(function() {
  var ModificationSelector, PilotRow, TitleSelector, UpgradeSelector, exportObj,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.sortHelper = function(a, b) {
    var a_name, b_name;
    if (a.points === b.points) {
      a_name = a.name.replace(/[^a-z0-9]/ig, '');
      b_name = b.name.replace(/[^a-z0-9]/ig, '');
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

  exportObj.getParameterByName = function(name) {
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

  $.isMobile = function() {
    return navigator.userAgent.match(/(iPhone|iPod|iPad|Android)/i);
  };

  exportObj.SquadBuilder = (function() {

    function SquadBuilder(args) {
      var button_cell, permalink_cell,
        _this = this;
      this.container = $(args.container);
      this.faction = args.faction;
      this.pilot_tooltip = $(args.pilot_tooltip);
      this.upgrade_tooltip = $(args.upgrade_tooltip);
      this.list_modal = $(args.list_modal);
      this.rows = [];
      this.pilots = [];
      this.unique_upgrades = [];
      this.titles = [];
      this.pilot_tooltip.hide();
      this.upgrade_tooltip.hide();
      this.status_row = $(document.createElement('DIV'));
      this.status_row.addClass('row');
      this.container.append(this.status_row);
      this.points_cell = $(document.createElement('DIV'));
      this.points_cell.addClass('three columns total-points');
      this.points_cell.text('Points: 0');
      this.status_row.append(this.points_cell);
      permalink_cell = $(document.createElement('DIV'));
      permalink_cell.addClass('three columns permalink');
      this.status_row.append(permalink_cell);
      this.permalink = $(document.createElement('A'));
      this.permalink.text('Permalink');
      this.permalink.attr('href', '#');
      permalink_cell.append(this.permalink);
      this.button_row = $(document.createElement('DIV'));
      this.button_row.addClass('row');
      this.container.append(this.button_row);
      button_cell = $(document.createElement('DIV'));
      button_cell.addClass('twelve columns');
      this.button_row.append(button_cell);
      this.view_list_button = $(document.createElement('BUTTON'));
      this.view_list_button.addClass('nice radius button');
      this.view_list_button.text('View list as text');
      this.view_list_button.click(function(e) {
        e.preventDefault();
        return _this.list_modal.reveal();
      });
      button_cell.append(this.view_list_button);
      this.view_list_button.hide();
      $(window).bind('xwing:pilotChanged', function(e, triggering_row) {
        var row, _i, _len, _ref;
        _this.pilots = (function() {
          var _i, _len, _ref, _results;
          _ref = this.rows;
          _results = [];
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            row = _ref[_i];
            if ((row.name != null) && row.name !== '') _results.push(row.name);
          }
          return _results;
        }).call(_this);
        _ref = _this.rows;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          row = _ref[_i];
          if (row !== triggering_row) row.update();
        }
        _this.updatePoints();
        _this.pilot_tooltip.hide();
        if (_this.rows.length === _this.pilots.length) {
          _this.rows.push(new PilotRow(_this));
        }
        _this.updatePermalink();
        if (_this.pilots.length > 0) {
          return _this.view_list_button.show();
        } else {
          return _this.view_list_button.hide();
        }
      });
      $(window).bind('xwing:upgradeChanged', function(e, triggering_selector) {
        var row, upgrade_selector, _i, _j, _k, _l, _len, _len1, _len2, _len3, _ref, _ref1, _ref2, _ref3, _ref4;
        _this.unique_upgrades = [];
        _ref = _this.rows;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          row = _ref[_i];
          row.update();
          _ref1 = row.upgrade_selectors;
          for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
            upgrade_selector = _ref1[_j];
            if (((_ref2 = upgrade_selector.upgrade) != null ? _ref2.unique : void 0) != null) {
              _this.unique_upgrades.push(upgrade_selector.upgrade_name);
            }
          }
        }
        _ref3 = _this.rows;
        for (_k = 0, _len2 = _ref3.length; _k < _len2; _k++) {
          row = _ref3[_k];
          _ref4 = row.upgrade_selectors;
          for (_l = 0, _len3 = _ref4.length; _l < _len3; _l++) {
            upgrade_selector = _ref4[_l];
            if (upgrade_selector !== triggering_selector) {
              upgrade_selector.update();
            }
          }
        }
        _this.updatePoints();
        _this.upgrade_tooltip.hide();
        return _this.updatePermalink();
      });
      $(window).bind('xwing:modificationChanged', function(e, triggering_selector) {
        _this.updatePoints();
        _this.upgrade_tooltip.hide();
        return _this.updatePermalink();
      });
      $(window).bind('xwing:titleChanged', function(e, triggering_selector) {
        var i, row, _i, _j, _len, _len1, _ref, _ref1;
        _this.titles = [];
        _ref = _this.rows;
        for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
          row = _ref[i];
          if (row.title_selector != null) {
            _this.titles.push(row.title_selector.title_name);
          }
        }
        _ref1 = _this.rows;
        for (i = _j = 0, _len1 = _ref1.length; _j < _len1; i = ++_j) {
          row = _ref1[i];
          if (row.title_selector != null) row.title_selector.update();
        }
        _this.updatePoints();
        _this.upgrade_tooltip.hide();
        return _this.updatePermalink();
      });
      this.rows.push(new PilotRow(this));
      if (exportObj.getParameterByName('f') === this.faction) {
        this.loadFromSerialized(exportObj.getParameterByName('d'));
      }
    }

    SquadBuilder.prototype.updatePoints = function() {
      var pilot_points, row, row_points, selector, total, upgrade_points, _i, _j, _len, _len1, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7;
      total = 0;
      _ref = this.rows;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        row = _ref[_i];
        row_points = 0;
        if ((row.name != null) && row.name !== '') {
          pilot_points = parseInt(row.pilot.points);
          row_points += pilot_points;
          _ref1 = row.upgrade_selectors;
          for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
            selector = _ref1[_j];
            upgrade_points = parseInt((_ref2 = (_ref3 = exportObj.upgrades[selector.upgrade_name]) != null ? _ref3.points : void 0) != null ? _ref2 : 0);
            row_points += upgrade_points;
          }
          row_points += parseInt((_ref4 = (_ref5 = exportObj.modifications[row.modification_selector.modification_name]) != null ? _ref5.points : void 0) != null ? _ref4 : 0);
          row_points += parseInt((_ref6 = (_ref7 = exportObj.titles[row.title_selector.title_name]) != null ? _ref7.points : void 0) != null ? _ref6 : 0);
          if (row_points !== pilot_points) {
            row.pilot_points_li.text("Total: " + row_points);
            row.pilot_points_li.show();
          } else {
            row.pilot_points_li.hide();
          }
          total += row_points;
        }
        row.pilot_points_cell.text(row_points);
      }
      this.points_cell.text("Points: " + total);
      return this.list_modal.find('span.total').text(total);
    };

    SquadBuilder.prototype.updatePermalink = function() {
      return this.permalink.attr('href', "" + (window.location.href.split('?')[0]) + "?f=" + (encodeURI(this.faction)) + "&d=" + (encodeURI(this.serialize())));
    };

    SquadBuilder.prototype.getAvailablePilots = function() {
      var pilot_data, pilot_name, ship_data, ship_name, ships, _ref, _ref1, _results;
      ships = (function() {
        var _ref, _results;
        _ref = exportObj.ships;
        _results = [];
        for (ship_name in _ref) {
          ship_data = _ref[ship_name];
          if (ship_data.faction === this.faction) _results.push(ship_name);
        }
        return _results;
      }).call(this);
      _ref = exportObj.pilots;
      _results = [];
      for (pilot_name in _ref) {
        pilot_data = _ref[pilot_name];
        if ((_ref1 = pilot_data.ship, __indexOf.call(ships, _ref1) >= 0) && ((pilot_data.unique == null) || __indexOf.call(this.pilots, pilot_name) < 0) && __indexOf.call(this.unique_upgrades, pilot_name) < 0) {
          _results.push({
            name: pilot_name,
            points: pilot_data.points,
            ship: pilot_data.ship
          });
        }
      }
      return _results;
    };

    SquadBuilder.prototype.getAvailableUpgrades = function(slot, current_pilot) {
      var upgrade_data, upgrade_name;
      return ((function() {
        var _ref, _results;
        _ref = exportObj.upgrades;
        _results = [];
        for (upgrade_name in _ref) {
          upgrade_data = _ref[upgrade_name];
          if (upgrade_data.slot === slot && __indexOf.call(this.unique_upgrades, upgrade_name) < 0 && __indexOf.call(this.pilots, upgrade_name) < 0 && ((upgrade_data.faction == null) || upgrade_data.faction === this.faction) && upgrade_name !== current_pilot) {
            _results.push({
              name: upgrade_name,
              points: upgrade_data.points
            });
          }
        }
        return _results;
      }).call(this)).sort(exportObj.sortHelper);
    };

    SquadBuilder.prototype.getAvailableTitles = function(current_ship) {
      var title_data, title_name, _ref, _results;
      _ref = exportObj.titles;
      _results = [];
      for (title_name in _ref) {
        title_data = _ref[title_name];
        if (title_data.ship === current_ship && __indexOf.call(this.titles, title_name) < 0) {
          _results.push({
            name: title_name,
            points: title_data.points
          });
        }
      }
      return _results;
    };

    SquadBuilder.prototype.showPilotInfo = function(elem, pilot_name, pilot_data, ship) {
      var reference_pos, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8;
      if ((pilot_name != null) && pilot_name !== '') {
        this.pilot_tooltip.find('.ship td').text(pilot_data.ship);
        this.pilot_tooltip.find('.flavortext').text((_ref = pilot_data.text) != null ? _ref : '');
        this.pilot_tooltip.find('.skill td').text(pilot_data.skill);
        this.pilot_tooltip.find('.attack td').text((_ref1 = (_ref2 = pilot_data.ship_override) != null ? _ref2.attack : void 0) != null ? _ref1 : ship.attack);
        this.pilot_tooltip.find('.agility td').text((_ref3 = (_ref4 = pilot_data.ship_override) != null ? _ref4.agility : void 0) != null ? _ref3 : ship.agility);
        this.pilot_tooltip.find('.hull td').text((_ref5 = (_ref6 = pilot_data.ship_override) != null ? _ref6.hull : void 0) != null ? _ref5 : ship.hull);
        this.pilot_tooltip.find('.shields td').text((_ref7 = (_ref8 = pilot_data.ship_override) != null ? _ref8.shields : void 0) != null ? _ref7 : ship.shields);
        this.pilot_tooltip.find('.actions td').text(ship.actions.join(', '));
        reference_pos = $(elem).offset();
        this.pilot_tooltip.css('width', parseInt($(elem).css('width')) + 'px');
        this.pilot_tooltip.css('top', reference_pos.top + parseInt($(elem).css('height')) + 'px');
        this.pilot_tooltip.css('left', reference_pos.left + 'px');
        return this.pilot_tooltip.show();
      }
    };

    SquadBuilder.prototype.showUpgradeInfo = function(elem, upgrade_name, upgrade_data) {
      var reference_pos;
      if ((upgrade_name != null) && upgrade_name !== '') {
        $('table.weapon-stats').hide();
        if (upgrade_data.attack != null) {
          this.upgrade_tooltip.find('tr.attack').show();
          this.upgrade_tooltip.find('tr.attack td').text(upgrade_data.attack);
          $('table.weapon-stats').show();
        } else {
          this.upgrade_tooltip.find('tr.attack').hide();
        }
        if (upgrade_data.range != null) {
          this.upgrade_tooltip.find('tr.range').show();
          this.upgrade_tooltip.find('tr.range td').text(upgrade_data.range);
          $('table.weapon-stats').show();
        } else {
          this.upgrade_tooltip.find('tr.range').hide();
        }
        this.upgrade_tooltip.find('.flavortext').text(upgrade_data.text);
        reference_pos = $(elem).offset();
        this.upgrade_tooltip.css('width', parseInt($(elem).css('width')) + 'px');
        this.upgrade_tooltip.css('top', reference_pos.top + parseInt($(elem).css('height')) + 'px');
        this.upgrade_tooltip.css('left', reference_pos.left + 'px');
        return this.upgrade_tooltip.show();
      }
    };

    SquadBuilder.prototype.serialize = function() {
      var row, selector;
      return ((function() {
        var _i, _len, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _results;
        _ref = this.rows;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          row = _ref[_i];
          if ((row.name != null) && row.name !== '') {
            _results.push("" + row.pilot.id + ":" + (((function() {
              var _j, _len1, _ref1, _ref2, _ref3, _results1;
              _ref1 = row.upgrade_selectors;
              _results1 = [];
              for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
                selector = _ref1[_j];
                _results1.push((_ref2 = (_ref3 = selector.upgrade) != null ? _ref3.id : void 0) != null ? _ref2 : -1);
              }
              return _results1;
            })()).join(',')) + ":" + ((_ref1 = (_ref2 = row.modification_selector.modification) != null ? _ref2.id : void 0) != null ? _ref1 : -1) + ":" + ((_ref3 = (_ref4 = row.title_selector) != null ? (_ref5 = _ref4.title) != null ? _ref5.id : void 0 : void 0) != null ? _ref3 : -1));
          }
        }
        return _results;
      }).call(this)).join(';');
    };

    SquadBuilder.prototype.loadFromSerialized = function(serialized) {
      var row, _i, _len, _ref, _results,
        _this = this;
      _ref = this.rows;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        row = _ref[_i];
        _results.push(row.destroy(function() {
          var i, modification_data, modification_id, modification_name, new_pilot_row, pilot_data, pilot_id, pilot_name, pilot_str, selector, title_data, title_id, title_name, upgrade_data, upgrade_id, upgrade_list, upgrade_name, _j, _k, _len1, _len2, _ref1, _ref2, _ref3;
          if (_this.rows.length === 1) {
            _ref1 = serialized.split(';');
            for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
              pilot_str = _ref1[_j];
              _ref2 = pilot_str.split(':'), pilot_id = _ref2[0], upgrade_list = _ref2[1], modification_id = _ref2[2], title_id = _ref2[3];
              pilot_id = parseInt(pilot_id);
              new_pilot_row = new PilotRow(_this);
              new_pilot_row.pilot_selector.val(((function() {
                var _ref3, _results1;
                _ref3 = exportObj.pilots;
                _results1 = [];
                for (pilot_name in _ref3) {
                  pilot_data = _ref3[pilot_name];
                  if (parseInt(pilot_data.id) === pilot_id) {
                    _results1.push(pilot_name);
                  }
                }
                return _results1;
              })())[0]);
              new_pilot_row.pilot_selector.change();
              _ref3 = upgrade_list.split(',');
              for (i = _k = 0, _len2 = _ref3.length; _k < _len2; i = ++_k) {
                upgrade_id = _ref3[i];
                upgrade_id = parseInt(upgrade_id);
                if (upgrade_id >= 0) {
                  selector = new_pilot_row.upgrade_selectors[i];
                  selector.selector.val((function() {
                    var _ref4, _results1;
                    _ref4 = exportObj.upgrades;
                    _results1 = [];
                    for (upgrade_name in _ref4) {
                      upgrade_data = _ref4[upgrade_name];
                      if (parseInt(upgrade_data.id) === upgrade_id) {
                        _results1.push(upgrade_name);
                      }
                    }
                    return _results1;
                  })());
                  selector.selector.change();
                }
              }
              modification_id = parseInt(modification_id);
              if (modification_id >= 0) {
                selector = new_pilot_row.modification_selector;
                selector.selector.val((function() {
                  var _ref4, _results1;
                  _ref4 = exportObj.modifications;
                  _results1 = [];
                  for (modification_name in _ref4) {
                    modification_data = _ref4[modification_name];
                    if (parseInt(modification_data.id) === modification_id) {
                      _results1.push(modification_name);
                    }
                  }
                  return _results1;
                })());
                selector.selector.change();
              }
              console.log("Titles was " + _this.titles);
              title_id = parseInt(title_id);
              if (title_id >= 0) {
                selector = new_pilot_row.title_selector;
                selector.selector.val((function() {
                  var _ref4, _results1;
                  _ref4 = exportObj.titles;
                  _results1 = [];
                  for (title_name in _ref4) {
                    title_data = _ref4[title_name];
                    if (parseInt(title_data.id) === title_id) {
                      _results1.push(title_name);
                    }
                  }
                  return _results1;
                })());
                selector.selector.change();
              }
              console.log("Titles now " + _this.titles);
              _this.rows.push(new_pilot_row);
            }
            $('select').trigger('liszt:updated');
          }
          return _this.rows[0].destroy(function() {
            return $(window).trigger('xwing:titleChanged');
          });
        }));
      }
      return _results;
    };

    return SquadBuilder;

  })();

  PilotRow = (function() {

    function PilotRow(builder) {
      var opt,
        _this = this;
      this.builder = builder;
      this.name = null;
      this.pilot = null;
      this.ship = null;
      this.upgrade_selectors = [];
      this.row = $(document.createElement('DIV'));
      this.row.addClass('row pilot');
      this.builder.button_row.before(this.row);
      this.pilot_cell = $(document.createElement('DIV'));
      this.pilot_cell.addClass('four columns');
      this.row.append(this.pilot_cell);
      this.pilot_selector = $(document.createElement('SELECT'));
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text('Select a pilot');
        opt.val('');
        opt.attr('disabled', true);
      }
      this.pilot_selector.append(opt);
      this.pilot_selector.addClass('pilot');
      this.pilot_selector.attr('data-placeholder', 'Select a pilot');
      this.pilot_selector.change(function(e) {
        var cls, shipbg_class, slot, _i, _j, _len, _len1, _ref, _ref1;
        _this.upgrade_cell.text('');
        _this.upgrade_selectors = [];
        _this.list_ul.find('li').remove();
        _this.name = _this.pilot_selector.val();
        _ref = _this.row.attr('class').split(' ');
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          cls = _ref[_i];
          if (cls.indexOf('ship-') === 0) _this.row.removeClass(cls);
        }
        if (_this.name === '') {
          _this.destroy();
        } else {
          _this.pilot = exportObj.pilots[_this.name];
          _this.ship = exportObj.ships[_this.pilot.ship];
          _ref1 = _this.pilot.slots;
          for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
            slot = _ref1[_j];
            _this.upgrade_selectors.push(new UpgradeSelector(_this, slot, _this.upgrade_cell));
          }
          _this.modification_selector = new ModificationSelector(_this, _this.upgrade_cell);
          _this.title_selector = new TitleSelector(_this, _this.upgrade_cell);
          shipbg_class = (function() {
            switch (this.pilot.ship) {
              case 'X-Wing':
                return "xwing1";
              case 'Y-Wing':
                return "ywing0";
              case 'A-Wing':
                return "awing0";
              case 'TIE Fighter':
                return "tiefighter0";
              case 'TIE Advanced':
                return "tieadvanced0";
              case 'TIE Interceptor':
                return "tieinterceptor0";
              default:
                return null;
            }
          }).call(_this);
          if (shipbg_class != null) _this.row.addClass("ship-" + shipbg_class);
          _this.remove_cell.fadeIn('fast');
          _this.list_dd.text("" + _this.name + " (" + _this.pilot.points + ")");
          _this.pilot_points_cell.show();
        }
        return $(window).trigger('xwing:pilotChanged', _this);
      });
      this.pilot_cell.append(this.pilot_selector);
      if (!$.isMobile()) {
        this.pilot_selector.chosen({
          search_contains: true
        });
      }
      $("#" + (this.pilot_selector.attr('id')) + "_chzn a.chzn-single").mouseover(function(e) {
        return _this.builder.showPilotInfo($(e.delegateTarget), _this.name, _this.pilot, _this.ship);
      });
      $("#" + (this.pilot_selector.attr('id')) + "_chzn a.chzn-single").mouseleave(function(e) {
        return _this.builder.pilot_tooltip.hide();
      });
      $("#" + (this.pilot_selector.attr('id')) + "_chzn a.chzn-single").click(function(e) {
        return _this.builder.pilot_tooltip.hide();
      });
      this.pilot_points_cell = $(document.createElement('DIV'));
      this.pilot_points_cell.addClass('one column points');
      this.row.append(this.pilot_points_cell);
      this.pilot_points_cell.hide();
      this.upgrade_cell = $(document.createElement('DIV'));
      this.upgrade_cell.addClass('six columns upgrades');
      this.row.append(this.upgrade_cell);
      this.remove_cell = $(document.createElement('DIV'));
      this.remove_cell.addClass('one column');
      this.remove_cell.append("<a class=\"small alert radius button remove\">&#215;</span>");
      this.remove_cell.click(function(e) {
        e.preventDefault();
        return _this.destroy();
      });
      this.row.append(this.remove_cell);
      this.remove_cell.hide();
      this.list_dd = $(document.createElement('DD'));
      this.builder.list_modal.find('dl').append(this.list_dd);
      this.list_dt = $(document.createElement('DT'));
      this.builder.list_modal.find('dl').append(this.list_dt);
      this.list_ul = $(document.createElement('UL'));
      this.list_dt.append(this.list_ul);
      this.pilot_points_li = $(document.createElement('SPAN'));
      this.pilot_points_li.addClass('points');
      this.list_ul.append(this.pilot_points_li);
      this.pilot_points_li.hide();
      this.update();
    }

    PilotRow.prototype.update = function() {
      var available_pilots, opt, optgroup, option, pilot, pilots, pilots_by_ship, ship, upgrade_selector, _i, _j, _k, _l, _len, _len1, _len2, _len3, _ref, _ref1, _ref2, _results;
      available_pilots = this.builder.getAvailablePilots();
      if (this.pilot && (this.pilot.unique != null)) {
        available_pilots.push({
          name: this.name,
          points: this.pilot.points,
          ship: this.pilot.ship
        });
      }
      pilots_by_ship = {};
      for (_i = 0, _len = available_pilots.length; _i < _len; _i++) {
        pilot = available_pilots[_i];
        if (!(pilot.ship in pilots_by_ship)) pilots_by_ship[pilot.ship] = [];
        pilots_by_ship[pilot.ship].push(pilot);
      }
      for (ship in pilots_by_ship) {
        pilots = pilots_by_ship[ship];
        pilots.sort(exportObj.sortHelper);
      }
      this.pilot_selector.text('');
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text("Select a pilot");
        opt.val('');
        opt.attr('disabled', true);
      }
      this.pilot_selector.append(opt);
      _ref = Object.keys(pilots_by_ship).sort();
      for (_j = 0, _len1 = _ref.length; _j < _len1; _j++) {
        ship = _ref[_j];
        optgroup = $(document.createElement('OPTGROUP'));
        optgroup.attr('label', ship);
        this.pilot_selector.append(optgroup);
        _ref1 = pilots_by_ship[ship];
        for (_k = 0, _len2 = _ref1.length; _k < _len2; _k++) {
          pilot = _ref1[_k];
          option = $(document.createElement('OPTION'));
          option.text("" + pilot.name + " (" + pilot.points + ")");
          option.val(pilot.name);
          optgroup.append(option);
        }
      }
      this.pilot_selector.val(this.name);
      this.pilot_selector.trigger('liszt:updated');
      _ref2 = this.upgrade_selectors;
      _results = [];
      for (_l = 0, _len3 = _ref2.length; _l < _len3; _l++) {
        upgrade_selector = _ref2[_l];
        _results.push(upgrade_selector.update());
      }
      return _results;
    };

    PilotRow.prototype.destroy = function(callback) {
      var _this = this;
      if (callback == null) callback = $.noop;
      return this.row.slideUp('fast', function() {
        _this.row.remove();
        _this.list_dd.remove();
        _this.list_dt.remove();
        _this.list_ul.remove();
        _this.builder.rows.splice(_this.builder.rows.indexOf(_this), 1);
        $(window).trigger('xwing:pilotChanged', null);
        $(window).trigger('xwing:upgradeChanged', null);
        return callback();
      });
    };

    return PilotRow;

  })();

  UpgradeSelector = (function() {

    function UpgradeSelector(row, slot, container) {
      var opt,
        _this = this;
      this.row = row;
      this.builder = this.row.builder;
      this.slot = slot;
      this.upgrade_name = null;
      this.upgrade = null;
      this.selector = $(document.createElement('SELECT'));
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text("No " + this.slot + " Upgrade");
        opt.val('');
      }
      this.selector.append(opt);
      this.selector.addClass('upgrade');
      this.selector.attr('data-placeholder', "Select " + this.slot + " Upgrade");
      this.selector.change(function(e) {
        _this.upgrade_name = _this.selector.val();
        _this.upgrade = exportObj.upgrades[_this.selector.val()];
        if ((_this.upgrade_name != null) && _this.upgrade_name !== '') {
          _this.list_li.show();
          _this.list_li.text("" + _this.upgrade_name + " (" + _this.upgrade.points + ")");
        } else {
          _this.list_li.hide();
        }
        return $(window).trigger('xwing:upgradeChanged', _this.selector);
      });
      container.append(this.selector);
      if (!$.isMobile()) {
        this.selector.chosen({
          search_contains: true,
          allow_single_deselect: true,
          disable_search_threshold: 8
        });
      }
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").mouseover(function(e) {
        return _this.builder.showUpgradeInfo($(e.delegateTarget), _this.upgrade_name, _this.upgrade);
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").mouseleave(function(e) {
        return _this.builder.upgrade_tooltip.hide();
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").click(function(e) {
        return _this.builder.upgrade_tooltip.hide();
      });
      this.list_li = $(document.createElement('LI'));
      this.row.pilot_points_li.before(this.list_li);
      this.list_li.hide();
      this.update();
    }

    UpgradeSelector.prototype.update = function() {
      var available_upgrades, opt, option, upgrade, _i, _len;
      available_upgrades = this.builder.getAvailableUpgrades(this.slot, this.row.name);
      if (this.upgrade && (this.upgrade.unique != null)) {
        available_upgrades.push({
          name: this.upgrade_name,
          points: this.upgrade.points
        });
      }
      available_upgrades.sort(exportObj.sortHelper);
      this.selector.text('');
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text("No " + this.slot + " Upgrade");
        opt.val('');
      }
      this.selector.append(opt);
      for (_i = 0, _len = available_upgrades.length; _i < _len; _i++) {
        upgrade = available_upgrades[_i];
        option = $(document.createElement('OPTION'));
        option.text("" + upgrade.name + " (" + upgrade.points + ")");
        option.val(upgrade.name);
        this.selector.append(option);
      }
      this.selector.val(this.upgrade_name);
      return this.selector.trigger('liszt:updated');
    };

    return UpgradeSelector;

  })();

  ModificationSelector = (function() {

    function ModificationSelector(row, container) {
      var opt,
        _this = this;
      this.row = row;
      this.builder = row.builder;
      this.modification_name = null;
      this.modification = null;
      this.selector = $(document.createElement('SELECT'));
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text("No " + this.slot + " Upgrade");
        opt.val('');
      }
      this.selector.append(opt);
      this.selector.addClass('modification');
      this.selector.attr('data-placeholder', "Select Modification");
      this.selector.change(function(e) {
        _this.modification_name = _this.selector.val();
        _this.modification = exportObj.modifications[_this.selector.val()];
        if ((_this.modification_name != null) && _this.modification_name !== '') {
          _this.list_li.show();
          _this.list_li.text("" + _this.modification_name + " (" + _this.modification.points + ")");
        } else {
          _this.list_li.hide();
        }
        return $(window).trigger('xwing:modificationChanged', _this.selector);
      });
      container.append(this.selector);
      if (!$.isMobile()) {
        this.selector.chosen({
          search_contains: true,
          allow_single_deselect: true,
          disable_search_threshold: 8
        });
      }
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").mouseover(function(e) {
        return _this.builder.showUpgradeInfo($(e.delegateTarget), _this.modification_name, _this.modification);
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").mouseleave(function(e) {
        return _this.builder.upgrade_tooltip.hide();
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").click(function(e) {
        return _this.builder.upgrade_tooltip.hide();
      });
      this.list_li = $(document.createElement('LI'));
      this.row.pilot_points_li.before(this.list_li);
      this.list_li.hide();
      this.update();
    }

    ModificationSelector.prototype.update = function() {
      var available_modifications, modification, modification_data, modification_name, opt, option, _i, _len;
      available_modifications = (function() {
        var _ref, _results;
        _ref = exportObj.modifications;
        _results = [];
        for (modification_name in _ref) {
          modification_data = _ref[modification_name];
          _results.push({
            name: modification_name,
            points: modification_data.points
          });
        }
        return _results;
      })();
      available_modifications.sort(exportObj.sortHelper);
      this.selector.text('');
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text("No modification");
        opt.val('');
      }
      this.selector.append(opt);
      for (_i = 0, _len = available_modifications.length; _i < _len; _i++) {
        modification = available_modifications[_i];
        option = $(document.createElement('OPTION'));
        option.text("" + modification.name + " (" + modification.points + ")");
        option.val(modification.name);
        this.selector.append(option);
      }
      this.selector.val(this.modification_name);
      return this.selector.trigger('liszt:updated');
    };

    return ModificationSelector;

  })();

  TitleSelector = (function() {

    function TitleSelector(row, container) {
      var opt,
        _this = this;
      this.row = row;
      this.builder = row.builder;
      this.title_name = null;
      this.title = null;
      this.selector = $(document.createElement('SELECT'));
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text("No " + this.slot + " Upgrade");
        opt.val('');
      }
      this.selector.append(opt);
      this.selector.addClass('title');
      this.selector.attr('data-placeholder', "Select Title");
      this.selector.change(function(e) {
        _this.title_name = _this.selector.val();
        _this.title = exportObj.titles[_this.selector.val()];
        if ((_this.title_name != null) && _this.title_name !== '') {
          _this.list_li.show();
          _this.list_li.text("" + _this.title_name + " (" + _this.title.points + ")");
        } else {
          _this.list_li.hide();
        }
        return $(window).trigger('xwing:titleChanged', _this.selector);
      });
      container.append(this.selector);
      if (!$.isMobile()) {
        this.selector.chosen({
          search_contains: true,
          allow_single_deselect: true,
          disable_search_threshold: 8
        });
      }
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").mouseover(function(e) {
        return _this.builder.showUpgradeInfo($(e.delegateTarget), _this.title_name, _this.title);
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").mouseleave(function(e) {
        return _this.builder.upgrade_tooltip.hide();
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").click(function(e) {
        return _this.builder.upgrade_tooltip.hide();
      });
      this.list_li = $(document.createElement('LI'));
      this.row.pilot_points_li.before(this.list_li);
      this.list_li.hide();
      this.update();
    }

    TitleSelector.prototype.update = function() {
      var available_titles, opt, option, title, _i, _len;
      available_titles = this.builder.getAvailableTitles(this.row.pilot.ship);
      if (this.title != null) {
        available_titles.push({
          name: this.title_name,
          points: this.title.points
        });
      }
      available_titles.sort(exportObj.sortHelper);
      if (available_titles.length > 0) {
        this.selector.data('chosen').container.show();
      } else {
        this.selector.data('chosen').container.hide();
      }
      this.selector.text('');
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text("No title");
        opt.val('');
      }
      this.selector.append(opt);
      for (_i = 0, _len = available_titles.length; _i < _len; _i++) {
        title = available_titles[_i];
        option = $(document.createElement('OPTION'));
        option.text("" + title.name + " (" + title.points + ")");
        option.val(title.name);
        this.selector.append(option);
      }
      this.selector.val(this.title_name);
      return this.selector.trigger('liszt:updated');
    };

    return TitleSelector;

  })();

}).call(this);
