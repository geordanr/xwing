
/*
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
 */

(function() {
  var DFL_LANGUAGE, builders, exportObj,
    __slice = [].slice,
    __hasProp = {}.hasOwnProperty,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

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
        ++this.count;
        return (function(_this) {
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
        })(this);
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

  builders = [];

  exportObj = typeof exports !== "undefined" && exports !== null ? exports : this;

  exportObj.loadCards = function(language) {
    return exportObj.cardLoaders[language]();
  };

  exportObj.translate = function() {
    var args, category, language, translation, what;
    language = arguments[0], category = arguments[1], what = arguments[2], args = 4 <= arguments.length ? __slice.call(arguments, 3) : [];
    translation = exportObj.translations[language][category][what];
    if (translation != null) {
      if (translation instanceof Function) {
        return translation.apply(null, [exportObj.translate, language].concat(__slice.call(args)));
      } else {
        return translation;
      }
    } else {
      return what;
    }
  };

  exportObj.setupTranslationSupport = function() {
    (function(builders) {
      return $(exportObj).on('xwing:languageChanged', (function(_this) {
        return function(e, language, cb) {
          var builder, html, selector, ___iced_passed_deferral, __iced_deferrals, __iced_k;
          __iced_k = __iced_k_noop;
          ___iced_passed_deferral = iced.findDeferral(arguments);
          if (cb == null) {
            cb = $.noop;
          }
          if (language in exportObj.translations) {
            $('.language-placeholder').text(language);
            (function(__iced_k) {
              var _i, _len, _ref, _results, _while;
              _ref = builders;
              _len = _ref.length;
              _i = 0;
              _results = [];
              _while = function(__iced_k) {
                var _break, _continue, _next;
                _break = function() {
                  return __iced_k(_results);
                };
                _continue = function() {
                  return iced.trampoline(function() {
                    ++_i;
                    return _while(__iced_k);
                  });
                };
                _next = function(__iced_next_arg) {
                  _results.push(__iced_next_arg);
                  return _continue();
                };
                if (!(_i < _len)) {
                  return _break();
                } else {
                  builder = _ref[_i];
                  (function(__iced_k) {
                    __iced_deferrals = new iced.Deferrals(__iced_k, {
                      parent: ___iced_passed_deferral,
                      filename: "coffeescripts/translate.coffee"
                    });
                    builder.container.trigger('xwing:beforeLanguageLoad', __iced_deferrals.defer({
                      lineno: 31
                    }));
                    __iced_deferrals._fulfill();
                  })(_next);
                }
              };
              _while(__iced_k);
            })(function() {
              var _i, _len, _ref;
              exportObj.loadCards(language);
              _ref = exportObj.translations[language].byCSSSelector;
              for (selector in _ref) {
                if (!__hasProp.call(_ref, selector)) continue;
                html = _ref[selector];
                $(selector).html(html);
              }
              for (_i = 0, _len = builders.length; _i < _len; _i++) {
                builder = builders[_i];
                builder.container.trigger('xwing:afterLanguageLoad', language);
              }
              return __iced_k();
            });
          } else {
            return __iced_k();
          }
        };
      })(this));
    })(builders);
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

  exportObj.registerBuilderForTranslation = function(builder) {
    if (__indexOf.call(builders, builder) < 0) {
      return builders.push(builder);
    }
  };

}).call(this);

//@ sourceMappingURL=translate.map