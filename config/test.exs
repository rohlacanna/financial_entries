import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :financial_entries, FinancialEntries.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "financial_entries_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :financial_entries, FinancialEntriesWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "h3J2yKiJ5Dt+9Jte5QleN8qKVLmFKEoyv3vTYI+GTHuYEntUgvfzcnxs19ck3GPL",
  server: false

# In test we don't send emails.
config :financial_entries, FinancialEntries.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
