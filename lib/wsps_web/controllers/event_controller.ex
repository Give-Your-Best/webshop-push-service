defmodule WspsWeb.EventController do
  use WspsWeb, :controller

  # alias Wsps.Event

  action_fallback WspsWeb.FallbackController

  def create(conn, %{"topic" => topic, "data" => data, "event" => event}) do
    WspsWeb.Endpoint.broadcast(topic, event, data)

    conn
    |> put_status(:created)
    |> put_resp_content_type("application/json")
    |> json(%{created: true})
  end
end
