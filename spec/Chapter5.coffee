describe "chapter 5", ->
  describe "5.1.3 a function's airity is the number of formal parameters", ->
    Given -> @airity = new chapter5.Airity()
    Then -> 0 == @airity.function0.length
    Then -> 1 == @airity.function1.length
    Then -> 10 == @airity.function10.length

  describe "5.2.1 the arguments object is like an array", ->
    describe "chapter5.addToArray([1,'2',3,'four'], 'four', 3,'2',1)", ->
      Given ->
        @ra = chapter5.addToArray([1,'2',3,'four'], 'four', 3,'2',1)
      Then -> expect([1,'2',3,'four','four',3,'2',1]).toEqual @ra

  describe "5.2.2 when a property of the arguments object is changed,", ->
    describe "then so is the corresponding formal parameter, and conversely", ->
      Then -> 42 == chapter5.changeFormalParameters(0,0)

    describe "unless in strict mode", ->
      Then -> 42 != chapter5.changeFormalParametersE5Strict(0,0)
