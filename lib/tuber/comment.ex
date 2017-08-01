defmodule Tuber.Comment do

  @doc """
  List comments

  ref: https://developers.google.com/youtube/v3/docs/comments/list
  """
  @spec list(Keyword.t) :: {:ok, map()} | {:error, :atom}
  def list(params) do
    defaultParams =[
      part: "id,snippet",
    ]
    params = Keyword.merge(defaultParams, params)

    "/comments"
    |> Tuber.Client.get([], params: params)
    |> Tuber.Client.unwrap
  end
end
