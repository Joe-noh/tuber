defmodule Tuber do
  @moduledoc """
  This is the main module to interact with YouTube API.
  """

  def search(query) do
    with {:ok, %{body: body}} <- Tuber.Client.get("/search", [], params: [part: "id,snippet", q: query]) do
      body
    else
      {:error, %{reason: reason}} -> {:error, reason}
    end
  end
end
