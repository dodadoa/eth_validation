defmodule EthValidationTest do
  use ExUnit.Case
  doctest EthValidation

  describe "valid_address?/1" do
    test "empty string" do
      assert EthValidation.valid_address?("") == false
    end

    test "not 0x in front" do
      assert EthValidation.valid_address?("4f049AC87Afba44F8074F7d65eB4eb495b2E3bFD") == false
    end

    test "not 40 characters after 0x" do
      assert EthValidation.valid_address?("0x1234") == false
    end
  end


  describe "to_checksum_address/1" do

    test "should return correct checksum" do
      {:ok, checksum} = EthValidation.to_checksum_address("0xfb6916095ca1df60bb79ce92ce3ea74c37c5d359")
      assert checksum == "0xfB6916095ca1df60bB79Ce92cE3Ea74c37c5d359"
    end

    test "should return correct checksum 2" do
      {:ok, checksum} = EthValidation.to_checksum_address("0x52908400098527886E0F7030069857D2E4169EE7")
      assert checksum == "0x52908400098527886E0F7030069857D2E4169EE7"
    end

    test "should return correct checksum 3" do
      {:ok, checksum} = EthValidation.to_checksum_address("0xde709f2102306220921060314715629080e2fb77")
      assert checksum == "0xde709f2102306220921060314715629080e2fb77"
    end

    test "should return correct checksum 4" do
      {:ok, checksum} = EthValidation.to_checksum_address("0xdbF03B407c01E7cD3CBea99509d93f8DDDC8C6FB")
      assert checksum == "0xdbF03B407c01E7cD3CBea99509d93f8DDDC8C6FB"
    end
  end
end
