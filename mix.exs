defmodule PhoenixPostgresPubSub.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_postgres_pub_sub,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      build_embedded: Mix.env() == :prod,
      deps: deps(),
      description: "Subscribe to postgres notifications on specific database tables",
      package: [
        licenses: ["MIT"],
        maintainers: [" Lorenzo Sinisi "],
        links: %{"GitHub" => "https://github.com/lorenzosinisi/phoenix_postgres_pub_sub"}
      ]
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
      {:postgrex, "~> 0.13.3"},
      {:ecto, "~> 2.2.10"}
    ]
  end
end
