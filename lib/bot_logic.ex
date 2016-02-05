defmodule BotLogic do
  @moduledoc false

  def name do
    "Delta Szwadron Super Cool Komando Wilkow Alfa"
  end

  def nextMove(game) do
    0 #insert logic here
  end

  def newBoard(board, next, index) do
    List.insert_at(board, index, next)
  end

  def bestIndex(board) do
    size = board |> Enum.count
    newBoards = Enum.map(0..size, &newBoard(board, 0, &1))
    boardsValues = Enum.map(newBoards, &BoardEval.eval(&1))
    indexBoards = boardsValues |> Enum.with_index
    {_, index} = Enum.max_by(indexBoards,  fn {v, i} -> v end)
    index
  end

end
