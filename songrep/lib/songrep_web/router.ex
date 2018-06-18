defmodule SongrepWeb.Router do
  use SongrepWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SongrepWeb do
    pipe_through :browser # Use the default browser stack

    get "/albums", AlbumsController, :index
    get "/", PageController, :index
    resources "/users", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", SongrepWeb do
  #   pipe_through :api
  # end
end
