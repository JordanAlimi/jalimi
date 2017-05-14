defmodule Jalimi do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Jalimi.AppWorker, []),
    ]

    opts = [strategy: :one_for_one, name: Jalimi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
