require_relative 'transaction'

class BankStatement
  attr_reader :all_statement

  def initialize(transaction_class = Transaction)
    @transaction = transaction_class
    @all_statement = []
  end 

  def deposit_statement(date, amount, total)
    @all_statement.push(@transaction.new(date, '%.2f' % amount, nil, '%.2f' % total))
    @all_statement.last

  end

  def withdraw_statement(date, amount, total)
    @all_statement.push(@transaction.new(date, nil, '%.2f' % amount, '%.2f' % total))
    @all_statement.last
  end 

end 
