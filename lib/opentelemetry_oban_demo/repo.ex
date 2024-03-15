defmodule OpentelemetryObanDemo.Repo do
  use Ecto.Repo,
    otp_app: :opentelemetry_oban_demo,
    adapter: Ecto.Adapters.Postgres
end
