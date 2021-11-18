defmodule KrakenApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      KrakenApi.Repo,
      # Start the Telemetry supervisor
      KrakenApiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: KrakenApi.PubSub},
      # Start the Endpoint (http/https)
      KrakenApiWeb.Endpoint
      # Start a worker by calling: KrakenApi.Worker.start_link(arg)
      # {KrakenApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: KrakenApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    KrakenApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
