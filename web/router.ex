defmodule Infinity.Router do
  use Infinity.Web, :router

  # dispatch to the browser stack
  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  # displatch to the json stack
  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Infinity do
    pipe_through :browser # Use the default browser stack

    # all pages here will be rendered by the browser stack
    get "/", PageController, :index
    get "/hello", HelloController, :index
    get "/hi", HelloController, :helloWorld
    #  Phoenix will take whatever value that appears in that position in the url and pass a Dict with the key messenger pointing to that value to the controller.
    get "/hello/:messenger", HelloController, :show
    resources "/users", UserController

    # static assets
    get "/images", ImagesController, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", Infinity do
  #   pipe_through :api
  # end
end
