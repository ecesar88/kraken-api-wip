import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :kraken_api, KrakenApi.Repo,
  database: Path.expand("../kraken_api_test.db", Path.dirname(__ENV__.file)),
  pool_size: 5,
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :kraken_api, KrakenApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "nsT85LferdPo3nHkR52vPsftjf9mz4dQ4xE3fxAh92RYeEf7uujaH+/y9+X12kLs",
  server: false

# In test we don't send emails.
config :kraken_api, KrakenApi.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
