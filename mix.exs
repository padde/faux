defmodule Faux.MixProject do
  use Mix.Project

  @source_url "https://github.com/padde/faux"

  def project do
    [
      app: :faux,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: "Generate high quality fake data with Elixir.",
      package: package(),
      deps: deps(),
      docs: docs()
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
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Patrick Oscity"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => @source_url,
        "Changelog" => "https://hexdocs.pm/faux/changelog.html"
      }
    ]
  end

  defp docs do
    [
      main: "Faux",
      source_url: @source_url,
      logo: "guides/images/logo-docs.png",
      extras: [
        "guides/Getting Started.md",
        "CHANGELOG.md"
      ]
    ]
  end
end
