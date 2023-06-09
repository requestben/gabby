defmodule Gabby.MixProject do
  use Mix.Project

  def project do
    [
      app: :gabby,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Gabby.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:maelstrom, "~> 0.1.0"},
      {:jason, "~> 1.3"}
    ]
  end

  defp escript do
    [main_module: Gabby]
  end
end
