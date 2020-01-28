require 'bank_statement' 

describe BankStatement do 
  let(:transaction) { double :transaction, deposit: 0, withdraw: 0 }
  subject(:bank_statement) { described_class.new() }

  describe '#deposit_statement' do 
    it 'accepts deposit' do
      bank_statement.deposit_statement(1000, 1000)
      expect(bank_statement.statement[0]).to include('%.2f' %1000)
    end 
  end 

  describe '#withdraw_statement' do 
    it 'accepts withdraw' do 
      bank_statement.withdraw_statement(1000, 1000)
      expect(bank_statement.statement[0]).to include('%.2f' %1000)
    end 
  end 

  # describe 'account_statement' do 
  #   it 'prints out the statement showing date, amount and balance' do
  #     user = BankStatement.new

  #     expect{user.statement}.to output("12/01/2012 || 2000.00 || || 2000.00\n13/01/2012 || || 1000.00 || 1000.00\n").to_stdout
  #   end 
  # end 
end 
