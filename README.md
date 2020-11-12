# IpAgg

A GenServer app that aggregates IP addresses (Ipv4 only) using the current state

Input Example
```elixir
ips = [
  "1.2.3.4",
  "3.4.5.6",
  "10.1.0.38",
  "90.37.182.241",
  "10.12.15.0",
  "90.37.182.241",
  "172.10.11.15",
  "111.111.17.35",
  "3.4.5.6",
  "172.16.28.99"
]

{:ok, pid} = GenServer.start_link(IpAgg, %{})

GenServer.cast(pid, {:push, ips})
```

Output Example
```elixir
GenServer.call(pid, :get_state)
%{
  "1.2.3.4" => 1,
  "10.1.0.38" => 1,
  "10.12.15.0" => 1,
  "111.111.17.35" => 1,
  "172.10.11.15" => 1,
  "172.16.28.99" => 1,
  "3.4.5.6" => 2,
  "90.37.182.241" => 2
}
```
