defmodule App.DeathGrips do
  use HTTPoison.Base

  def process_request_url(url) do
    "https://deathgripsapi.rasjonell.now.sh" <> url
  end

  def process_response_body(body) do
    body
    |> Poison.decode!()
    |> Map.get("data")
  end
end
