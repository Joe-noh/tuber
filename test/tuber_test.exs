defmodule TuberTest do
  use ExUnit.Case
  doctest Tuber

  test "greets the world" do
    assert Tuber.hello() == :world
  end
end
