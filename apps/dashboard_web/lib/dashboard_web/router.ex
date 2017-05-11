defmodule Dashboard.Web.Router do
  use Dashboard.Web, :router
  use Terraform, terraformer: Dashboard.Web.Terraformers.Rails

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

  scope "/", Dashboard.Web do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/foo", PageController, :index
    get "/bar", PageController, :index
    get "/baz", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Dashboard.Web do
  #   pipe_through :api
  # end
end
