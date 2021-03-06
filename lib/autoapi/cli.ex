defmodule Autoapi.CLI do
  def main(args \\ []) do
    args
    |> parse_args
    |> response
    |> IO.puts()
  end

  defp parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(switches: [upcase: :boolean, downcase: :boolean])

    {opts, List.to_string(word)}
  end

  defp response({opts, word}) do
    IO.inspect opts

    case opts do
      [upcase: true] -> String.upcase(word)
      [downcase: true] -> String.downcase(word)
      _ -> word
    end
  end
end
