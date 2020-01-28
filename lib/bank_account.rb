require 'date'
require_relative 'bank_statement'

class BankAccount
  attr_reader :balance, :transaction

  def initialize(statement = BankStatement.new)
    @balance = 0
    @statement = statement
  end 
  
  def deposit(amount, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    @balance += amount
    @statement.deposit_statement(amount)
    # @statement.input(amount)
    # @transaction.push([date, ' || ', '%.2f' % amount, ' || || ', '%.2f' % @balance].join)
  end 

  def withdraw(amount, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    raise 'Insufficient funds in your account' if @balance < amount
    @balance -= amount
    @statement.withdraw_statement(amount)
    # @transaction.push([date, ' || || ', '%.2f' % amount, ' || ', '%.2f' % @balance].join)
  end 
end 
