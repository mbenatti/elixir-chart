defmodule EliChartsWeb.PageController do
  use EliChartsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def charts(conn, _params) do
    render conn, "charts.html",
      simple_data: Poison.encode!([[175, 60], [190, 80], [180, 75]])
  end

  def charts_crypto_compare(conn, _params) do
    render conn, "charts-crypto.html"
  end

  def charts_coincap(conn, _params) do
    render conn, "charts-coincap.html"
  end
end
