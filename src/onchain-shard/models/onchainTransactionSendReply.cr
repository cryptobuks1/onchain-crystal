require "big"
require "json"

module OnChain
  module API
    
    struct OnchainTransactionSendReply
    
      def initialize(
        @tx_hash : String)
      end
    
      JSON.mapping(
        tx_hash: String)
      end
    
  end
end