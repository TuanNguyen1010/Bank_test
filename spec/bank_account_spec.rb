require 'bank_account'

describe Bank_account do 

  before(:each) do 
    @bank_account = Bank_account.new
  end 

  describe 'deposit' do
    it 'deposit 1000 into the account' do 
      expect { @bank_account.deposit(1000) } .to change { @bank_account.balance } .by(1000)
    end 
  end 
end 