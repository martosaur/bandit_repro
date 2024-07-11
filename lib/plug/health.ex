Process.sleep(1_000)
defmodule BanditRepro.Plug.Health do
  import Plug.Conn

  def init(opts), do: opts

  def call(%Plug.Conn{request_path: "/healthz"} = conn, _opts) do
    conn
    |> send_resp(200, "OK\n")
    |> halt()
  end

  def call(conn, _opts), do: conn
end
