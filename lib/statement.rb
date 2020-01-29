require 'bank_statement'

class StatementFormat

  def initialize(statement_log)
    @statement_log = statement_log
  end 

  def statement_format
    "#{@statement_log.all_statement[0]} || #{@statement_log.all_statement[1]} || #{@statement_log.all_statement[2]} || #{@statement_log.all_statement[3]}"
  end

end 
