defmodule WspsWeb.EventController do
  use WspsWeb, :controller

  # alias Wsps.Events
  # alias Wsps.Event

  action_fallback WspsWeb.FallbackController

  def create(conn, %{"event" => _event_params}) do
    WspsWeb.Endpoint.broadcast("ping", "test", %{data: "test"})

    conn
    |> put_status(:created)
    |> put_resp_content_type("application/json")
    |> json(%{created: true})
  end
end
