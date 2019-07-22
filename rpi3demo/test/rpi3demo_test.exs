defmodule Rpi3demoTest do
  use ExUnit.Case
  doctest Rpi3demo

  test "greets the world" do
    assert Rpi3demo.hello() == :world
  end
end
