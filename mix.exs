defmodule EthValidation.MixProject do
  use Mix.Project

  def project do
    [
      app: :eth_validation,
      version: "0.1.0",
      description: "validation for eth",
      package: [
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/dodadoa/eth_validation"},
      ],
      elixir: "~> 1.13",
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
      {:ex_keccak, "~> 0.4.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
