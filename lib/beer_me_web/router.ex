defmodule BeerMeWeb.Router do
  use BeerMeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Phauxth.Authenticate
  end

  scope "/", BeerMeWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/users", UserController
    resources "/sessions", SessionController, only: [:new, :create, :delete]
  end

end
