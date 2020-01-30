require 'bank_account'

describe BankAccount do

  subject(:bank_account) {described_class.new}

  it 'prints out empty statement' do 
    expect { bank_account.print_statement } .to output("date || credit || debit || balance\n").to_stdout
  end 

  it ' prints out 2 transactions' do 
    bank_account.deposit("30/01/2020", 500)
    bank_account.withdraw("30/01/2020", 200)
    expect { bank_account.print_statement } .to output("date || credit || debit || balance\n30/01/2020 || 500 ||  || 500\n30/01/2020 ||  || 200 || 300\n").to_stdout
  end 
end 