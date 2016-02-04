defmodule BotApi do
  @moduledoc false

  @url "192.168.1.65"

  def callNewGame(name) do
    call "#{@url}/new_game?name=#{name}"
  end

  def callMove(gameId, nextMove) do
    call "#{@url}/move/#{gameId}/#{nextMove}"
  end

  def call(url) do
    HTTPotion.get(url).body
  end
end
