defmodule Tuber.Search do

  @doc """
  Search videos by keyword
  """
  @spec list(String.t) :: {:ok, map()} | {:error, :atom}
  def list(query) do
    params = [
      part: "id,snippet",
      q: query
    ]

    "/search"
    |> Tuber.Client.get([], params: params)
    |> Tuber.Client.unwrap
  end
end
