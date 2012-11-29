(function() {
  var Pilot, exportObj,
    __indexOf = Array.prototype.indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.SquadBuilder = (function() {

    function SquadBuilder(args) {
      this.faction = args.faction;
      this.pilots = [];
    }

    SquadBuilder.prototype.getAvailablePilots = function() {
      var pilot_data, pilot_name, ship_data, ship_name, ships;
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
      return ((function() {
        var _ref, _ref2, _results;
        _ref = exportObj.pilots;
        _results = [];
        for (pilot_name in _ref) {
          pilot_data = _ref[pilot_name];
          if ((_ref2 = pilot_data.ship, __indexOf.call(ships, _ref2) >= 0) && (!(pilot_data.unique != null) || __indexOf.call(this.pilots, pilot_name) < 0)) {
            _results.push(pilot_name);
          }
        }
        return _results;
      }).call(this)).sort();
    };

    SquadBuilder.prototype.addPilot = function(pilot_name) {
      var pilot, _ref;
      pilot = new Pilot(pilot_name);
      if (pilot.data.faction !== this.faction) {
        throw "Pilot is of the wrong faction";
      }
      if ((pilot.data.unique != null) && (_ref = pilot.name, __indexOf.call(this.pilots, _ref) >= 0)) {
        throw "Pilot is unique and cannot be used multiple times";
      }
    };

    return SquadBuilder;

  })();

  Pilot = (function() {

    function Pilot(pilot_name) {
      this.name = pilot_name;
      this.data = exportObj.pilots[pilot_name];
      this.ship = exportObj.ships[this.data.ship];
      this.active_upgrades = [];
    }

    Pilot.prototype.addUpgrade = function(upgrade) {};

    Pilot.prototype.removeUpgrade = function(upgrade) {};

    Pilot.prototype.getUpgradesForSlot = function(slot) {
      var upgrade_data, upgrade_name;
      return ((function() {
        var _ref, _results;
        _ref = exportObj.upgrades;
        _results = [];
        for (upgrade_name in _ref) {
          upgrade_data = _ref[upgrade_name];
          if (upgrade_data === slot) _results.push(upgrade_name);
        }
        return _results;
      })()).sort();
    };

    return Pilot;

  })();

}).call(this);
