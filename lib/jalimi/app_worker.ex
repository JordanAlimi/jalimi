defmodule Jalimi.AppWorker do

  def start_link do
    port = System.get_env("PORT") |> String.to_integer
    { :ok, _ } = Plug.Adapters.Cowboy.http MyRouter, [], port: port
  end

end
