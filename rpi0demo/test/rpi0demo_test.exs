defmodule Rpi0demoTest do
  use ExUnit.Case
  doctest Rpi0demo

  test "greets the world" do
    assert Rpi0demo.hello() == :world
  end
end
