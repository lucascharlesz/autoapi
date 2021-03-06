defmodule GreeterTest do
  use ExUnit.Case
  doctest Greeter

  test "greets the world" do
    assert Greeter.hello("Sean") == "Hello, Sean"
    assert_received :hello
  end
end
