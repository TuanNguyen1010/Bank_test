require_relative 'transaction'

class BankStatement
  attr_reader :all_statement

  def initialize(transaction_class = Transaction, all_statement = [])
    @transaction = transaction_class
    @all_statement = all_statement
  end 

  def deposit_statement(date, amount, total)
    @all_statement.push(@transaction.new(date, amount, nil, total))
    @all_statement.last

  end

  def withdraw_statement(date, amount, total)
    @all_statement.push(@transaction.new(date, nil, amount, total))
    @all_statement.last
  end 

end 
