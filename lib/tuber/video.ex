defmodule Tuber.Video do

  @doc """
  List videos

  ref: https://developers.google.com/youtube/v3/docs/videos/list
  """
  @spec list(Keyword.t) :: {:ok, map()} | {:error, :atom}
  def list(params) do
    defaultParams =[
      part: "id,snippet",
    ]
    params = Keyword.merge(defaultParams, params)

    "/videos"
    |> Tuber.Client.get([], params: params)
    |> Tuber.Client.unwrap
  end
end
