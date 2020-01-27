require 'bank_account'

describe BankAccount do 

  before(:each) do 
    @bank_account = BankAccount.new
  end 

  describe 'deposit' do
    it 'deposit 1000 into the account' do 
      expect { @bank_account.deposit(1000) } .to change { @bank_account.balance } .by(1000)
    end 
  end 

  describe 'withdraw' do 
    it ' withdraw 500 from the account' do 
      @bank_account.deposit(500)
      expect { @bank_account.withdraw(500) }.to change { @bank_account.balance } .by(-500)
    end 
  end
  
  describe 'transaction' do 
    it 'display amount,date and balance for deposit of 1000 on 10-01-2012' do
      @bank_account.deposit(1000, "10/01/2012")
      expect(@bank_account.transaction).to eq(['10/01/2012 || 1000.00 || || 1000.00'])
    end  
  end 
end 
