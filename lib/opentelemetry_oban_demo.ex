defmodule OpentelemetryObanDemo do
  @moduledoc """
  Documentation for `OpentelemetryObanDemo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> OpentelemetryObanDemo.hello()
      :world

  """
  def hello do
    :world
  end

  def insert(id) do
    %{id: id} |> OpentelemetryObanDemo.Worker.new() |> Oban.insert()
  end
end
