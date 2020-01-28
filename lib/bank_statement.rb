require_relative 'transaction'

class BankStatement

  def initialize( transaction = Transaction.new )
    @transaction = transaction
  end 

  def deposit_statement(amount)
    amount
  end

  def withdraw_statement(amount)
    amount
  end 

  def statement
    # @transaction.each{ |transaction|
    # puts transaction 
    # }
  end 
end 
