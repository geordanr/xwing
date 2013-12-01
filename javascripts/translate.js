
/*
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
*/

(function() {
  var DFL_LANGUAGE, exportObj,
    __slice = [].slice,
    __hasProp = {}.hasOwnProperty;

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

  DFL_LANGUAGE = 'English';

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.loadCards = function(language) {
    return exportObj.cardLoaders[language]();
  };

  exportObj.translate = function() {
    var args, category, language, translation, what;
    language = arguments[0], category = arguments[1], what = arguments[2], args = 4 <= arguments.length ? __slice.call(arguments, 3) : [];
    translation = exportObj.translations[language][category][what];
    if (translation instanceof Function) {
      return translation.apply(null, [exportObj.translate, language].concat(__slice.call(args)));
    } else {
      return translation;
    }
  };

  exportObj.setupTranslationSupport = function() {
    var _this = this;
    $(exportObj).on('xwing:languageChanged', function(e, language, cb) {
      var html, selector, ___iced_passed_deferral, __iced_deferrals, __iced_k;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      if (cb == null) {
        cb = $.noop;
      }
      if (language in exportObj.translations) {
        $('.language-placeholder').text(language);
        (function(__iced_k) {
          __iced_deferrals = new iced.Deferrals(__iced_k, {
            parent: ___iced_passed_deferral,
            filename: "coffeescripts/translate.coffee"
          });
          $(exportObj).trigger('xwing:beforeLanguageLoad', __iced_deferrals.defer({
            lineno: 24
          }));
          __iced_deferrals._fulfill();
        })(function() {
          var _ref;
          exportObj.loadCards(language);
          _ref = exportObj.translations[language].byCSSSelector;
          for (selector in _ref) {
            if (!__hasProp.call(_ref, selector)) continue;
            html = _ref[selector];
            $(selector).html(html);
          }
          return __iced_k($(exportObj).trigger('xwing:afterLanguageLoad', language));
        });
      } else {
        return __iced_k();
      }
    });
    exportObj.loadCards(DFL_LANGUAGE);
    return $(exportObj).trigger('xwing:languageChanged', DFL_LANGUAGE);
  };

  exportObj.setupTranslationUI = function(backend) {
    var language, li, _fn, _i, _len, _ref, _results;
    _ref = Object.keys(exportObj.cardLoaders).sort();
    _fn = function(language, backend) {
      return li.click(function(e) {
        if (backend != null) {
          backend.set('language', language);
        }
        return $(exportObj).trigger('xwing:languageChanged', language);
      });
    };
    _results = [];
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      language = _ref[_i];
      li = $(document.createElement('LI'));
      li.text(language);
      _fn(language, backend);
      _results.push($('ul.dropdown-menu').append(li));
    }
    return _results;
  };

}).call(this);

//@ sourceMappingURL=translate.map