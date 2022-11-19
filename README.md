# AudioPlayer

Play sound file using elixir. NIF implementation using rodio crate.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `audio_player` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:audio_player, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/audio_player>.

### Usage

```elixir
    AudioPlayer.play("~/audio.mp3")
```

