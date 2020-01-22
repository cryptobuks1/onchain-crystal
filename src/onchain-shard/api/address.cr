require "http/client"

module OnChain
  module API
    class Address

      # /v1/address/balance/{coin_type}/{address} GetBalance
      def self.getbalance(coin_type : String, address : String) : OnchainBalanceReply | ErrorMessage

        headers = HTTP::Headers.new
        if ENV["ONCHAIN_API_KEY"]? != nil
          headers.add("X-API-KEY", ENV["ONCHAIN_API_KEY"])
        end

        url = "https://onchain-api.azurewebsites.net/v1/address/balance/#{coin_type}/#{address}/"

        params = HTTP::Params.parse("")


        if params.size > 0
          url += "?" + params.to_s
        end

        response = HTTP::Client.get url, headers: headers

        return ErrorMessage.from_json response.body if response.status_code != 200

        onchainbalancereply = OnchainBalanceReply.from_json response.body 


        return onchainbalancereply
      end

      # /v1/address/{coin_type}/{public_key} GetNetworkAddress
      def self.getnetworkaddress(coin_type : String, public_key : String) : OnchainAddressReply | ErrorMessage

        headers = HTTP::Headers.new
        if ENV["ONCHAIN_API_KEY"]? != nil
          headers.add("X-API-KEY", ENV["ONCHAIN_API_KEY"])
        end

        url = "https://onchain.io/api/v1/address/#{coin_type}/#{public_key}/"

        params = HTTP::Params.parse("")


        if params.size > 0
          url += "?" + params.to_s
        end

        response = HTTP::Client.get url, headers: headers

        return ErrorMessage.from_json response.body if response.status_code != 200

        onchainaddressreply = OnchainAddressReply.from_json response.body 


        return onchainaddressreply
      end

    end
  end
end
