use Mix.Config

config :dashboard, ecto_repos: [Dashboard.Repo]

import_config "#{Mix.env}.exs"
