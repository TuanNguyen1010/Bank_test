class Transaction
  # def initialize()
  # end 

  # def display
  #   ['10/01/2012 || 1000.00 || || 1000.00']
  # end
  def deposit(amount, total,  date = DateTime.now.to_date.strftime("%d/%m/%Y"))
    "#{date} || #{'%.2f' % amount} || || #{'%.2f' % total}"
  end 
end 
