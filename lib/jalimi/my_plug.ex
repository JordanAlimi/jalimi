defmodule MyRouter do
  import Plug.Router

  if Mix.env == :dev do
    import Plug.Debugger
  end

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Poison.encode(%{status_code: "200", message: "You have succeeded."}))
  end

  match _ do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(404, Poison.encode(%{status_code: "404", message: "Page not found."}))
  end
end
