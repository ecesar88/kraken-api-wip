defmodule KrakenApi.Repo do
  use Ecto.Repo,
    otp_app: :kraken_api,
    adapter: Ecto.Adapters.SQLite3
end
