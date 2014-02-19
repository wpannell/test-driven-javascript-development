var chapter5 = {};

chapter5.Airity = (function() {
  'use strict';
  function Airity() {}

  Airity.prototype.function0 = function() {};
  Airity.prototype.function1 = function(p1) {};
  Airity.prototype.function10 = function(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10) {};

  return Airity;
})();


chapter5.addToArray = (function() {
  'use strict';
  function addToArray() {
    var targetArr = arguments[0];
    var add = Array.prototype.slice.call(arguments, 1);
    return targetArr.concat(add);
  }

  return addToArray;
})();

chapter5.changeFormalParameters = (function() {
  function changeFormalParameters(a, b) {
    b = 42;
    arguments[0] = arguments[1];
    return a;
  }

  return changeFormalParameters;
})();

chapter5.changeFormalParametersE5Strict = (function() {
  'use strict';
  function changeFormalParameters(a, b) {
    b = 42;
    arguments[0] = arguments[1];
    return a;
  }

  return changeFormalParameters;
})();

