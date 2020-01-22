require "big"
require "json"

module OnChain
  module API
    
    struct OnchainTransactionReply
    
      def initialize(
        @tx : String,
        @total_input_value : String,
        @hashes_to_sign : Array(OnchainHashToSign))
      end
    
      JSON.mapping(
        tx: String,
        total_input_value: String,
        hashes_to_sign: Array(OnchainHashToSign))
      end
    
  end
end