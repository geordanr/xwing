(function() {
  var Ship, UpgradeSlot, exportObj,
    __indexOf = Array.prototype.indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; },
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

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
      var _this = this;
      this.faction = args.faction;
      this.container = $(args.container);
      this.points = 0;
      this.ships = [];
      this.ships.push(new Ship({
        builder: this
      }));
      this.ships.push(new Ship({
        builder: this
      }));
      this.container.on('xwing:shipUpdated', function(e, ship) {
        var _i, _len, _ref, _results;
        _this.points = 0;
        _ref = _this.ships;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          ship = _ref[_i];
          _results.push(_this.points += ship.tallyPoints());
        }
        return _results;
      });
    }

    SquadBuilder.prototype.getUniquePilots = function() {
      var ship, _i, _len, _ref, _results;
      _ref = this.ships;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        ship = _ref[_i];
        if ((ship.pilot != null) && (ship.pilot.unique != null)) {
          _results.push(ship.pilot.name);
        }
      }
      return _results;
    };

    SquadBuilder.prototype.getUniqueUpgrades = function(slot) {
      var ship, unique_upgrades, upgrade_slot, _i, _len, _ref;
      unique_upgrades = [];
      _ref = this.ships;
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        ship = _ref[_i];
        if (ship.pilot != null) {
          unique_upgrades.push.apply(unique_upgrades, (function() {
            var _j, _len2, _ref2, _ref3, _results;
            _ref2 = ship.upgrade_slots;
            _results = [];
            for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
              upgrade_slot = _ref2[_j];
              if (upgrade_slot.slot === slot && (((_ref3 = upgrade_slot.upgrade) != null ? _ref3.unique : void 0) != null)) {
                _results.push(upgrade_slot.upgrade.name);
              }
            }
            return _results;
          })());
        }
      }
      return unique_upgrades;
    };

    SquadBuilder.prototype.getAvailablePilots = function() {
      var pilot_data, pilot_name, unique_crew_names, unique_pilot_names, _ref, _results;
      unique_pilot_names = this.getUniquePilots();
      unique_crew_names = this.getUniqueUpgrades('Crew');
      _ref = exportObj.pilots;
      _results = [];
      for (pilot_name in _ref) {
        pilot_data = _ref[pilot_name];
        if (exportObj.ships[pilot_data.ship].faction === this.faction && (!(pilot_data.unique != null) || (__indexOf.call(unique_pilot_names, pilot_name) < 0 && __indexOf.call(unique_crew_names, pilot_name) < 0))) {
          _results.push(pilot_data);
        }
      }
      return _results;
    };

    SquadBuilder.prototype.getAvailableUpgrades = function(slot) {
      var unique_pilot_names, unique_upgrade_names, upgrade_data, upgrade_name, _ref, _results;
      unique_pilot_names = this.getUniquePilots();
      unique_upgrade_names = this.getUniqueUpgrades(slot);
      _ref = exportObj.upgrades;
      _results = [];
      for (upgrade_name in _ref) {
        upgrade_data = _ref[upgrade_name];
        if (upgrade_data.slot === slot && (!(upgrade_data.unique != null) || (__indexOf.call(unique_pilot_names, upgrade_name) < 0 && __indexOf.call(unique_upgrade_names, upgrade_name) < 0))) {
          _results.push(upgrade_data);
        }
      }
      return _results;
    };

    return SquadBuilder;

  })();

  Ship = (function() {

    function Ship(args) {
      this.onPilotChange = __bind(this.onPilotChange, this);
      this.onAvailablePilotsChanged = __bind(this.onAvailablePilotsChanged, this);
      var pilot_cell,
        _this = this;
      this.builder = args.builder;
      this.pilot = null;
      this.ship = null;
      this.upgrade_slots = [];
      this.modification = null;
      this.title = null;
      this.row = $(document.createElement('DIV'));
      this.row.addClass('row ship');
      this.builder.container.append(this.row);
      pilot_cell = $(document.createElement('DIV'));
      pilot_cell.addClass('four columns');
      this.row.append(pilot_cell);
      this.pilot_selector = $(document.createElement('SELECT'));
      this.addEmptyPilotOption();
      this.pilot_selector.addClass('pilot');
      this.pilot_selector.attr('data-placeholder', 'Select a pilot');
      this.pilot_selector.change(this.onPilotChange);
      pilot_cell.append(this.pilot_selector);
      if (!$.isMobile()) {
        this.pilot_selector.chosen({
          search_contains: true
        });
      }
      this.points_cell = $(document.createElement('DIV'));
      this.points_cell.addClass('one column points');
      this.row.append(this.points_cell);
      this.points_cell.hide();
      this.upgrade_cell = $(document.createElement('DIV'));
      this.upgrade_cell.addClass('six columns upgrades');
      this.row.append(this.upgrade_cell);
      this.remove_cell = $(document.createElement('DIV'));
      this.remove_cell.addClass('one column');
      this.remove_cell.append("<button class=\"small alert radius button remove\">&#215;</button>");
      this.remove_cell.click(function(e) {
        e.preventDefault();
        return _this.row.slideUp('fast', function() {
          return _this.destroy();
        });
      });
      this.row.append(this.remove_cell);
      this.remove_cell.hide();
      this.builder.container.on('xwing:availablePilotsChanged', this.onAvailablePilotsChanged);
      this.updatePilotSelector(this.builder.getAvailablePilots());
    }

    Ship.prototype.addEmptyPilotOption = function() {
      var opt;
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text('Select a pilot');
        opt.val('');
        opt.attr('disabled', true);
      }
      return this.pilot_selector.append(opt);
    };

    Ship.prototype.updatePilotSelector = function(pilots) {
      var available_pilots, optgroup, option, pilot, pilots_by_ship, ship, _i, _j, _k, _len, _len2, _len3, _ref, _ref2, _ref3, _ref4;
      available_pilots = pilots.slice();
      if (((_ref = this.pilot) != null ? _ref.unique : void 0) != null) {
        available_pilots.push(this.pilot);
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
      this.addEmptyPilotOption();
      _ref2 = Object.keys(pilots_by_ship).sort();
      for (_j = 0, _len2 = _ref2.length; _j < _len2; _j++) {
        ship = _ref2[_j];
        optgroup = $(document.createElement('OPTGROUP'));
        optgroup.attr('label', ship);
        this.pilot_selector.append(optgroup);
        _ref3 = pilots_by_ship[ship];
        for (_k = 0, _len3 = _ref3.length; _k < _len3; _k++) {
          pilot = _ref3[_k];
          option = $(document.createElement('OPTION'));
          option.text("" + pilot.name + " (" + pilot.points + ")");
          option.val(pilot.name);
          optgroup.append(option);
        }
      }
      this.pilot_selector.val((_ref4 = this.pilot) != null ? _ref4.name : void 0);
      return this.pilot_selector.trigger('liszt:updated');
    };

    Ship.prototype.onAvailablePilotsChanged = function(e, pilots) {
      return this.updatePilotSelector(pilots);
    };

    Ship.prototype.onPilotChange = function(e) {
      var old_pilot, slot, upgrade_slot, _i, _j, _len, _len2, _ref, _ref2, _ref3, _ref4;
      old_pilot = this.pilot;
      this.pilot = exportObj.pilots[this.pilot_selector.val()];
      this.ship = exportObj.ships[(_ref = this.pilot) != null ? _ref.ship : void 0];
      _ref2 = this.upgrade_slots;
      for (_i = 0, _len = _ref2.length; _i < _len; _i++) {
        upgrade_slot = _ref2[_i];
        upgrade_slot.destroy();
      }
      this.upgrade_slots = [];
      this.modification = null;
      this.title = null;
      _ref4 = (_ref3 = this.pilot) != null ? _ref3.slots : void 0;
      for (_j = 0, _len2 = _ref4.length; _j < _len2; _j++) {
        slot = _ref4[_j];
        this.upgrade_slots.push(new UpgradeSlot({
          ship: this,
          slot: slot
        }));
      }
      if (this.pilot != null) {
        this.points_cell.show();
        this.remove_cell.show();
      }
      this.builder.container.trigger('xwing:shipUpdated', this);
      if (((old_pilot != null ? old_pilot.unique : void 0) != null) || (this.pilot.unique != null)) {
        this.builder.container.trigger('xwing:availablePilotsChanged', [this.builder.getAvailablePilots()]);
        return this.builder.container.trigger('xwing:availableUpgradesChanged', ['Crew', this.builder.getAvailableUpgrades('Crew')]);
      }
    };

    Ship.prototype.tallyPoints = function() {
      var points, upgrade_slot, _i, _len, _ref, _ref2, _ref3;
      points = 0;
      if (this.pilot != null) {
        points += this.pilot.points;
        _ref = this.upgrade_slots;
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          upgrade_slot = _ref[_i];
          points += (_ref2 = (_ref3 = upgrade_slot.upgrade) != null ? _ref3.points : void 0) != null ? _ref2 : 0;
        }
      }
      this.points_cell.text(points);
      return points;
    };

    Ship.prototype.destroy = function() {
      this.builder.container.off('xwing:availablePilotsChanged', this.onAvailablePilotsChanged);
      this.row.text('');
      this.pilot = null;
      this.upgrade_slots = [];
      this.modification = null;
      this.title = null;
      this.builder.container.trigger('xwing:shipUpdated', this);
      this.builder.container.trigger('xwing:availablePilotsChanged', [this.builder.getAvailablePilots()]);
      return this.builder.container.trigger('xwing:availableUpgradesChanged', ['Crew', this.builder.getAvailableUpgrades('Crew')]);
    };

    return Ship;

  })();

  UpgradeSlot = (function() {

    function UpgradeSlot(args) {
      this.onUpgradeChange = __bind(this.onUpgradeChange, this);
      this.onAvailableUpgradesChanged = __bind(this.onAvailableUpgradesChanged, this);      this.ship = args.ship;
      this.slot = args.slot;
      this.upgrade = null;
      this.selector = $(document.createElement('SELECT'));
      this.addEmptyUpgradeOption();
      this.selector.addClass('upgrade');
      this.selector.attr('data-placeholder', "No " + this.slot + " Upgrade");
      this.selector.change(this.onUpgradeChange);
      this.ship.upgrade_cell.append(this.selector);
      if (!$.isMobile()) {
        this.selector.chosen({
          search_contains: true,
          allow_single_deselect: true,
          disable_search_threshold: 8
        });
      }
      this.ship.builder.container.on('xwing:availableUpgradesChanged', this.onAvailableUpgradesChanged);
      this.updateSelector(this.ship.builder.getAvailableUpgrades(this.slot));
    }

    UpgradeSlot.prototype.addEmptyUpgradeOption = function() {
      var opt;
      opt = $(document.createElement('OPTION'));
      if ($.isMobile()) {
        opt.text("No " + this.slot + " Upgrade");
        opt.val('');
        opt.attr('disabled', true);
      }
      return this.selector.append(opt);
    };

    UpgradeSlot.prototype.updateSelector = function(upgrades) {
      var available_upgrades, option, upgrade, _i, _len, _ref, _ref2;
      available_upgrades = upgrades.slice();
      if (((_ref = this.upgrade) != null ? _ref.unique : void 0) != null) {
        available_upgrades.push(this.upgrade);
      }
      available_upgrades.sort(exportObj.sortHelper);
      this.selector.text('');
      this.addEmptyUpgradeOption();
      for (_i = 0, _len = available_upgrades.length; _i < _len; _i++) {
        upgrade = available_upgrades[_i];
        option = $(document.createElement('OPTION'));
        option.text("" + upgrade.name + " (" + upgrade.points + ")");
        option.val(upgrade.name);
        this.selector.append(option);
      }
      this.selector.val((_ref2 = this.upgrade) != null ? _ref2.name : void 0);
      return this.selector.trigger('liszt:updated');
    };

    UpgradeSlot.prototype.onAvailableUpgradesChanged = function(e, slot, upgrades) {
      if (slot === this.slot) return this.updateSelector(upgrades);
    };

    UpgradeSlot.prototype.onUpgradeChange = function(e) {
      var old_upgrade, _ref;
      old_upgrade = this.upgrade;
      this.upgrade = exportObj.upgrades[this.selector.val()];
      this.ship.builder.container.trigger('xwing:shipUpdated', this);
      if (((old_upgrade != null ? old_upgrade.unique : void 0) != null) || (((_ref = this.upgrade) != null ? _ref.unique : void 0) != null)) {
        this.ship.builder.container.trigger('xwing:availableUpgradesChanged', [this.slot, this.ship.builder.getAvailableUpgrades(this.slot)]);
        if (this.slot === 'Crew') {
          return this.ship.builder.container.trigger('xwing:availablePilotsChanged', [this.ship.builder.getAvailablePilots()]);
        }
      }
    };

    UpgradeSlot.prototype.destroy = function() {
      var _ref;
      this.ship.builder.container.off('xwing:availableUpgradesChanged', this.onAvailableUpgradesChanged);
      this.selector.data('chosen').container.remove();
      this.selector.remove();
      this.selector = null;
      this.ship.builder.container.trigger('xwing:availableUpgradesChanged', [this.slot, this.ship.builder.getAvailableUpgrades(this.slot)]);
      if (this.slot === 'Crew' && (((_ref = this.upgrade) != null ? _ref.unique : void 0) != null)) {
        return this.ship.builder.container.trigger('xwing:availablePilotsChanged', [this.ship.builder.getAvailablePilots()]);
      }
    };

    return UpgradeSlot;

  })();

}).call(this);
