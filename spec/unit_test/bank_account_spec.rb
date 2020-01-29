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
    it 'prints out empty statement' do 
      expect { @bank_account.print_statement } .to output("date || credit || debit || balance\n").to_stdout
    end 

    it ' prints out 2 transactions' do 
      @bank_account.deposit(500)
      @bank_account.withdraw(200)
      expect { @bank_account.print_statement } .to output("date || credit || debit || balance\n29/01/2020 || 500 ||  || 500\n29/01/2020 ||  || 200 || 300\n").to_stdout
    end 
  end
end 
