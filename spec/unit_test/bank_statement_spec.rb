require 'bank_statement' 

describe BankStatement do
  let(:transaction) { double :transaction, date: nil, credit: 0, debit: 0, total: 0 }
  let(:transaction_class) { double :transaction_class, new: transaction }
  subject(:bank_statement) { described_class.new(transaction_class) }

  describe '#deposit_statement' do 
    it 'accepts deposit' do
      expect(transaction_class).to receive(:new).with("12/01/2020", 1000, nil, 1000)
      expect(bank_statement.deposit_statement("12/01/2020", 1000, 1000)).to eq(transaction)
    end 
  end 

  describe '#withdraw_statement' do 
    it 'accepts withdraw' do 
      expect(transaction_class).to receive(:new).with("12/01/2020", nil, 2000, 2000)
      expect(bank_statement.withdraw_statement("12/01/2020", 2000, 2000)).to eq(transaction)
    end 
  end 
end
