describe "chapter 5", ->
  Given -> @chapter5 = chapter5

  describe "a function's airity is the number of formal parameters", ->
    Given -> @airity = new @chapter5.Airity()
    Then -> 0 == @airity.function0.length
    Then -> 1 == @airity.function1.length
    Then -> 10 == @airity.function10.length


