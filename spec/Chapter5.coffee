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



