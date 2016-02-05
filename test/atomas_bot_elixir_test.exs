defmodule AtomasBotElixirTest do
  use ExUnit.Case
  doctest AtomasMain

  test "the truth" do
    assert 1 + 1 == 2
  end


  test "lets create a range" do
    board = [1,2,3,4,5]
    resultWithIndex = Enum.map(board, &square(&1)) |> Enum.with_index
    maxWithIndex = Enum.max_by(resultWithIndex, fn {v, i} -> v end)
    assert maxWithIndex ==  {25, 4}
  end

  def square(number) do
    number * number
  end

  test "should create new board" do
    board = [1,2,3,4,5]

    assert newBoard(board, 1, 0) == [1, 1,2,3,4,5]
  end

  def newBoard(board, next, index) do
    List.insert_at(board, index, next)
  end

  test "should generate new boards" do
    board = [1,2]
    size = board |> Enum.count
    results = Enum.map(0..size, &newBoard(board, 5, &1))
    assert results == [[5,1,2],[1,5,2],[1,2,5]]
  end

  test "evaluate generated board" do
    board = [2,2,5]
    size = board |> Enum.count
    newBoards = Enum.map(0..size, &newBoard(board, 0, &1))
    boardsValues = Enum.map(newBoards, &BoardEval.eval(&1))
    indexBoards = boardsValues |> Enum.with_index
    {_, index} = Enum.max_by(indexBoards,  fn {v, i} -> v end)

    assert index == 1
  end
end
