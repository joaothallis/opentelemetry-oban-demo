import Config

config :opentelemetry_oban_demo, OpentelemetryObanDemo.Repo,
  database: "opentelemetry_oban_demo_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :opentelemetry_oban_demo, ecto_repos: [OpentelemetryObanDemo.Repo]

config :opentelemetry_oban_demo, Oban, repo: OpentelemetryObanDemo.Repo

import_config "#{Mix.env()}.exs"
