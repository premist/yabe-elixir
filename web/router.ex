defmodule Yabe.Router do
  use Yabe.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Yabe do
    pipe_through :api # Use the default browser stack
    get "/", PageController, :index
    resources "/posts", PostController, except: [:new, :edit]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Yabe do
  #   pipe_through :api
  # end
end
