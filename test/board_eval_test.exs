defmodule BoardEvalTest do
  use ExUnit.Case

  test "Eval returns 0 for hopeless board" do
    assert BoardEval.eval([1, 2, 3]) == 0
  end

  test "Eval returns 2 when to ones on board" do
    assert BoardEval.eval([1, 0, 1]) == 2
  end
end