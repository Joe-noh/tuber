defmodule Tuber.CommentThread do

  @doc """
  List comment threads

  ref: https://developers.google.com/youtube/v3/docs/commentThreads/list
  """
  @spec list(Keyword.t) :: {:ok, map()} | {:error, :atom}
  def list(params) do
    defaultParams =[
      part: "id,snippet",
    ]
    params = Keyword.merge(defaultParams, params)

    "/commentThreads"
    |> Tuber.Client.get([], params: params)
    |> Tuber.Client.unwrap
  end
end
