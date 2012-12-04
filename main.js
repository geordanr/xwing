(function() {
  var PilotRow, UpgradeSelector, exportObj,
    __indexOf = Array.prototype.indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.sortHelper = function(a, b) {
    a = a.name.replace(/[^a-z0-9]/ig, '');
    b = b.name.replace(/[^a-z0-9]/ig, '');
    if (a === b) {
      return 0;
    } else {
      if (a > b) {
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

  exportObj.SquadBuilder = (function() {

    function SquadBuilder(args) {
      var add_pilot_button, button_cell, get_url_button,
        _this = this;
      this.container = $(args.container);
      this.faction = args.faction;
      this.pilot_tooltip = $(args.pilot_tooltip);
      this.upgrade_tooltip = $(args.upgrade_tooltip);
      this.url_modal = $(args.url_modal);
      this.rows = [];
      this.pilots = [];
      this.unique_upgrades = [];
      this.status_row = $(document.createElement('DIV'));
      this.status_row.addClass('row');
      this.container.append(this.status_row);
      this.points_cell = $(document.createElement('DIV'));
      this.points_cell.addClass('three columns total-points');
      this.points_cell.text('Points: 0');
      this.status_row.append(this.points_cell);
      this.button_row = $(document.createElement('DIV'));
      this.button_row.addClass('row');
      this.container.append(this.button_row);
      button_cell = $(document.createElement('DIV'));
      button_cell.addClass('twelve columns');
      this.button_row.append(button_cell);
      add_pilot_button = $(document.createElement('A'));
      add_pilot_button.addClass('radius button');
      add_pilot_button.text('Add Pilot');
      add_pilot_button.click(function(e) {
        e.preventDefault();
        return _this.rows.push(new PilotRow(_this));
      });
      button_cell.append(add_pilot_button);
      button_cell.append("&nbsp;");
      get_url_button = $(document.createElement('A'));
      get_url_button.addClass('radius button');
      get_url_button.text('Get Squad URL');
      get_url_button.click(function(e) {
        e.preventDefault();
        _this.url_modal.find('input').val("" + (window.location.href.split('?')[0]) + "?f=" + (encodeURI(_this.faction)) + "&d=" + (encodeURI(_this.serialize())));
        return _this.url_modal.reveal();
      });
      button_cell.append(get_url_button);
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
        return _this.pilot_tooltip.hide();
      });
      $(window).bind('xwing:upgradeChanged', function(e, triggering_selector) {
        var row, selector, upgrade, _i, _j, _k, _l, _len, _len2, _len3, _len4, _ref, _ref2, _ref3, _ref4;
        _this.unique_upgrades = [];
        _ref = _this.rows;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          row = _ref[_i];
          _ref2 = (function() {
            var _k, _len2, _ref2, _results;
            _ref2 = row.upgrade_selectors;
            _results = [];
            for (_k = 0, _len2 = _ref2.length; _k < _len2; _k++) {
              selector = _ref2[_k];
              _results.push(selector.upgrade);
            }
            return _results;
          })();
          for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
            upgrade = _ref2[_j];
            if ((upgrade != null ? upgrade.unique : void 0) != null) {
              _this.unique_upgrades.push(selector.upgrade_name);
            }
          }
        }
        _ref3 = _this.rows;
        for (_k = 0, _len3 = _ref3.length; _k < _len3; _k++) {
          row = _ref3[_k];
          _ref4 = row.upgrade_selectors;
          for (_l = 0, _len4 = _ref4.length; _l < _len4; _l++) {
            selector = _ref4[_l];
            if (selector !== triggering_selector) selector.update();
          }
        }
        _this.updatePoints();
        return _this.upgrade_tooltip.hide();
      });
      this.rows.push(new PilotRow(this));
      if (exportObj.getParameterByName('f') === this.faction) {
        this.loadFromSerialized(exportObj.getParameterByName('d'));
      }
    }

    SquadBuilder.prototype.updatePoints = function() {
      var pilot, row, selector, total, _i, _j, _k, _len, _len2, _len3, _ref, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7;
      total = 0;
      _ref = this.pilots;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        pilot = _ref[_i];
        total += parseInt((_ref2 = (_ref3 = exportObj.pilots[pilot]) != null ? _ref3.points : void 0) != null ? _ref2 : 0);
      }
      _ref4 = this.rows;
      for (_j = 0, _len2 = _ref4.length; _j < _len2; _j++) {
        row = _ref4[_j];
        _ref5 = row.upgrade_selectors;
        for (_k = 0, _len3 = _ref5.length; _k < _len3; _k++) {
          selector = _ref5[_k];
          total += parseInt((_ref6 = (_ref7 = exportObj.upgrades[selector.upgrade_name]) != null ? _ref7.points : void 0) != null ? _ref6 : 0);
        }
      }
      return this.points_cell.text("Points: " + total);
    };

    SquadBuilder.prototype.getAvailablePilots = function() {
      var pilot_data, pilot_name, ship_data, ship_name, ships, _ref, _ref2, _results;
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
        if ((_ref2 = pilot_data.ship, __indexOf.call(ships, _ref2) >= 0) && (!(pilot_data.unique != null) || __indexOf.call(this.pilots, pilot_name) < 0)) {
          _results.push({
            name: pilot_name,
            points: pilot_data.points
          });
        }
      }
      return _results;
    };

    SquadBuilder.prototype.getAvailableUpgrades = function(slot) {
      var upgrade_data, upgrade_name;
      return ((function() {
        var _ref, _results;
        _ref = exportObj.upgrades;
        _results = [];
        for (upgrade_name in _ref) {
          upgrade_data = _ref[upgrade_name];
          if (upgrade_data.slot === slot && __indexOf.call(this.unique_upgrades, upgrade_name) < 0) {
            _results.push({
              name: upgrade_name,
              points: upgrade_data.points
            });
          }
        }
        return _results;
      }).call(this)).sort(exportObj.sortHelper);
    };

    SquadBuilder.prototype.showPilotInfo = function(elem, pilot_name, pilot_data, ship) {
      var reference_pos, _ref;
      if ((pilot_name != null) && pilot_name !== '') {
        this.pilot_tooltip.find('.ship td').text(pilot_data.ship);
        this.pilot_tooltip.find('.flavortext').text((_ref = pilot_data.text) != null ? _ref : '');
        this.pilot_tooltip.find('.attack td').text(ship.attack);
        this.pilot_tooltip.find('.agility td').text(ship.agility);
        this.pilot_tooltip.find('.hull td').text(ship.hull);
        this.pilot_tooltip.find('.shields td').text(ship.shields);
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
        var _i, _len, _ref, _results;
        _ref = this.rows;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          row = _ref[_i];
          if ((row.name != null) && row.name !== '') {
            _results.push("" + row.pilot.id + ":" + (((function() {
              var _j, _len2, _ref2, _ref3, _ref4, _results2;
              _ref2 = row.upgrade_selectors;
              _results2 = [];
              for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
                selector = _ref2[_j];
                _results2.push((_ref3 = (_ref4 = selector.upgrade) != null ? _ref4.id : void 0) != null ? _ref3 : -1);
              }
              return _results2;
            })()).join(',')));
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
          var i, new_pilot_row, pilot_data, pilot_id, pilot_name, pilot_str, selector, upgrade_data, upgrade_id, upgrade_list, upgrade_name, _j, _len2, _len3, _ref2, _ref3, _ref4;
          if (_this.rows.length === 0) {
            _ref2 = serialized.split(';');
            for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
              pilot_str = _ref2[_j];
              _ref3 = pilot_str.split(':'), pilot_id = _ref3[0], upgrade_list = _ref3[1];
              pilot_id = parseInt(pilot_id);
              new_pilot_row = new PilotRow(_this);
              new_pilot_row.pilot_selector.val(((function() {
                var _ref4, _results2;
                _ref4 = exportObj.pilots;
                _results2 = [];
                for (pilot_name in _ref4) {
                  pilot_data = _ref4[pilot_name];
                  if (parseInt(pilot_data.id) === pilot_id) {
                    _results2.push(pilot_name);
                  }
                }
                return _results2;
              })())[0]);
              new_pilot_row.pilot_selector.change();
              _ref4 = upgrade_list.split(',');
              for (i = 0, _len3 = _ref4.length; i < _len3; i++) {
                upgrade_id = _ref4[i];
                upgrade_id = parseInt(upgrade_id);
                if (upgrade_id >= 0) {
                  selector = new_pilot_row.upgrade_selectors[i];
                  selector.selector.val((function() {
                    var _ref5, _results2;
                    _ref5 = exportObj.upgrades;
                    _results2 = [];
                    for (upgrade_name in _ref5) {
                      upgrade_data = _ref5[upgrade_name];
                      if (parseInt(upgrade_data.id) === upgrade_id) {
                        _results2.push(upgrade_name);
                      }
                    }
                    return _results2;
                  })());
                  selector.selector.change();
                }
              }
              _this.rows.push(new_pilot_row);
            }
            return $('select').trigger('liszt:updated');
          }
        }));
      }
      return _results;
    };

    return SquadBuilder;

  })();

  PilotRow = (function() {

    function PilotRow(builder) {
      var _this = this;
      this.builder = builder;
      this.name = null;
      this.pilot = null;
      this.ship = null;
      this.upgrade_selectors = [];
      this.row = $(document.createElement('DIV'));
      this.row.addClass('row pilot');
      this.row.insertBefore(this.builder.button_row);
      this.pilot_cell = $(document.createElement('DIV'));
      this.pilot_cell.addClass('four columns');
      this.row.append(this.pilot_cell);
      this.pilot_selector = $(document.createElement('SELECT'));
      this.pilot_selector.append($(document.createElement('OPTION')));
      this.pilot_selector.addClass('pilot');
      this.pilot_selector.attr('data-placeholder', 'Select a pilot');
      this.pilot_selector.change(function(e) {
        var cls, shipbg_class, slot, _i, _j, _len, _len2, _ref, _ref2;
        _this.upgrade_cell.text('');
        _this.upgrade_selectors = [];
        _this.name = _this.pilot_selector.val();
        _ref = _this.row.attr('class').split(' ');
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          cls = _ref[_i];
          if (cls.indexOf('ship-') === 0) _this.row.removeClass(cls);
        }
        if (_this.name === '') {
          _this.pilot = null;
          _this.ship = null;
        } else {
          _this.pilot = exportObj.pilots[_this.name];
          _this.ship = exportObj.ships[_this.pilot.ship];
          _ref2 = _this.pilot.slots;
          for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
            slot = _ref2[_j];
            _this.upgrade_selectors.push(new UpgradeSelector(_this.builder, slot, _this.upgrade_cell));
          }
          shipbg_class = (function() {
            switch (this.pilot.ship) {
              case 'X-Wing':
                return "xwing" + (parseInt(Math.random() * 2));
              case 'Y-Wing':
                return "ywing0";
              case 'TIE Fighter':
                return "tiefighter" + (parseInt(Math.random() * 2));
              case 'TIE Advanced':
                return "tieadvanced0";
              default:
                return null;
            }
          }).call(_this);
          if (shipbg_class != null) _this.row.addClass("ship-" + shipbg_class);
        }
        return $(window).trigger('xwing:pilotChanged', _this);
      });
      this.pilot_cell.append(this.pilot_selector);
      this.pilot_selector.chosen({
        search_contains: true,
        allow_single_deselect: true
      });
      $("#" + (this.pilot_selector.attr('id')) + "_chzn a.chzn-single").mouseover(function(e) {
        return _this.builder.showPilotInfo($(e.delegateTarget), _this.name, _this.pilot, _this.ship);
      });
      $("#" + (this.pilot_selector.attr('id')) + "_chzn a.chzn-single").mouseleave(function(e) {
        return _this.builder.pilot_tooltip.hide();
      });
      $("#" + (this.pilot_selector.attr('id')) + "_chzn a.chzn-single").click(function(e) {
        return _this.builder.pilot_tooltip.hide();
      });
      this.upgrade_cell = $(document.createElement('DIV'));
      this.upgrade_cell.addClass('seven columns upgrades');
      this.row.append(this.upgrade_cell);
      this.remove_cell = $(document.createElement('DIV'));
      this.remove_cell.addClass('one column');
      this.remove_cell.append("<a class=\"small alert radius button remove\">&#215;</span>");
      this.remove_cell.click(function(e) {
        e.preventDefault();
        return _this.destroy();
      });
      this.row.append(this.remove_cell);
      this.update();
      this.pilot_selector.change();
    }

    PilotRow.prototype.update = function() {
      var available_pilots, option, pilot, _i, _len;
      available_pilots = this.builder.getAvailablePilots();
      if (this.pilot) {
        available_pilots.push({
          name: this.name,
          points: this.pilot.points
        });
      }
      available_pilots.sort(exportObj.sortHelper);
      this.pilot_selector.text('');
      this.pilot_selector.append(document.createElement('OPTION'));
      for (_i = 0, _len = available_pilots.length; _i < _len; _i++) {
        pilot = available_pilots[_i];
        option = $(document.createElement('OPTION'));
        option.text("" + pilot.name + " (" + pilot.points + ")");
        option.val(pilot.name);
        this.pilot_selector.append(option);
      }
      this.pilot_selector.val(this.name);
      return this.pilot_selector.trigger('liszt:updated');
    };

    PilotRow.prototype.destroy = function(callback) {
      var _this = this;
      return this.row.slideUp('fast', function() {
        _this.row.remove();
        _this.builder.rows.splice(_this.builder.rows.indexOf(_this), 1);
        $(window).trigger('xwing:pilotChanged', null);
        $(window).trigger('xwing:upgradeChanged', null);
        return callback();
      });
    };

    return PilotRow;

  })();

  UpgradeSelector = (function() {

    function UpgradeSelector(builder, slot, container) {
      var _this = this;
      this.builder = builder;
      this.slot = slot;
      this.upgrade_name = null;
      this.upgrade = null;
      this.selector = $(document.createElement('SELECT'));
      this.selector.append($(document.createElement('OPTION')));
      this.selector.addClass('upgrade');
      this.selector.attr('data-placeholder', "Select " + this.slot + " Upgrade");
      this.selector.change(function(e) {
        _this.upgrade_name = _this.selector.val();
        _this.upgrade = exportObj.upgrades[_this.selector.val()];
        return $(window).trigger('xwing:upgradeChanged', _this.selector);
      });
      container.append(this.selector);
      this.selector.chosen({
        search_contains: true,
        allow_single_deselect: true,
        disable_search_threshold: 8
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").mouseover(function(e) {
        return _this.builder.showUpgradeInfo($(e.delegateTarget), _this.upgrade_name, _this.upgrade);
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").mouseleave(function(e) {
        return _this.builder.upgrade_tooltip.hide();
      });
      $("#" + (this.selector.attr('id')) + "_chzn a.chzn-single").click(function(e) {
        return _this.builder.upgrade_tooltip.hide();
      });
      this.update();
      this.selector.change();
    }

    UpgradeSelector.prototype.update = function() {
      var available_upgrades, option, upgrade, _i, _len;
      available_upgrades = this.builder.getAvailableUpgrades(this.slot);
      if (this.upgrade && (this.upgrade.unique != null)) {
        available_upgrades.push({
          name: this.upgrade_name,
          points: this.upgrade.points
        });
      }
      available_upgrades.sort(exportObj.sortHelper);
      this.selector.text('');
      this.selector.append(document.createElement('OPTION'));
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

}).call(this);
