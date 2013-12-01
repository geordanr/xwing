
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
    var language, li, _fn, _i, _len, _ref,
      _this = this;
    _ref = Object.keys(exportObj.cardLoaders).sort();
    _fn = function(language) {
      return li.click(function(e) {
        return $(exportObj).trigger('xwing:languageChanged', language);
      });
    };
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      language = _ref[_i];
      li = $(document.createElement('LI'));
      li.text(language);
      _fn(language);
      $('ul.dropdown-menu').append(li);
    }
    $(exportObj).on('xwing:languageChanged', function(e, language, cb) {
      var html, selector, ___iced_passed_deferral, __iced_deferrals, __iced_k;
      __iced_k = __iced_k_noop;
      ___iced_passed_deferral = iced.findDeferral(arguments);
      if (cb == null) {
        cb = $.noop;
      }
      $('.language-placeholder').text(language);
      (function(__iced_k) {
        __iced_deferrals = new iced.Deferrals(__iced_k, {
          parent: ___iced_passed_deferral,
          filename: "coffeescripts/translate.coffee"
        });
        $(exportObj).trigger('xwing:beforeLanguageLoad', __iced_deferrals.defer({
          lineno: 31
        }));
        __iced_deferrals._fulfill();
      })(function() {
        var _ref1;
        exportObj.loadCards(language);
        _ref1 = exportObj.translations[language].byCSSSelector;
        for (selector in _ref1) {
          if (!__hasProp.call(_ref1, selector)) continue;
          html = _ref1[selector];
          $(selector).html(html);
        }
        return $(exportObj).trigger('xwing:afterLanguageLoad', language);
      });
    });
    exportObj.loadCards(DFL_LANGUAGE);
    return $(exportObj).trigger('xwing:languageChanged', DFL_LANGUAGE);
  };

}).call(this);

//@ sourceMappingURL=translate.map