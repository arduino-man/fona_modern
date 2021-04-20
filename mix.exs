defmodule Fona.Mixfile do
  use Mix.Project

  def project do
    [app: :fona,
     version: "0.2.0",
     elixir: "~> 1.11",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     name: "Fona_Modern",
     source_url: "https://github.com/st23am/fona"
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger],
     mod: {Fona.Application, []}]
  end

  defp description() do
    "A hex package to control the Fona 808 shield by Adafruit Industries now updated for Circuits UART"
  end

  defp package() do
    [
      files: ["lib", "priv", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["James Smith", "Mario Solorzano"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/arduino-man/fona_modern"}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
     {:circuits_uart, "~> 1.4"},
     {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
