defmodule IpAgg.MixProject do
  use Mix.Project

  def project do
    [
      app: :ip_agg,
      version: "1.0.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp deps do
    []
  end
end
