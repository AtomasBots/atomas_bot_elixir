defmodule Game do
  @moduledoc false

  @derive [Poison.Encoder]

  defstruct [:id,:board,:next,:round,:score]

  def move(gameId, target) do
    decode BotApi.callMove(gameId, target)
  end

  def new() do
    decode BotApi.callNewGame()
  end

  def decode(string) do
    Poison.decode!(string, as: %Game{})
  end
end
