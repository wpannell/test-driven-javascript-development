function Airity() {}

Airity.prototype.function0 = function() {};
Airity.prototype.function1 = function(p1) {};
Airity.prototype.function10 =
    function(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) {};

function addToArray() {
  var targetArr = arguments[0];
  var add = Array.prototype.slice.call(arguments, 1);
  return targetArr.concat(add);
}

function changeFormalParameters(a, b) {
  b = 42;
  arguments[0] = arguments[1];
  return a;
}

function changeFormalParametersE5Strict(a, b) {
  'use strict';
  b = 42;
  arguments[0] = arguments[1];
  return a;
}
