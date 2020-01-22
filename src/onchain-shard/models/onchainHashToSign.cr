require "big"
require "json"

module OnChain
  module API
    
    struct OnchainHashToSign
    
      def initialize(
        @input_index : UInt64,
        @public_key : String,
        @hash_to_sign : String,
        @signature : String)
      end
    
      JSON.mapping(
        input_index: UInt64,
        public_key: String,
        hash_to_sign: String,
        signature: String)
      end
    
  end
end