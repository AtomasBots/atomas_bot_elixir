defmodule BoardEvalTest do
  use ExUnit.Case

  test "Eval returns 0 for hopeless board" do
    assert BoardEval.eval([1, 2, 3]) == 0
  end

  test "Eval returns 2 when two ones on board" do
    assert BoardEval.eval([1, 0, 1]) == 2
  end

  test "Eval returns 0 when plus is between 1 and 2" do
    assert BoardEval.eval([1, 0, 2]) == 0
  end
end