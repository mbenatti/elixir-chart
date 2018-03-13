defmodule ElixirCharts.CryptoCompare do
  def get_day_hist() do
    {:ok, %{Data: data}} = CryptoCompare.histo_day("BTC", "BRL", [limit: 360])

    data
    |> Enum.map(fn  %{
       close: close,
       high: _high,
       low: _low,
       open: _open,
       time: timestamp,
       volumefrom: _volume_from,
       volumeto: volume_to
     } ->
      [DateTime.to_string(DateTime.from_unix!(timestamp)), close]
     end)
     |> Poison.encode!
  end

  def get_day_hist120() do
    {:ok, %{Data: data}} = CryptoCompare.histo_day("BTC", "BRL", [limit: 120])

    data
    |> Enum.map(fn  %{
       close: close,
       high: _high,
       low: _low,
       open: _open,
       time: timestamp,
       volumefrom: _volume_from,
       volumeto: volume_to
     } ->
      [DateTime.to_string(DateTime.from_unix!(timestamp)), close]
     end)
     |> Poison.encode!
  end

   def get_day_hist30() do
      {:ok, %{Data: data}} = CryptoCompare.histo_day("BTC", "BRL", [limit: 30])

      data
      |> Enum.map(fn  %{
         close: close,
         high: _high,
         low: _low,
         open: _open,
         time: timestamp,
         volumefrom: _volume_from,
         volumeto: volume_to
       } ->
        [DateTime.to_string(DateTime.from_unix!(timestamp)), close]
       end)
       |> Poison.encode!
    end
end