defmodule Yabe.PageControllerTest do
  use Yabe.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert json_response(conn, 200) == %{"hello" => "world"}
  end
end
