require 'bank_statement' 

describe BankStatement do 
  let(:transaction){double :transaction, deposit: 0, withdraw: 0}
  subject(:bank_statement){described_class.new()}


  describe '#deposit_statement' do 
    it 'accepts deposit' do
      expect(bank_statement.deposit_statement(100)).to eq(100)
    end 
  end 

  describe '#withdraw_statement' do 
    it 'accepts withdraw' do 
      expect(bank_statement.withdraw_statement(100)).to eq(100)
    end 
  end 

  # describe 'account_statement' do 
  #   it 'prints out the statement showing date, amount and balance' do
  #     user = BankStatement.new

  #     expect{user.statement}.to output("12/01/2012 || 2000.00 || || 2000.00\n13/01/2012 || || 1000.00 || 1000.00\n").to_stdout
  #   end 
  # end 
end 