defmodule OpentelemetryObanDemo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    OpentelemetryEcto.setup([:opentelemetry_oban_demo, :repo])
    OpentelemetryOban.setup()

    children = [
      OpentelemetryObanDemo.Repo,
      {Oban, Application.fetch_env!(:opentelemetry_oban_demo, Oban)}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OpentelemetryObanDemo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
