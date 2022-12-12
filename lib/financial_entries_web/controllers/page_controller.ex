defmodule FinancialEntriesWeb.PageController do
  use FinancialEntriesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
