defmodule AudioPlayer do
  @moduledoc """
  Documentation for `AudioPlayer`.
  """

  use Rustler, otp_app: :audio_player, crate: "audio_player"

  @doc """
  Play an audio file

  ## Examples

      iex> AudioPlayer.play("audio.mp3")

  """
  @spec play(String.t()) :: :ok
  def play(_audio_file_path), do: error()

  defp(error(), do: :erlang.nif_error(:nif_not_loaded))
end
