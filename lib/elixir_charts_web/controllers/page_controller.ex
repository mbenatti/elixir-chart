defmodule EliChartsWeb.PageController do
  use EliChartsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
