defmodule Tuber.Search do
  @spec list(String.t) :: {:ok, map()} | {:error, :atom}
  @doc """
  Search videos by keyword
  """
  def list(query) do
    params = [
      part: "id,snippet",
      q: query
    ]

    Tuber.Client.get("/search", [], params: params)
  end
end
