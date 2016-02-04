defmodule AtomasMove do
  @moduledoc false

  def callMove(gameId, target) do
    url = "192.168.1.65/move/#{gameId}/#{target}"
    response = HTTPotion.get url
    response.body
  end

end
