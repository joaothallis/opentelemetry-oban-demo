defmodule OpentelemetryObanDemoTest do
  use ExUnit.Case
  doctest OpentelemetryObanDemo

  test "greets the world" do
    assert OpentelemetryObanDemo.hello() == :world
  end
end
