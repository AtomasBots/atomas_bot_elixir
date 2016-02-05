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
    newBoards = possibleBoards(board, 0)
    boardsValues = Enum.map(newBoards, &BoardEval.eval(&1))
    indexBoards = boardsValues |> Enum.with_index
    {_, index} = Enum.max_by(indexBoards,  fn {v, i} -> v end)
    index
  end

  def possibleBoards(board, next) do
    size = board |> Enum.count
    Enum.map(0..size, &BotLogic.newBoard(board, next, &1))
  end



  #def bestIndex(board, next) do
  #
  #end

end
