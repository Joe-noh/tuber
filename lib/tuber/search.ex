defmodule Tuber.Search do

  @doc """
  Search videos

  ref: https://developers.google.com/youtube/v3/docs/search/list?hl=ja
  """
  @spec list(Keyword.t) :: {:ok, map()} | {:error, :atom}
  def list(params) do
    defaultParams = [
      part: "id,snippet",
    ]
    params = Keyword.merge(defaultParams, params)

    "/search"
    |> Tuber.Client.get([], params: params)
    |> Tuber.Client.unwrap
  end
end
