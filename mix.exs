defmodule AudioPlayer.MixProject do
  use Mix.Project

  @version "0.2.2"
  def project do
    [
      app: :audio_player,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "audio_player",
      package: package(),
      description: "Play sound file using elixir. NIF implementation using rodio crate.",
      source_url: github_repo()
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
      {:ex_doc, "~> 0.27", only: :dev, runtime: false},
      {:rustler_precompiled, "~> 0.6.3"},
      {:rustler, "~> 0.29.1"}
    ]
  end

  defp package do
    [
      files: [
        "lib",
        "native/audio_player/src",
        "native/audio_player/.cargo",
        "native/audio_player/Cargo.toml",
        "mix.exs",
        "checksum-Elixir.AudioPlayer.exs",
        "README.md",
        "LICENSE.md"
      ],
      maintainers: ["Slamet Kristanto"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => github_repo()
      }
    ]
  end

  defp github_repo do
    "https://github.com/drselump14/audio_player"
  end
end
