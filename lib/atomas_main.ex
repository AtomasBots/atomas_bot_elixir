defmodule AtomasMain do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    children = []

    if Mix.env != :test, do: executeForever

    opts = [strategy: :one_for_one, name: AtomasMain.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def executeForever do
    Bot.execute
    executeForever
  end
end
