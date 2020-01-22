require "./spec_helper"

describe OnChain::API::Address do

  it "should retrieve a bitcoin balance" do
  
    resp = OnChain::API::Address.getbalance("bitcoin", 
      "1STRonGxnFTeJiA7pgyneKknR29AwBM77")
  
    case resp
    when OnChain::API::OnchainBalanceReply
      resp.human_balance.should be > 19.50874242
    else
      puts resp.to_s
      true.should eq(false)
    end
  end
  
end