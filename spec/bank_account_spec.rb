require 'bank_account'

describe BankAccount do 

  before(:each) do 
    @bank_account = BankAccount.new
  end 

  describe '#deposit' do
    it 'deposit 1000 into the account' do 
      expect { @bank_account.deposit(1000) } .to change { @bank_account.balance } .by(1000)
    end 
  end 

  describe '#withdraw' do 
    it ' withdraw 500 from the account' do 
      @bank_account.deposit(500)
      expect { @bank_account.withdraw(500) }.to change { @bank_account.balance } .by(-500)
    end 

    it 'raises an error when withdrawing from account without any balance' do 
      expect { @bank_account.withdraw(500) }.to raise_error 'Insufficient funds in your account'
    end
  end

  describe '#print_statement' do 
    it 'prints out all transactions' do
      @bank_account.deposit(500)
      @bank_account.deposit(600)
      @bank_account.withdraw(200)
      expect { @bank_account.print_statement } .to output("date || credit || debit || balance\n28/01/2020 || 500.00 || || 500.00\n28/01/2020 || 600.00 || || 1100.00\n28/01/2020 || || 200.00 || 900.00\n").to_stdout
    end
  end
end 
