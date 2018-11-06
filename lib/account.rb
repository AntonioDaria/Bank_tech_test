require_relative 'history_log'

class Account
  DEFAULT_BALANCE = 0

  attr_reader :balance, :history_log

  def initialize(log = HistoryLog.new)
    @balance = 0
    @history_log = log
  end

  def deposit(amount)
    valid_amount(amount)
    @balance += amount
    history_log.log_deposit(amount, @balance)
  end

  def withdraw(amount)
    sufficient_funds(amount)
    @balance -= amount
    history_log.log_withdraw(amount, @balance)
  end

  def show_statement
    puts history_log.view_statement
  end

  private

  def valid_amount(amount)
    raise 'Amount must be a numeric value' unless amount.is_a? Numeric
    raise 'Amount must be greater than 0' if amount <= DEFAULT_BALANCE
  end

  def sufficient_funds(amount)
    raise 'Insufficient funds' if amount > @balance
  end
end
