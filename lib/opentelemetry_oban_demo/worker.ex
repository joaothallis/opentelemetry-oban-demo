defmodule OpentelemetryObanDemo.Worker do
  use Oban.Worker

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"id" => "invalid"}}) do
    {:error, :invalid_id}
  end

  def perform(%Oban.Job{args: %{"id" => _id}}) do
    :ok
  end
end
