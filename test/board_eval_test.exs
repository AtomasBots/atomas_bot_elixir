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

  test "Eval returns 4 when plus joins two twos" do
    assert BoardEval.eval([2, 0, 2]) == 4
  end

  test "Move plus to middle does nothing when plus at middle" do
    assert BoardEval.movePlusToMiddle([2, 0, 4], 1) == {[2, 0, 4], 1}
  end

  test "Move plus to middle moves plus to middle from left" do
    assert BoardEval.movePlusToMiddle([0, 4, 2], 0) == {[2, 0, 4], 1}
  end

  test "Move plus to middle moves plus to middle from right" do
    assert BoardEval.movePlusToMiddle([4, 2, 0], 2) == {[2, 0, 4], 1}
  end

  test "Move plus to middle moves plus on larger board" do
    assert BoardEval.movePlusToMiddle([4, 2, 1, 0], 3) == {[2, 1, 0, 4], 2}
  end

  test "Eval considers board as a cycle" do
    assert BoardEval.eval([2, 2, 0]) == 4
  end
end