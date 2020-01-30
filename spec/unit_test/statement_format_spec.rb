require 'bank_statement'
require 'statement_format'

describe StatementFormat do
  
  let(:transaction) { double :transaction, date: nil, credit: 0, debit: 0, total: 0 }
  let(:transaction_class) { double :transaction_class, new: transaction}
  subject(:statement) { decribed_class.new(transaction_class) }
  
  describe '#format_statement' do
    it 'format the statements' do
      bs = BankStatement.new
      bs.deposit_statement("12/01/2020", 100, 100)
      sf = StatementFormat.new(bs.all_statement)
      expect(sf.statement_format).to eq(["12/01/2020 || 100 ||  || 100"])
    end 
  end 
end 
