require 'date'

class BankAccount
  attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = []
  end 
  
  def deposit(amount, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    @balance += amount
    @transaction.push([date, ' || ', '%.2f' % amount, ' || || ', '%.2f' % @balance].join)
  end 

  def withdraw(amount, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    raise 'Insufficient funds in your account' if @balance < amount
    
    @balance -= amount
    @transaction.push([date, ' || || ', '%.2f' % amount, ' || ', '%.2f' % @balance].join)
  end 
end 
