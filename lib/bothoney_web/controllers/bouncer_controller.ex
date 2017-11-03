defmodule BothoneyWeb.BouncerController do
  use BothoneyWeb, :controller

  plug :put_layout, "bounce.html"

  def bounce(conn, _params) do
    render conn, "bounce.html"
  end
end
