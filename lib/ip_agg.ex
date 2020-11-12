defmodule IpAgg do
  @moduledoc """
  Documentation for `IpAgg`.
  """
  use GenServer

  @impl true
  def init(_stack) do
    {:ok, %{}}
  end

  @impl true
  def handle_call(:get_state, _from, state) do
    {:reply, state, state}
  end

  @impl true
  def handle_cast({:push, ip_list}, state) do
    {
      :noreply,
      Enum.reduce(ip_list, state, fn ip, acc ->
        acc
        |> Map.update(ip, 1, fn ip_count -> ip_count + 1 end)
      end)
    }
  end
end
