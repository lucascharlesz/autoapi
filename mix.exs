defmodule Autoapi.MixProject do
  use Mix.Project

  def project do
    [
      app: :autoapi,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      escript: escript(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp escript do
    [main_module: Autoapi.CLI]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.1 or ~> 1.2"},
      {:phoenix_html, "~> 2.3"},
      {:cowboy, "~> 1.0", only: [:dev, :test]},
      {:slime, "~> 0.14"},
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc, "~> 0.19", only: :dev}
    ]
  end
end
