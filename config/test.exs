use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :yabe, Yabe.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :yabe, Yabe.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  database: "yabe_test",
  hostname: "local.docker",
  pool: Ecto.Adapters.SQL.Sandbox
