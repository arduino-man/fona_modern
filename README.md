# Fona

A library for controlling the [Fona 808 Shield](https://www.adafruit.com/product/2542) by Adafruit Industries


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `fona` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:fona_modern, "~> 0.2.0"}]
end
```
Raspberry Pi devices mat present an issue where talking to the Fona 808 is unstable.
Solve it by adding the following line to your project configuration:

```elixir
config :nerves, :erlinit, ctty: "ttyS0"
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/fona](https://hexdocs.pm/fona).

