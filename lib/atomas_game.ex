defmodule AtomasGame do
  @moduledoc false

  @derive [Poison.Encoder]

  defstruct [:id,:board,:next,:round,:score]

end
