defmodule OpentelemetryObanDemo do
  @moduledoc """
  Documentation for `OpentelemetryObanDemo`.
  """

  require Logger
  require OpenTelemetry.Tracer, as: Tracer

  @doc """
  Hello world.

  ## Examples

      iex> OpentelemetryObanDemo.hello()
      :world

  """
  def hello do
    Tracer.with_span "hello" do
      Logger.info("Hello")
      :world
    end
  end

  def opentelemetry_insert(id) do
    %{id: id} |> OpentelemetryObanDemo.Worker.new() |> OpentelemetryOban.insert()
  end

  def insert(id) do
    %{id: id} |> OpentelemetryObanDemo.Worker.new() |> Oban.insert()
  end
end
