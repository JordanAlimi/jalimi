defmodule Router do
  import Plug.Router

  if Mix.env == :dev do
    use Plug.Debugger
  end

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "HELLO")
  end
end
