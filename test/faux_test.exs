defmodule FauxTest do
  use ExUnit.Case

  doctest Faux
  doctest_file "README.md"
  doctest_file "guides/Getting Started.md"

  test "greets the world" do
    assert Faux.hello() == :world
  end
end
