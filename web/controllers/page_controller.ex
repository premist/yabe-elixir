defmodule Yabe.PageController do
  use Yabe.Web, :controller

  def index(conn, _params) do
    json conn, %{hello: "world"}
  end
end
