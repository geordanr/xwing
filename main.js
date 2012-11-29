(function() {
  var Pilot, exportObj,
    __indexOf = Array.prototype.indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.SquadBuilder = (function() {

    function SquadBuilder(args) {
      this.faction = args.faction;
    }

    SquadBuilder.prototype.getPilotNames = function() {
      var pilot_data, pilot_name, pilots, ship_data, ship_name, ships;
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
      return pilots = ((function() {
        var _ref, _ref2, _results;
        _ref = exportObj.pilots;
        _results = [];
        for (pilot_name in _ref) {
          pilot_data = _ref[pilot_name];
          if (_ref2 = pilot_data.ship, __indexOf.call(ships, _ref2) >= 0) {
            _results.push(pilot_name);
          }
        }
        return _results;
      })()).sort();
    };

    return SquadBuilder;

  })();

  Pilot = (function() {

    function Pilot(pilot_name) {
      this.pilot = exportObj.pilots[pilot_name];
      this.ship = exportObj.ships[this.pilot.ship];
      this.active_upgrades = {};
    }

    Pilot.prototype.addUpgrade = function(upgrade) {
      return this.active_upgrades[upgrade] = true;
    };

    Pilot.prototype.removeUpgrade = function(upgrade) {
      var _base, _ref;
      return (_ref = (_base = this.active_upgrades)[upgrade]) != null ? _ref : _base[upgrade] = void 0;
    };

    return Pilot;

  })();

}).call(this);
