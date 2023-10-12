defmodule HelloControllerTest do
  use HelloWeb.ConnCase


test "GET /hello", %{conn: conn} do

  conn = get(conn, ~p"/hello")

  assert html_response(conn, 200) =~ "Hello page rendered successfully"

end

end
