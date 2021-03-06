defmodule EliChartsWeb.Router do
  use EliChartsWeb, :router

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

  scope "/", EliChartsWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/charts", PageController, :charts
    get "/charts-crypto", PageController, :charts_crypto_compare
    get "/charts-coincap", PageController, :charts_coincap
  end

  # Other scopes may use custom stacks.
  # scope "/api", EliChartsWeb do
  #   pipe_through :api
  # end
end
