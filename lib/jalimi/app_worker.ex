defmodule Jalimi.AppWorker do

  def start_link do
    port = System.get_env("PORT") |> String.to_integer
    Plug.Adapters.Cowboy.http Router, [], port: port
  end

end
