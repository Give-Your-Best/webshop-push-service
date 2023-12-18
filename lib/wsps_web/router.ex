defmodule WspsWeb.Router do
  use WspsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WspsWeb do
    pipe_through :api
  end
end
