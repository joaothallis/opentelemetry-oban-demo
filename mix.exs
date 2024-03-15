defmodule OpentelemetryObanDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :opentelemetry_oban_demo,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      releases: [
        opentelemetry_oban_demo: [
          applications: [
            opentelemetry_exporter: :permanent,
            opentelemetry: :temporary,
            opentelemetry_oban_demo: :permanent
          ]
        ]
      ],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {OpentelemetryObanDemo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:oban, "~> 2.17"},
      {:opentelemetry, "~> 1.3"},
      {:opentelemetry_api, "~> 1.2"},
      {:opentelemetry_exporter, "~> 1.6"},
      {:opentelemetry_ecto, "~> 1.2"},
      {:opentelemetry_oban, "~> 1.1"}
    ]
  end
end
