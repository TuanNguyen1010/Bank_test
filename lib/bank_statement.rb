require_relative 'bank_account'

class BankStatement
  attr_reader :account

  def initialize( account = BankAccount.new )
    @account = account
  end 

  def statement
    @account.transaction.each{ |transaction|
    puts transaction 
    }
  end 
end 
