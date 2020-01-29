require_relative 'bank_statement'
require 'date'
# require_relative 'statement'

class BankAccount
  attr_reader :balance, :transaction

  def initialize(statement = BankStatement.new, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    @balance = 0
    @statement = statement
    @date = date
  end 
  
  def deposit(amount)
    @balance += amount
    @statement.deposit_statement(@date, amount, @balance)
    @balance
  end 

  def withdraw(amount)
    raise 'Insufficient funds in your account' if @balance < amount
    
    @balance -= amount
    @statement.withdraw_statement(@date, amount, @balance)
    @balance
  end 

  def print_statement
    puts header
    @statement.all_statement.each { |transactions|
      puts transactions
    }
  end 

  private 

  def header
    "date || credit || debit || balance"
  end 
end 
