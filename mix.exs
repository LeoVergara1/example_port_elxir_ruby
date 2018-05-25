defmodule ExamplePortElxirRuby.MixProject do
  use Mix.Project

  def project do
    [
      app: :example_port_elxir_ruby,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:export, "~> 0.0.7"},
      {:erlport, github: "hdima/erlport", manager: :make}
    ]
  end
end
