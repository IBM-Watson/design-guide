(function (Prism) {
  'use strict';

  var fired = false;

  window.addEventListener('DOMContentLoaded', function () {
    if (!fired) {
      Prism.highlightAll();
      fired = true;
    }
  });

  if (!fired) {
    Prism.highlightAll();
    fired = true;
  }

})(window.Prism);
