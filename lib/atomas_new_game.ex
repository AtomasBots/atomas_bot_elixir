defmodule AtomasNewGame do
  @moduledoc false

   defmodule Game do
     @derive [Poison.Encoder]
     defstruct [:id,:board,:next,:round,:score]
   end

   def callNewGame() do
      url = "192.168.1.65/new_game"
      response = HTTPotion.get url
      response.body
   end

    def newGame() do
        responseBody = callNewGame()
        game = Poison.decode!(responseBody, as: %Game{})
        game
    end
end