defmodule ExamplePortElxirRubyTest do
  use ExUnit.Case
  doctest ExamplePortElxirRuby

  test "greets the world" do
    assert ExamplePortElxirRuby.hello() == :world
  end
end
