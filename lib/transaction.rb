class Transaction
  attr_reader :date, :credit, :debit, :total
  
  def initialize(date, credit = nil, debit = nil, total)
    @date = date
    @credit = credit
    @debit = debit
    @total = total
  end 
end 
