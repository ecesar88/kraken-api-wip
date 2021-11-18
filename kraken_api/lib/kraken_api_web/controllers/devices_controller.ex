defmodule KrakenApiWeb.DevicesController do
  use KrakenApiWeb, :controller

  def get(conn, _params) do
    conn
    |> text("teste")
  end
end
