# EthValidation

now only has validation for eth address with [EIP-55](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-55.md)

inspired by [eip_55](https://github.com/unnawut/eip_55) by Unnawut, but instead use https://github.com/tzumby/ex_keccak which is
Rustle - NIFs instead of [:ex_sha3](https://hex.pm/packages/ex_sha3).

## Limitation
- need to install `Rust` in your system

## Installation

### Requirement
- need to hava `Rust` installed in your system

### Hex 
If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `eth_validation` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:eth_validation, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/eth_validation>.

