require_relative 'bank_statement'
require 'date'
require_relative 'statement'

class BankAccount
  attr_reader :balance, :transaction

  def initialize(bank_statement = BankStatement.new, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    @balance = 0
    @bank_statement = bank_statement
    @date = date
  end 
  
  def deposit(amount)
    @balance += amount
    @bank_statement.deposit_statement(@date, amount, @balance)
    @balance
  end 

  def withdraw(amount)
    raise 'Insufficient funds in your account' if @balance < amount

    @balance -= amount
    @bank_statement.withdraw_statement(@date, amount, @balance)
    @balance
  end 

  def print_statement
    puts header
    statement = StatementFormat.new(@bank_statement.all_statement)
    puts statement.statement_format
  end 

  private 

  def header
    "date || credit || debit || balance"
  end 
end 
