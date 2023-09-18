defmodule AudioPlayer do
  @moduledoc """
  Documentation for `AudioPlayer`.
  """

  version = Mix.Project.config()[:version]

  use RustlerPrecompiled,
    otp_app: :audio_player,
    crate: "audio_player",
    base_url: "https://github.com/drselump14/audio_player/releases/download/v#{version}",
    force_build: System.get_env("RUSTLER_PRECOMPILATION_EXAMPLE_FORCE_BUILD") in ["1", "true"],
    version: version,
    targets: [
      "aarch64-apple-darwin",
      "aarch64-unknown-linux-gnu",
      "arm-unknown-linux-gnueabihf",
      "x86_64-apple-darwin",
      "x86_64-pc-windows-gnu",
      "x86_64-pc-windows-msvc",
      "x86_64-unknown-linux-musl"
    ]

  @doc """
  Play an audio file

  ## Examples

      iex> AudioPlayer.play("audio.mp3")

  """
  @spec play(String.t()) :: :ok
  def play(_audio_file_path), do: error()

  defp(error(), do: :erlang.nif_error(:nif_not_loaded))
end
