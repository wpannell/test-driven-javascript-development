describe "chapter 5", ->
  describe "section 5.1", ->
    describe "a function's airity is the number of formal parameters", ->
      Given -> @airity = new Airity()
      Then -> 0 == @airity.function0.length
      Then -> 1 == @airity.function1.length
      Then -> 10 == @airity.function10.length

  describe "section 5.2", ->
    describe "the arguments object is like an array", ->
      Then -> expect([1,'2',3,'four','four',3,'2',1]).toEqual(
        addToArray([1,'2',3,'four'], 'four', 3,'2',1))

    describe "when a property of the arguments object is changed, then", ->
      describe "so is the corresponding formal parameter, and conversely", ->
        Then -> 42 == changeFormalParameters(0,0)

      describe "unless in strict mode --  a recommended practice", ->
        Then -> 42 != changeFormalParametersE5Strict(0,0)
        Then -> 0 == changeFormalParametersE5Strict(0,0)

  describe "section 5.3", ->
    describe "declarations are required", ->
      Then -> expect(accessUndeclaredSomevar).toThrow("someVar is not defined");

    describe "variable declarations are hoisted", ->
      Then -> expect(hoistUndeclaredIndexvar).not.toThrow();

    describe "variables retain their value outside of block", ->
      Then -> 5 == retainValueOf_i_OutsideBlock(1,2,3,4,5)

    describe "function declarations are hoisted", ->
      Then -> 3 == hoistDeclaredExecuteFunction(1,2,3)

    describe "section 5.3.4", ->
      describe "the global browser object is window", ->
        Then -> window == global
        Then -> window == global.window
        Then -> window == window.window

    describe "section 5.3.5", ->
      describe "the scope chain", ->
        Given -> @inc = adder 1
        Given -> @dec = adder -1
        Then -> 3 == @inc 2
        Then -> 3 == @dec 4
        Then -> 3 == @inc @dec 3

