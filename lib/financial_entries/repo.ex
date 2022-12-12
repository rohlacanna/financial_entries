defmodule FinancialEntries.Repo do
  use Ecto.Repo,
    otp_app: :financial_entries,
    adapter: Ecto.Adapters.Postgres
end
