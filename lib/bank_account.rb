require 'date'
require_relative 'bank_statement'

class BankAccount
  attr_reader :balance, :transaction

  def initialize(statement = BankStatement.new)
    @balance = 0
    @statement = statement
  end 
  
  def deposit(amount)
    @balance += amount
    @statement.deposit_statement(amount, @balance)
  end 

  def withdraw(amount)
    raise 'Insufficient funds in your account' if @balance < amount
    
    @balance -= amount
    @statement.withdraw_statement(amount, @balance)
    # @transaction.push([date, ' || || ', '%.2f' % amount, ' || ', '%.2f' % @balance].join)
  end 

end 
