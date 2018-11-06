class History_log
  attr_reader :history

  def initialize
    @history = []
  end

  def log_deposit(money_in, balance)
    @history  << {
      date: current_date,
      balance: balance,
      credit: money_in
    }
    @history.last.flatten
  end

  def log_withdraw(money_out, balance)
    @history  << {
      date: current_date,
      balance: balance,
      debit: money_out
    }
    @history.last.flatten
  end

  private

  def current_date
    Time.now.strftime('%d-%m-%Y')
  end
end
