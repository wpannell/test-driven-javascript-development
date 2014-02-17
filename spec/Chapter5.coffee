describe "chapter 5", ->
  Given -> @chapter5 = chapter5

  describe "a function's airity is the number of formal parameters", ->
    Given -> @airity = new @chapter5.Airity()
    Then -> 0 == @airity.function0.length
    Then -> 1 == @airity.function1.length
    Then -> 10 == @airity.function10.length

  describe "use the arguments object like an array", ->
    describe "@chapter5.addToArray([1,'2',3,'four'], 'four', 3,'2',1)", ->
      Given -> @ra = @chapter5.addToArray([1,'2',3,'four'], 'four', 3,'2',1)
      Then -> expect([1,'2',3,'four','four',3,'2',1]).toEqual @ra

