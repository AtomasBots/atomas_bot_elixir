defmodule AtomasBotElixirTest do
  use ExUnit.Case
  doctest AtomasMain

  test "should create new board" do
    board = [1,2,3,4,5]

    assert BotLogic.newBoard(board, 1, 0) == [1,1,2,3,4,5]
  end

  test "should generate new boards" do
    board = [1,2]

    assert BotLogic.possibleBoards(board, 5) == [[5,1,2],[1,5,2],[1,2,5]]
  end

  test "should return index of the best scored board" do
    board = [2,2,5]

    assert BotLogic.bestIndex(board) == 1
  end

  test "should return index of the best scored board with given next" do
    board = [2,2,5]

    assert BotLogic.bestIndex(board,5) == 2
  end

end
