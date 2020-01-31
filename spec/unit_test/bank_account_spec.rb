require 'bank_account'

describe BankAccount do 

  let(:bank_statement) { double :bank_statement, transaction: nil }
  let(:statement_format) { double :statement_format, format: ["12/01/2020 || 100.00 || || 100.00"] }
  let(:statement_format_class) { double :statement_format_class, new: statement_format }
  let(:bank_statement_class) { double :bank_statement_class, deposit_statement: nil, withdraw_statement: nil, all_statement: ["12/01/2020", 100, nil, 100] }
  subject(:bank_account) { described_class.new(bank_statement_class) }

  describe '#deposit' do
    it 'deposit 1000 into the account' do 
      expect(bank_account.deposit(1000)).to eq 1000
    end 
  end 

  describe '#withdraw' do 
    it ' withdraw 500 from the account' do 
      bank_account.deposit(500)
      expect(bank_account.withdraw(300)).to eq 200
    end 

    it 'raises an error when withdrawing from account without any balance' do 
      expect { bank_account.withdraw(500) }.to raise_error 'Insufficient funds in your account'
    end
  end

  describe '#print_statement' do 
    it 'accepts bank statement class' do 
      expect(statement_format_class).to receive(:new)
      expect(statement_format).to receive(:format)
      bank_account.print_statement(statement_format_class)
    end

    it 'prints out statement' do 
      expect { bank_account.print_statement(statement_format_class) } .to output("12/01/2020 || 100.00 || || 100.00\n").to_stdout
    end 
  end
end 
