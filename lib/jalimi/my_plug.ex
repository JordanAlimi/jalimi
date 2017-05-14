defmodule MyPlug do
  import Plug.Conn

  def init(options) do
    # initialize options

    options
  end

  def call(conn, _opts) do
      route(conn.method, conn.path_info, conn)
  end

  def route("GET", [""], conn) do
    conn |> send_resp(200, "welcome to jalimi")
  end
  
  def route("GET", ["ping"], conn) do
    conn |> send_resp(200, "pong")
  end
end
