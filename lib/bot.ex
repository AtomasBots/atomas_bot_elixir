defmodule Bot do
  @moduledoc false

  def hello() do
    game = Game.new("elixir")
    loopGame(game, game.next)
  end

  def loopGame(game, next) when next != -1000 do
    gameAfter = nextGame(game)
    loopGame(gameAfter, gameAfter.next)
  end

  def nextGame(game) do
    nextMove = nextMove(game)
    IO.puts("nextMove : #{nextMove}")
    Game.move(game.id, nextMove)
  end

  def loopGame(game, next) do
     IO.puts("game ends")
  end

  def nextMove(game) do
    0 #insert logic here
  end

end
