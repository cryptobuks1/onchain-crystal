require "http/client"

module OnChain
  module API
    class Transaction

      # /v1/transaction/{coin_type} CreateTransaction
      def self.createtransaction(coin_type : String) : OnchainTransactionReply | ErrorMessage

        headers = HTTP::Headers.new
        if ENV["ONCHAIN_API_KEY"]? != nil
          headers.add("X-API-KEY", ENV["ONCHAIN_API_KEY"])
        end

        response = HTTP::Client.post "https://onchain.io/api/v1/transaction/#{coin_type}/", headers: headers

        return ErrorMessage.from_json response.body if response.status_code != 200

        onchaintransactionreply = OnchainTransactionReply.from_json response.body 


        return onchaintransactionreply
      end

    end
  end
end
