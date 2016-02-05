defmodule BoardEval do
  @moduledoc false

  def eval(board) do
    evalPlusAtIndex(board, Enum.find_index(board, fn(x) -> x == 0 end))
  end

  def evalPlusAtIndex(board, index) when index == nil do
    0
  end

  def evalPlusAtIndex(board, index) do
    2
  end
end