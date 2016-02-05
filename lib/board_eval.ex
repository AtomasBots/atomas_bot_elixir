defmodule BoardEval do
  @moduledoc false

  def eval(board) do
    evalPlusAtIndex(board, Enum.find_index(board, fn(x) -> x == 0 end))
  end

  def evalPlusAtIndex(board, index) when index == nil do
    0
  end

  def evalPlusAtIndex(board, index) do
    movePlusToMiddle(board, index) |> listOfJoinedElements |> valueOfEvalFor
  end

  def movePlusToMiddle(board, indexOfPlus) do
    size = Enum.count(board)
    middle = div(size, 2)
    toDrop = size - middle + indexOfPlus
    newBoard = board |> Stream.cycle |>  Stream.drop(toDrop) |> Stream.take(size) |> Enum.to_list
    {newBoard, middle}
  end

  def listOfJoinedElements({board, index}) do
    if Enum.at(board, index - 1) == Enum.at(board, index + 1),
    do: [Enum.at(board, index - 1), Enum.at(board, index + 1)] ++ listOfJoinedElements({List.delete_at(List.delete_at(board, index + 1),index - 1), index - 1}),
    else: []
  end

  def valueOfEvalFor(listOfJoinedElements) do
    Enum.sum(listOfJoinedElements)
  end
end