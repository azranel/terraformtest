use Mix.Config

# Configure your database
config :dashboard, Dashboard.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "dashboard_dev",
  hostname: "localhost",
  pool_size: 10
