defmodule MoustasheServer do
  use Mix.Project

  def project do
    [
      app: :moustashe_server,
      version: "0.1.0",
      elixir: "~> 1.6-dev",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :ranch],
      mod: {MoustasheServer}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ranch, "~> 1.6"}
    ]
  end
end