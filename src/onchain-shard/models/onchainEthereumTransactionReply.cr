require "big"
require "json"

module OnChain
  module API
    
    struct OnchainEthereumTransactionReply
    
      def initialize(
        @tx : String,
        @to_sign : String)
      end
    
      JSON.mapping(
        tx: String,
        to_sign: String)
      end
    
  end
end