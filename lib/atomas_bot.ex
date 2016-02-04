defmodule AtomasBot do
  @moduledoc false

  def hello() do
    IO.puts(AtomasNewGame.newGame.id)
  end

end