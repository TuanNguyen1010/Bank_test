require 'bank_statement' 

describe BankStatement do 
  describe 'account_statement' do 
    it 'prints out the statement showing date, amount and balance' do
      user = BankStatement.new
      user_account = user.account
      user_account.deposit(2000)
      user_account.withdraw(1000)
      expect{user.statement}.to output("28/01/2020 || 2000.00 || || 2000.00\n28/01/2020 || || 1000.00 || 1000.00\n").to_stdout
    end 
  end 
end 
