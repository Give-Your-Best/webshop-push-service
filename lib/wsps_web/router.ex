defmodule WspsWeb.Router do
  use WspsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", WspsWeb do
    pipe_through :api
    post "/event", EventController, :create
  end
end
