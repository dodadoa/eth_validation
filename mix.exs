defmodule EthValidation.MixProject do
  use Mix.Project

  def project do
    [
      app: :eth_validation,
      version: "0.1.0",
      description: "validation for eth",
      license: "MIT",
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
      {:ex_keccak, "~> 0.4.0"}
    ]
  end
end
