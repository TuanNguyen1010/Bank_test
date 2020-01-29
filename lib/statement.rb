require 'bank_statement'

class StatementFormat

  def initialize(statement_log)
    @statement_log = statement_log
  end 

  def statement_format
    @statement_log.map { |transaction|
    "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.total}"
    }
  end

end 
