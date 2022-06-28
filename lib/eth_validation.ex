defmodule EthValidation do
  import ExKeccak

  def valid_address?("0x" <> address = full_address) when byte_size(address) == 40 do
    case to_checksum_address(full_address) do
      {:ok, checksum} -> checksum == full_address
      _ -> false
    end
  end

  def valid_address?(_address), do: false

  def to_checksum_address("0x" <> address) when byte_size(address) == 40 do
    address = address |> String.downcase()

    hash =
      address
      |> hash_256()
      |> Base.encode16(case: :lower)

    checksum =
      Enum.zip(
        String.graphemes(address),
        String.graphemes(hash)
      )
      |> Enum.map_join(fn {each_address, each_hash} ->
        cond do
          String.match?(each_address, ~r/[0-9]/) ->
            each_address

          String.match?(each_address, ~r/[a-f]/) and elem(Integer.parse(each_hash, 16), 0) >= 8 ->
            String.upcase(each_address)

          String.match?(each_address, ~r/[a-f]/) ->
            each_address

          true ->
            raise "Error"
        end
      end)

    {:ok, "0x" <> checksum}
  end

  def to_checksum_address(_address) do
    {:error, "cannot convert to checksum address"}
  end
end
