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

  def firstPair([h|tail], index) do
    _firstPair(h, tail, 1)
  end

  def _firstPair(current, [h|tail], acc) when current == h do
    acc
  end

  def _firstPair(current, [h|tail], acc) do
    _firstPair(h, tail, acc + 1)
  end

  def _firstPair(current, [], acc) do
    acc
  end

  def addElement(game, next) do
    0
  end
end