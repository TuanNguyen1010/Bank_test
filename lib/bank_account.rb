require_relative 'bank_statement'
require 'date'
require_relative 'statement_format'

class BankAccount
  attr_reader :balance, :transaction

  def initialize(bank_statement = BankStatement.new, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    @balance = 0
    @bank_statement = bank_statement
  end 
  
  def deposit(date = DateTime.now.to_date.strftime("%d/%m/%Y"), amount)
    @balance += amount
    @bank_statement.deposit_statement(date, amount, @balance)
    @balance
  end 

  def withdraw(date = DateTime.now.to_date.strftime("%d/%m/%Y") , amount)
    raise 'Insufficient funds in your account' if @balance < amount

    @balance -= amount
    @bank_statement.withdraw_statement(date, amount, @balance)
    @balance
  end 

  def print_statement(statement_formatter = StatementFormat)
    statement = statement_formatter.new(@bank_statement.all_statement)
    puts statement.format
  end 
end 
