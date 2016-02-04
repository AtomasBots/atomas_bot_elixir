defmodule Game do
  @moduledoc false

  @derive [Poison.Encoder]

  defstruct [:id,:board,:next,:round,:score,:previous_elements]

  def move(gameId, target) do
    decode BotApi.callMove(gameId, target)
  end

  def new(name) do
    decode BotApi.callNewGame(name)
  end

  def decode(string) do
    Poison.decode!(string, as: %Game{})
  end
end
