require_relative 'formatter'

class HistoryLog

  def initialize(formatter = Formatter.new)
    @formatter = formatter
    @history = []
  end

  def log_deposit(money_in, balance)
    @history << {
      date: Time.now,
      balance: balance,
      credit: money_in
    }
    @history.last.flatten
  end

  def log_withdraw(money_out, balance)
    @history << {
      date: Time.now,
      balance: balance,
      debit: money_out
    }
    @history.last.flatten
  end

  def view_statement
    @formatter.formatting_statement(@history)
  end


end
