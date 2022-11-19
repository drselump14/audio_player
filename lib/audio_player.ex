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
    version: version

  @doc """
  Play an audio file

  ## Examples

      iex> AudioPlayer.play("audio.mp3")

  """
  @spec play(String.t()) :: :ok
  def play(_audio_file_path), do: error()

  defp(error(), do: :erlang.nif_error(:nif_not_loaded))
end
