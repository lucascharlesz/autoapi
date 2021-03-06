defmodule Greeter do
  @moduledoc """
  Module liable to greet everyone
  """

  @doc """
  Prints a hello message

  ## Parameters

    - name: String that represents the name of the person.

  ## Examples

      iex> Greeter.hello("Sean")
      "Hello, Sean"

      iex> Greeter.hello("pete")
      "Hello, pete"

  """
  @spec hello(binary) :: :ok
  def hello(name) do
    IO.puts("Hello, " <> name)
  end
end
