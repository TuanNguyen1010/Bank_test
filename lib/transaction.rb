class Transaction
  attr_reader :current_transaction
  
  def initialize(current_transaction = [])
    @current_transaction = current_transaction
  end 

  def deposit_transaction(amount, total, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    @current_transaction = "#{date} || #{'%.2f' % amount} || || #{'%.2f' % total}"
  end 

  def withdraw_transaction(amount, total, date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    @current_transaction = "#{date} || || #{'%.2f' % amount} || #{'%.2f' % total}"
  end 
end 
