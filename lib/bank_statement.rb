require_relative 'transaction'

class BankStatement
  attr_reader :all_statement

  def initialize(transaction = Transaction.new)
    @transaction = transaction
    @all_statement = []
  end 

  def deposit_statement(amount, total)
    @transaction.deposit_transaction(amount, total)
    @all_statement.push(@transaction.current_transaction)
  end

  def withdraw_statement(amount, total)
    @transaction.withdraw_transaction(amount, total)
    @all_statement.push(@transaction.current_transaction)
  end 

end 
