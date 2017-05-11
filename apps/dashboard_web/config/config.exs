# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dashboard_web,
  namespace: Dashboard.Web,
  ecto_repos: [Dashboard.Repo]

# Configures the endpoint
config :dashboard_web, Dashboard.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "krI+NsrjYLTtzo6dybUw/zJgJ/JoO+rzLC7/WyHm56445w0nGaxK1Fivaz04BgE4",
  render_errors: [view: Dashboard.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Dashboard.Web.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
