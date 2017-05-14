defmodule Router do
  import Plug.Router

  if Mix.env == :dev do
    import Plug.Debugger
  end

  get "/" do
    conn |> Plug.Conn.send_resp(conn, 200, "HELLO")
  end
end
