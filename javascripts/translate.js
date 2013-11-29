
/*
    X-Wing Squad Builder
    Geordan Rosario <geordan@gmail.com>
    https://github.com/geordanr/xwing
*/

(function() {
  var exportObj,
    __slice = [].slice,
    __hasProp = {}.hasOwnProperty;



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
      var html, selector, _ref1;
      if (cb == null) {
        cb = $.noop;
      }
      $('.language-placeholder').text(language);
      exportObj.loadCards(language);
      _ref1 = exportObj.translations[language].byCSSSelector;
      for (selector in _ref1) {
        if (!__hasProp.call(_ref1, selector)) continue;
        html = _ref1[selector];
        $(selector).html(html);
      }
      return $(exportObj).trigger('xwing:translationRequested', language);
    });
    return $(exportObj).trigger('xwing:languageChanged', 'English');
  };

}).call(this);

//@ sourceMappingURL=translate.map