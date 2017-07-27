defmodule Tuber do
  @moduledoc """
  This is the main module to interact with YouTube API.
  """

  def search(query) do
    with {:ok, %{body: body}} <- HTTPoison.get(base_url() <> "/search", [], params: [part: "id,snippet", key: api_key(), q: query]) do
      Poison.decode(body)
    else
      {:error, %{reason: reason}} -> {:error, reason}
    end
  end

  defp base_url do
    "https://www.googleapis.com/youtube/v3"
  end

  defp api_key do
    Application.get_env(:tuber, :api_key)
  end
end
