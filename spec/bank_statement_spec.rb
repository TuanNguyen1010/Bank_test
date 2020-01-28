require 'bank_statement' 

describe BankStatement do 
  let(:transaction) { double :transaction, deposit: 0, withdraw: 0 }
  subject(:bank_statement) { described_class.new() }

  describe '#deposit_statement' do 
    it 'accepts deposit' do
      bank_statement.deposit_statement(1000, 1000)
      expect(bank_statement.all_statement[0]).to include('%.2f' % 1000)
    end 
  end 

  describe '#withdraw_statement' do 
    it 'accepts withdraw' do 
      bank_statement.withdraw_statement(1000, 1000)
      expect(bank_statement.all_statement[0]).to include('%.2f' % 1000)
    end 
  end 

end 
