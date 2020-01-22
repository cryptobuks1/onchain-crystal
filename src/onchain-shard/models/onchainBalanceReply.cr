require "big"
require "json"

module OnChain
  module API
    
    struct OnchainBalanceReply
    
      def initialize(
        @usd_balance : Float64,
        @balance : String,
        @unconfirmed_balance : String,
        @human_balance : Float64,
        @human_unconfirmed_balance : Float64)
      end
    
      JSON.mapping(
        usd_balance: Float64,
        balance: String,
        unconfirmed_balance: String,
        human_balance: Float64,
        human_unconfirmed_balance: Float64)
      end
    
  end
end