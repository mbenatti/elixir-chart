defmodule EliChartsWeb.PageController do
  use EliChartsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def charts(conn, _params) do
    render conn, "charts.html",
      simple_data: Poison.encode!([[175, 60], [190, 80], [180, 75]]),
      timeline_data: "[
                      [\"Washington\", \"1789-04-29\", \"1797-03-03\"],
                      [\"Adams\", \"1797-03-03\", \"1801-03-03\"],
                      [\"Jefferson\", \"1801-03-03\", \"1809-03-03\"]
                    ]"
  end

  def charts_crypto_compare(conn, _params) do
    render conn, "charts-crypto.html",
      day_data: ElixirCharts.CryptoCompare.get_day_hist(),
      day_data120: ElixirCharts.CryptoCompare.get_day_hist120()

  end

  def charts_coincap(conn, _params) do
    render conn, "charts-coincap.html",
      day_data180: CoinCap.history_180day!("BTC")["price"]
  end
end
