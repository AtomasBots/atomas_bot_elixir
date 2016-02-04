defmodule Bot do
  @moduledoc false

  def hello() do
    IO.puts(Game.new.id)
    IO.puts(inspect(Game.move('2d9d53e4-97ce-4672-55e9-328daae28e97', 0).board))
  end

end
