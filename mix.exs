defmodule Tuber.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project, do: [
    app: :tuber,
    version: @version,
    elixir: "~> 1.5",
    start_permanent: Mix.env == :prod,
    deps: deps(),

    # hex
    description: description(),
    package: package()
  ]

  def application, do: [
    extra_applications: [:logger],
  ]

  defp deps, do: [
    {:httpoison, "~> 0.12"},
    {:poison, "~> 3.1"},
  ]

  defp description, do: """
    YouTube Data API v3 Client for Elixir. Under development. Please do not use.
  """

  defp package, do: [
    maintainers: ["Joe Honzawa"],
    licenses: ["MIT"],
    files: ~w[lib mix.exs README.md LICENSE],
    links: %{
      "GitHub" => "https://github.com/Joe-noh/tuber"
    },
  ]
end
