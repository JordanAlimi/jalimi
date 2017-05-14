defmodule MyRouter do
  import Plug.Router

  if Mix.env == :dev do
    import Plug.Debugger
  end

  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "HELLO")
  end

  match _ do
    send_resp(conn, 404, "oops")
end
