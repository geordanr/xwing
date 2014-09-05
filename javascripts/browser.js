
/*
    X-Wing Card Browser
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
 */

(function() {
  var TYPES, byName, byPoints, exportObj,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  TYPES = ['pilots', 'upgrades', 'modifications', 'titles'];

  byName = function(a, b) {
    var a_name, b_name;
    a_name = a.name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '');
    b_name = b.name.toLowerCase().replace(/[^a-zA-Z0-9]/g, '');
    if (a_name < b_name) {
      return -1;
    } else if (b_name < a_name) {
      return 1;
    } else {
      return 0;
    }
  };

  byPoints = function(a, b) {
    if (a.data.points < b.data.points) {
      return -1;
    } else if (b.data.points < a.data.points) {
      return 1;
    } else {
      return byName(a, b);
    }
  };

  String.prototype.capitalize = function() {
    return this.charAt(0).toUpperCase() + this.slice(1);
  };

  exportObj.CardBrowser = (function() {
    function CardBrowser(args) {
      this.container = $(args.container);
      this.currently_selected = null;
      this.language = 'English';
      this.prepareData();
      this.setupUI();
      this.setupHandlers();
      this.sort_selector.change();
    }

    CardBrowser.prototype.setupUI = function() {
      this.container.append($.trim("<div class=\"container-fluid xwing-card-browser\">\n    <div class=\"row-fluid\">\n        <div class=\"span12\">\n            <span class=\"translate sort-cards-by\">Sort cards by</span>: <select class=\"sort-by\">\n                <option value=\"name\">Name</option>\n                <option value=\"source\">Source</option>\n                <option value=\"type-by-points\">Type (by Points)</option>\n                <option value=\"type-by-name\" selected=\"1\">Type (by Name)</option>\n            </select>\n        </div>\n    </div>\n    <div class=\"row-fluid\">\n        <div class=\"span4 card-selector-container\">\n\n        </div>\n        <div class=\"span8\">\n            <div class=\"well card-viewer-placeholder info-well\">\n                <p class=\"translate select-a-card\">Select a card from the list at the left.</p>\n            </div>\n            <div class=\"well card-viewer-container info-well\">\n                <span class=\"info-name\"></span>\n                <br />\n                <span class=\"info-type\"></span>\n                <br />\n                <span class=\"info-sources\"></span>\n                <table>\n                    <tbody>\n                        <tr class=\"info-skill\">\n                            <td class=\"info-header\">Skill</td>\n                            <td class=\"info-data info-skill\"></td>\n                        </tr>\n                        <tr class=\"info-energy\">\n                            <td class=\"info-header\"><img class=\"icon-energy\" src=\"images/transparent.png\" alt=\"energy\" /></td>\n                            <td class=\"info-data info-energy\"></td>\n                        </tr>\n                        <tr class=\"info-attack\">\n                            <td class=\"info-header\"><img class=\"icon-attack\" src=\"images/transparent.png\" alt=\"Attack\" /></td>\n                            <td class=\"info-data info-attack\"></td>\n                        </tr>\n                        <tr class=\"info-range\">\n                            <td class=\"info-header\">Range</td>\n                            <td class=\"info-data info-range\"></td>\n                        </tr>\n                        <tr class=\"info-agility\">\n                            <td class=\"info-header\"><img class=\"icon-agility\" src=\"images/transparent.png\" alt=\"Agility\" /></td>\n                            <td class=\"info-data info-agility\"></td>\n                        </tr>\n                        <tr class=\"info-hull\">\n                            <td class=\"info-header\"><img class=\"icon-hull\" src=\"images/transparent.png\" alt=\"Hull\" /></td>\n                            <td class=\"info-data info-hull\"></td>\n                        </tr>\n                        <tr class=\"info-shields\">\n                            <td class=\"info-header\"><img class=\"icon-shields\" src=\"images/transparent.png\" alt=\"Shields\" /></td>\n                            <td class=\"info-data info-shields\"></td>\n                        </tr>\n                        <tr class=\"info-actions\">\n                            <td class=\"info-header\">Actions</td>\n                            <td class=\"info-data\"></td>\n                        </tr>\n                        <tr class=\"info-upgrades\">\n                            <td class=\"info-header\">Upgrades</td>\n                            <td class=\"info-data\"></td>\n                        </tr>\n                    </tbody>\n                </table>\n                <p class=\"info-text\" />\n            </div>\n        </div>\n    </div>\n</div>"));
      this.card_selector_container = $(this.container.find('.xwing-card-browser .card-selector-container'));
      this.card_viewer_container = $(this.container.find('.xwing-card-browser .card-viewer-container'));
      this.card_viewer_container.hide();
      this.card_viewer_placeholder = $(this.container.find('.xwing-card-browser .card-viewer-placeholder'));
      this.sort_selector = $(this.container.find('select.sort-by'));
      return this.sort_selector.select2({
        minimumResultsForSearch: -1
      });
    };

    CardBrowser.prototype.setupHandlers = function() {
      this.sort_selector.change((function(_this) {
        return function(e) {
          return _this.renderList(_this.sort_selector.val());
        };
      })(this));
      return $(window).on('xwing:afterLanguageLoad', (function(_this) {
        return function(e, language, cb) {
          if (cb == null) {
            cb = $.noop;
          }
          _this.language = language;
          _this.prepareData();
          return _this.renderList(_this.sort_selector.val());
        };
      })(this));
    };

    CardBrowser.prototype.prepareData = function() {
      var card, card_data, card_name, sorted_sources, sorted_types, source, type, upgrade_text, _i, _j, _k, _l, _len, _len1, _len2, _len3, _len4, _len5, _m, _n, _ref, _ref1, _ref2, _results;
      this.all_cards = [];
      for (_i = 0, _len = TYPES.length; _i < _len; _i++) {
        type = TYPES[_i];
        if (type === 'upgrades') {
          this.all_cards = this.all_cards.concat((function() {
            var _ref, _results;
            _ref = exportObj[type];
            _results = [];
            for (card_name in _ref) {
              card_data = _ref[card_name];
              _results.push({
                name: card_data.name,
                type: exportObj.translate(this.language, 'ui', 'upgradeHeader', card_data.slot),
                data: card_data,
                orig_type: card_data.slot
              });
            }
            return _results;
          }).call(this));
        } else {
          this.all_cards = this.all_cards.concat((function() {
            var _ref, _results;
            _ref = exportObj[type];
            _results = [];
            for (card_name in _ref) {
              card_data = _ref[card_name];
              _results.push({
                name: card_data.name,
                type: exportObj.translate(this.language, 'singular', type),
                data: card_data,
                orig_type: exportObj.translate('English', 'singular', type)
              });
            }
            return _results;
          }).call(this));
        }
      }
      this.types = (function() {
        var _j, _len1, _ref, _results;
        _ref = ['Pilot', 'Modification', 'Title'];
        _results = [];
        for (_j = 0, _len1 = _ref.length; _j < _len1; _j++) {
          type = _ref[_j];
          _results.push(exportObj.translate(this.language, 'types', type));
        }
        return _results;
      }).call(this);
      _ref = exportObj.upgrades;
      for (card_name in _ref) {
        card_data = _ref[card_name];
        upgrade_text = exportObj.translate(this.language, 'ui', 'upgradeHeader', card_data.slot);
        if (__indexOf.call(this.types, upgrade_text) < 0) {
          this.types.push(upgrade_text);
        }
      }
      this.all_cards.sort(byName);
      this.sources = [];
      _ref1 = this.all_cards;
      for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
        card = _ref1[_j];
        _ref2 = card.data.sources;
        for (_k = 0, _len2 = _ref2.length; _k < _len2; _k++) {
          source = _ref2[_k];
          if (__indexOf.call(this.sources, source) < 0) {
            this.sources.push(source);
          }
        }
      }
      sorted_types = this.types.sort();
      sorted_sources = this.sources.sort();
      this.cards_by_type_name = {};
      for (_l = 0, _len3 = sorted_types.length; _l < _len3; _l++) {
        type = sorted_types[_l];
        this.cards_by_type_name[type] = ((function() {
          var _len4, _m, _ref3, _results;
          _ref3 = this.all_cards;
          _results = [];
          for (_m = 0, _len4 = _ref3.length; _m < _len4; _m++) {
            card = _ref3[_m];
            if (card.type === type) {
              _results.push(card);
            }
          }
          return _results;
        }).call(this)).sort(byName);
      }
      this.cards_by_type_points = {};
      for (_m = 0, _len4 = sorted_types.length; _m < _len4; _m++) {
        type = sorted_types[_m];
        this.cards_by_type_points[type] = ((function() {
          var _len5, _n, _ref3, _results;
          _ref3 = this.all_cards;
          _results = [];
          for (_n = 0, _len5 = _ref3.length; _n < _len5; _n++) {
            card = _ref3[_n];
            if (card.type === type) {
              _results.push(card);
            }
          }
          return _results;
        }).call(this)).sort(byPoints);
      }
      this.cards_by_source = {};
      _results = [];
      for (_n = 0, _len5 = sorted_sources.length; _n < _len5; _n++) {
        source = sorted_sources[_n];
        _results.push(this.cards_by_source[source] = ((function() {
          var _len6, _o, _ref3, _results1;
          _ref3 = this.all_cards;
          _results1 = [];
          for (_o = 0, _len6 = _ref3.length; _o < _len6; _o++) {
            card = _ref3[_o];
            if (__indexOf.call(card.data.sources, source) >= 0) {
              _results1.push(card);
            }
          }
          return _results1;
        }).call(this)).sort(byName));
      }
      return _results;
    };

    CardBrowser.prototype.renderList = function(sort_by) {
      var card, optgroup, source, type, _i, _j, _k, _l, _len, _len1, _len2, _len3, _len4, _len5, _len6, _m, _n, _o, _ref, _ref1, _ref2, _ref3, _ref4, _ref5, _ref6;
      if (sort_by == null) {
        sort_by = 'name';
      }
      if (this.card_selector != null) {
        this.card_selector.remove();
      }
      this.card_selector = $(document.createElement('SELECT'));
      this.card_selector.addClass('card-selector');
      this.card_selector.attr('size', 25);
      this.card_selector_container.append(this.card_selector);
      switch (sort_by) {
        case 'type-by-name':
          _ref = this.types;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            type = _ref[_i];
            optgroup = $(document.createElement('OPTGROUP'));
            optgroup.attr('label', type);
            this.card_selector.append(optgroup);
            _ref1 = this.cards_by_type_name[type];
            for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
              card = _ref1[_j];
              this.addCardTo(optgroup, card);
            }
          }
          break;
        case 'type-by-points':
          _ref2 = this.types;
          for (_k = 0, _len2 = _ref2.length; _k < _len2; _k++) {
            type = _ref2[_k];
            optgroup = $(document.createElement('OPTGROUP'));
            optgroup.attr('label', type);
            this.card_selector.append(optgroup);
            _ref3 = this.cards_by_type_points[type];
            for (_l = 0, _len3 = _ref3.length; _l < _len3; _l++) {
              card = _ref3[_l];
              this.addCardTo(optgroup, card);
            }
          }
          break;
        case 'source':
          _ref4 = this.sources;
          for (_m = 0, _len4 = _ref4.length; _m < _len4; _m++) {
            source = _ref4[_m];
            optgroup = $(document.createElement('OPTGROUP'));
            optgroup.attr('label', source);
            this.card_selector.append(optgroup);
            _ref5 = this.cards_by_source[source];
            for (_n = 0, _len5 = _ref5.length; _n < _len5; _n++) {
              card = _ref5[_n];
              this.addCardTo(optgroup, card);
            }
          }
          break;
        default:
          _ref6 = this.all_cards;
          for (_o = 0, _len6 = _ref6.length; _o < _len6; _o++) {
            card = _ref6[_o];
            this.addCardTo(this.card_selector, card);
          }
      }
      return this.card_selector.change((function(_this) {
        return function(e) {
          return _this.renderCard($(_this.card_selector.find(':selected')));
        };
      })(this));
    };

    CardBrowser.prototype.renderCard = function(card) {
      var action, data, name, orig_type, ship, slot, source, type, _ref, _ref1, _ref10, _ref11, _ref12, _ref2, _ref3, _ref4, _ref5, _ref6, _ref7, _ref8, _ref9;
      name = card.data('name');
      type = card.data('type');
      data = card.data('card');
      orig_type = card.data('orig_type');
      this.card_viewer_container.find('.info-name').html("" + (data.unique ? "&middot;&nbsp;" : "") + name + " (" + data.points + ")" + (data.limited != null ? " (" + (exportObj.translate(this.language, 'ui', 'limited')) + ")" : "") + (data.epic != null ? " (" + (exportObj.translate(this.language, 'ui', 'epic')) + ")" : "") + (exportObj.isReleased(data) ? "" : " (" + (exportObj.translate(this.language, 'ui', 'unreleased')) + ")"));
      this.card_viewer_container.find('p.info-text').html((_ref = data.text) != null ? _ref : '');
      this.card_viewer_container.find('.info-sources').text(((function() {
        var _i, _len, _ref1, _results;
        _ref1 = data.sources;
        _results = [];
        for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
          source = _ref1[_i];
          _results.push(exportObj.translate(this.language, 'sources', source));
        }
        return _results;
      }).call(this)).sort().join(', '));
      switch (orig_type) {
        case 'Pilot':
          ship = exportObj.ships[data.ship];
          this.card_viewer_container.find('.info-type').text("" + data.ship + " Pilot (" + data.faction + ")");
          this.card_viewer_container.find('tr.info-skill td.info-data').text(data.skill);
          this.card_viewer_container.find('tr.info-skill').show();
          this.card_viewer_container.find('tr.info-attack td.info-data').text((_ref1 = (_ref2 = data.ship_override) != null ? _ref2.attack : void 0) != null ? _ref1 : ship.attack);
          this.card_viewer_container.find('tr.info-attack').toggle((((_ref3 = data.ship_override) != null ? _ref3.attack : void 0) != null) || (ship.attack != null));
          this.card_viewer_container.find('tr.info-energy td.info-data').text((_ref4 = (_ref5 = data.ship_override) != null ? _ref5.energy : void 0) != null ? _ref4 : ship.energy);
          this.card_viewer_container.find('tr.info-energy').toggle((((_ref6 = data.ship_override) != null ? _ref6.energy : void 0) != null) || (ship.energy != null));
          this.card_viewer_container.find('tr.info-range').hide();
          this.card_viewer_container.find('tr.info-agility td.info-data').text((_ref7 = (_ref8 = data.ship_override) != null ? _ref8.agility : void 0) != null ? _ref7 : ship.agility);
          this.card_viewer_container.find('tr.info-agility').show();
          this.card_viewer_container.find('tr.info-hull td.info-data').text((_ref9 = (_ref10 = data.ship_override) != null ? _ref10.hull : void 0) != null ? _ref9 : ship.hull);
          this.card_viewer_container.find('tr.info-hull').show();
          this.card_viewer_container.find('tr.info-shields td.info-data').text((_ref11 = (_ref12 = data.ship_override) != null ? _ref12.shields : void 0) != null ? _ref11 : ship.shields);
          this.card_viewer_container.find('tr.info-shields').show();
          this.card_viewer_container.find('tr.info-actions td.info-data').text(((function() {
            var _i, _len, _ref13, _results;
            _ref13 = exportObj.ships[data.ship].actions;
            _results = [];
            for (_i = 0, _len = _ref13.length; _i < _len; _i++) {
              action = _ref13[_i];
              _results.push(exportObj.translate(this.language, 'action', action));
            }
            return _results;
          }).call(this)).join(', '));
          this.card_viewer_container.find('tr.info-actions').show();
          this.card_viewer_container.find('tr.info-upgrades').show();
          this.card_viewer_container.find('tr.info-upgrades td.info-data').text(((function() {
            var _i, _len, _ref13, _results;
            _ref13 = data.slots;
            _results = [];
            for (_i = 0, _len = _ref13.length; _i < _len; _i++) {
              slot = _ref13[_i];
              _results.push(exportObj.translate(this.language, 'slot', slot));
            }
            return _results;
          }).call(this)).join(', ') || 'None');
          break;
        default:
          this.card_viewer_container.find('.info-type').text(type);
          if (data.faction != null) {
            this.card_viewer_container.find('.info-type').append(" &ndash; " + data.faction + " only");
          }
          this.card_viewer_container.find('tr.info-ship').hide();
          this.card_viewer_container.find('tr.info-skill').hide();
          if (data.energy != null) {
            this.card_viewer_container.find('tr.info-energy td.info-data').text(data.energy);
            this.card_viewer_container.find('tr.info-energy').show();
          } else {
            this.card_viewer_container.find('tr.info-energy').hide();
          }
          if (data.attack != null) {
            this.card_viewer_container.find('tr.info-attack td.info-data').text(data.attack);
            this.card_viewer_container.find('tr.info-attack').show();
          } else {
            this.card_viewer_container.find('tr.info-attack').hide();
          }
          if (data.range != null) {
            this.card_viewer_container.find('tr.info-range td.info-data').text(data.range);
            this.card_viewer_container.find('tr.info-range').show();
          } else {
            this.card_viewer_container.find('tr.info-range').hide();
          }
          this.card_viewer_container.find('tr.info-agility').hide();
          this.card_viewer_container.find('tr.info-hull').hide();
          this.card_viewer_container.find('tr.info-shields').hide();
          this.card_viewer_container.find('tr.info-actions').hide();
          this.card_viewer_container.find('tr.info-upgrades').hide();
      }
      this.card_viewer_container.show();
      return this.card_viewer_placeholder.hide();
    };

    CardBrowser.prototype.addCardTo = function(container, card) {
      var option;
      option = $(document.createElement('OPTION'));
      option.text("" + card.name + " (" + card.data.points + ")");
      option.data('name', card.name);
      option.data('type', card.type);
      option.data('card', card.data);
      option.data('orig_type', card.orig_type);
      return $(container).append(option);
    };

    return CardBrowser;

  })();

}).call(this);

//@ sourceMappingURL=browser.map