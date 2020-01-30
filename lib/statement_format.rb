require_relative 'bank_statement'

class StatementFormat

  def initialize(statement_log)
    @statement_log = statement_log
  end 

  def format
    puts header
    @statement_log.map { |transaction|
      "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.total}"
    }.reverse
  end

  private 

  def header
    "date || credit || debit || balance"
  end 
end 
