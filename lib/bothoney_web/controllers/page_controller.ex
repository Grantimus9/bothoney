defmodule BothoneyWeb.PageController do
  use BothoneyWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
