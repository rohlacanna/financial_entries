defmodule FinancialEntriesWeb.ClientController do
  use FinancialEntriesWeb, :controller
  alias FinancialEntries.HelloWorld

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> text("welcome")
  end
end
