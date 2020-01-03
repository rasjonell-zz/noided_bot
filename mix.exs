defmodule App.Mixfile do
  use Mix.Project

  def project do
    [
      app: :app,
      version: "0.1.0",
      elixir: "~> 1.3",
      default_task: "server",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  def application do
    [applications: [:logger, :nadia, :httpoison, :edeliver], mod: {App, []}]
  end

  defp deps do
    [
      {:nadia, "~> 0.4.1"},
      {:httpoison, "~> 1.5.1"},
      {:poison, "~> 3.1"},
      {:distillery, "~> 2.1"},
      {:edeliver, ">= 1.6.0"}
    ]
  end

  defp aliases do
    [server: "run --no-halt"]
  end
end
