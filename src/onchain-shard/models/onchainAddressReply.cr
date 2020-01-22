require "big"
require "json"

module OnChain
  module API
    
    struct OnchainAddressReply
    
      def initialize(
        @network_address : String)
      end
    
      JSON.mapping(
        network_address: String)
      end
    
  end
end