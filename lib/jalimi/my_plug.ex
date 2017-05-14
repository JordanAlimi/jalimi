defmodule Router do
  use Plug.Router

  if Mix.env == :dev do
    use Plug.Debugger
  end

  Plug :match
  Plug :dispatch

  get "/" do
    send_resp(conn, 200, "HELLO")
  end
end
