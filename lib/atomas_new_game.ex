defmodule AtomasNewGame do
  @moduledoc false

  def callNewGame() do
    url = "192.168.1.65/new_game"
    response = HTTPotion.get url
    response.body
  end

  def newGame() do
    responseBody = callNewGame()
    game = Poison.decode!(responseBody, as: %AtomasGame{})
    game
  end
end
