defmodule Bot do
  @moduledoc false

  def hello() do
    game = Game.new
    loopGame(game, game.next)
  end

  def loopGame(game, next) when next != -1000 do
    nextMove = nextMove(game)
    IO.puts("nextMove : #{nextMove}")
    gameAfter = Game.move(game.id, nextMove)
    loopGame(gameAfter, gameAfter.next)
  end

  def loopGame(game, next) do
     IO.puts("game ends")
  end

  def nextMove(game) do
    0 #insert logic here
  end

end
