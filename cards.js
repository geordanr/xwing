(function() {
  var exportObj;

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.ships = {
    "X-Wing": {
      attack: 3,
      agility: 2,
      hull: 3,
      shields: 2,
      actions: ["Focus", "Target Lock"]
    }
  };

  exportObj.pilots = {
    "Wedge Antilles": {
      ship: "X-Wing",
      skill: 9,
      points: 29,
      upgrades: ["Elite", "Torpedo", "Astromech"],
      text: "When attacking, reduce the defender's agility value by 1 (to a minimum of \"0\")."
    },
    "Garven Dreis": {
      ship: "X-Wing",
      skill: 6,
      points: 26,
      upgrades: ["Torpedo", "Astromech"],
      text: "After spending a focus token, you may place that token on any other friendly ship at Range 1-2 (instead of discarding it)."
    }
  };

}).call(this);
