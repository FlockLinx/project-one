defmodule ProjectOneWeb.Router do
  use ProjectOneWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ProjectOneWeb do
    pipe_through :api
    get("/users/custom/:word", UserController, :custom)
    resources "/users", UserController
  end
end
