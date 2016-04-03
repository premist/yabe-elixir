defmodule Yabe.PageController do
  use Yabe.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
