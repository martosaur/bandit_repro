defmodule BanditReproWeb.Router do
  use BanditReproWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BanditReproWeb do
    pipe_through :api
  end
end
