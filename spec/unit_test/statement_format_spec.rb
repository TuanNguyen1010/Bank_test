require 'statement_format'

describe StatementFormat do
  
  let(:transaction) { double :transaction, date: "12/01/2020", credit: 100, debit: nil, total: 100 }
  let(:bank_statement_class) { double :bank_statement_class, all_statement: [transaction] }
  let(:transaction_class) { double :transaction_class, new: transaction }
  subject(:statement_format) { described_class.new(bank_statement_class.all_statement) }
  
  describe '#format_statement' do
    it 'format the statements' do
      expect(statement_format.format).to eq(["12/01/2020 || 100 ||  || 100"])
    end 
  end 
end 
