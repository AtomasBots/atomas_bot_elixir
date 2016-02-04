defmodule BotLogic do
  @moduledoc false

  def name do
    "Ordon"
  end

  def nextMove(game) do
    nextMove(game, game.next)
  end

  def nextMove(game, next) when next == 0 do
    addPlus(game)
  end

  def nextMove(game, next) do
    addElement(game, next)
  end

  def addPlus(game) do
    firstPair(game.board, 0)
  end

  def firstPair(board, index) do
    _iterate(board, 0)
    #if List.first(board) == List.first(List.delete_at(board, 0)), do: index + 1, else: firstPair(List.delete_at(board, 0), index + 1)
  end

  def _iterate([h|tail], acc) do
    _iterate(tail, acc + 1)
  end

  def _iterate([],acc) do
    acc
  end
  def addElement(game, next) do
    0
  end
end