defmodule MyRouter do
  use Plug.Router

  if Mix.env == :dev do
    import Plug.Debugger
  end

  plug :match
  plug :dispatch

  get "/" do
    put_resp_content_type(conn, "text/plain")
    send_resp(conn, 200, "HELLO")
  end

  match _ do
    put_resp_content_type(conn, "text/plain")
    send_resp(conn, 404, "oops")
  end
end
