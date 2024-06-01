defmodule PhobosTest do
  use ExUnit.Case
  doctest Phobos

  test "greets the world" do
    assert Phobos.hello() == :world
  end
end
