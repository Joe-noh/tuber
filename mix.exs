defmodule Tuber.Mixfile do
  use Mix.Project

  def project, do: [
    app: :tuber,
    version: "0.1.0",
    elixir: "~> 1.5",
    start_permanent: Mix.env == :prod,
    deps: deps(),
  ]

  def application, do: [
    extra_applications: [:logger],
  ]

  defp deps, do: [
    {:httpoison, "~> 0.12"},
    {:poison, "~> 3.1"},
  ]
end
