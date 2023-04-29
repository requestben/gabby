defmodule GabbyTest do
  use ExUnit.Case
  doctest Gabby

  test "greets the world" do
    assert Gabby.hello() == :world
  end
end
