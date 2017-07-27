defmodule Tuber.Client do
  use HTTPoison.Base

  @endpoint "https://www.googleapis.com/youtube/v3"

  def process_url(path) do
    @endpoint <> path <> "&key=#{api_key()}"
  end

  def process_response_body(json) do
    Poison.decode!(json)
  end

  defp api_key do
    Application.get_env(:tuber, :api_key)
  end
end
