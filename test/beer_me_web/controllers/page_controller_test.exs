defmodule BeerMeWeb.PageControllerTest do
  use BeerMeWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "BEER ME"
  end
end
