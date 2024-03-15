defmodule OpentelemetryObanDemo.Worker do
  use Oban.Worker

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"id" => "invalid"}}) do
    OpentelemetryObanDemo.hello()
    {:error, :invalid_id}
  end

  def perform(%Oban.Job{args: %{"id" => _id}}) do
    OpentelemetryObanDemo.hello()
    :ok
  end
end
