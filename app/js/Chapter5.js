var global = this;

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

function accessUndeclaredSomevar() {
  var something = someVar;
}

function hoistUndeclaredIndexvar() {
  var something = indexVar;
  for (var indexVar = 1, l = arguments.length; indexVar < l; indexVar++) {
  }
}

function retainValueOf_i_OutsideBlock() {
  for (var i = 1, l = arguments.length; i < l; i++) {
  }
  return i;
}

function hoistDeclaredExecuteFunction() {
  var retval = execute(arguments);

  function execute(arg) {
    return arg.length;
  }

  return retval;
}

function adder(base) {
  return function(num) {
    return base + num;
  }
}