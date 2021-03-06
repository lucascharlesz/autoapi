defmodule Autoapi.Math do
  def add(a, b) do
    IO.puts(a + b)
  end

  def double(x) do
    :timer.sleep(2000)
    x * 2
  end
end
