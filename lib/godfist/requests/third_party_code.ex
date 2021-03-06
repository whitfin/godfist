defmodule Godfist.ThirdPartyCode do
  @moduledoc """
  Third Party Code module.
  """

  alias Godfist.LeagueRates

  @endpoint "/lol/platform/v3/third-party-code"

  @doc """
  Get a third party code for a given summoner ID.
  """
  @spec code(atom, integer) :: {:ok, String.t()} | {:error, String.t()}
  def code(region, summoner_id) do
    rest = @endpoint <> "/by-summoner/" <> summoner_id

    LeagueRates.handle_rate(region, rest, :other)
  end
end
