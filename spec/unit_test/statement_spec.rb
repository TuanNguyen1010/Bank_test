require 'bank_statement'
require 'statement'

describe StatementFormat do

  let(:transaction) { double :transaction, date: "12/01/2020", credit: 100, debit: 0, total: 100 }

  
  describe '#format_statement' do
    it 'format the statements' do
      statement = StatementFormat.new(BankStatement.new(Transaction, ["12/01/2020", 100, nil, 100]))
      expect(statement.statement_format).to eq("12/01/2020 || 100 ||  || 100")
    end 
  end 
end 
