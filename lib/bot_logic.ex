defmodule BotLogic do
  @moduledoc false

  def name do
    "DeltaSzwadronSuperCoolKomandoWilkowAlfa"
  end

  def nextMove(game) do
    _nextMove(game.board, game.next)
  end

  def _nextMove(board, next) when next == 0 do
    bestIndex(board)
  end

  def _nextMove(board,next) do
    bestIndex(board, next)
  end

  def newBoard(board, next, index) do
    List.insert_at(board, index, next)
  end

  def bestIndex(board) do
    newBoards = possibleBoards(board, 0)
    boardsValues = Enum.map(newBoards, &BoardEval.eval(&1))
    findMaxValueIndex(boardsValues)
  end

  def possibleBoards(board, next) do
    size = board |> Enum.count
    Enum.map(0..size, &BotLogic.newBoard(board, next, &1))
  end

  def bestIndex(board, next) do
    newBoards = possibleBoards(board,next)
    boardsValues = Enum.map(newBoards, &bestIndex(&1))
    findMaxValueIndex(boardsValues)
  end

  def findMaxValueIndex(boardsValues) do
    indexBoards = boardsValues |> Enum.with_index
    {_, index} = Enum.max_by(indexBoards,  fn {v, i} -> v end)
    index
  end
end
