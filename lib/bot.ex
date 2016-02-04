defmodule Bot do
  @moduledoc false

  def execute do
    game = Game.new(BotLogic.name)
    loopGame(game, game.next)
  end

  def loopGame(game, next) when next != -1000 do
    gameAfter = nextGame(game)
    loopGame(gameAfter, gameAfter.next)
  end

  def loopGame(game, next) do
     IO.puts("Game has ended, your score: #{game.score}")
  end

  def nextGame(game) do
    nextMove = BotLogic.nextMove(game)
    IO.puts("nextMove: #{nextMove}")
    Game.move(game.id, nextMove)
  end
end
