use Mix.Config

# Configure your database
config :dashboard, Dashboard.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "dashboard_dev",
  hostname: "localhost",
  pool_size: 10
