defmodule BotApi do
  @moduledoc false

  @url "192.168.1.65"

  def callNewGame() do
    call "#{@url}/new_game"
  end

  def callMove(gameId, target) do
    call "#{@url}/move/#{gameId}/#{target}"
  end

  def call(url) do
    HTTPotion.get(url).body
  end
end
