defmodule WspsWeb.ErrorJSONTest do
  use WspsWeb.ConnCase, async: true

  test "renders 404" do
    assert WspsWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert WspsWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
