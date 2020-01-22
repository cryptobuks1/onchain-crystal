require "big"
require "json"

module OnChain
  module API
    
    struct OnchainBalancesReply
    
      def initialize(
        @balances : Array(OnchainBalanceReply))
      end
    
      JSON.mapping(
        balances: Array(OnchainBalanceReply))
      end
    
  end
end