require_relative 'transaction'

class BankStatement

  def initialize(transaction = Transaction.new)
    @transaction = transaction
  end 

  def deposit_statement(amount, total)
    @transaction.deposit(amount, total)
  end

  def withdraw_statement(amount, total)
    amount
  end 

  def statement
    [1000]
  end 
end 
