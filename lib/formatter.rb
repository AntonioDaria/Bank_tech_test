
class Formatter
  def formatting_statement(log_history)
    ['date || credit || debit || balance'] +
      log_history.reverse.map do |item|
        [
          current_date(item[:date]),
          two_float(item[:credit]),
          two_float(item[:debit]),
          two_float(item[:balance])
        ].join(' || ')
      end
  end

  private

  def two_float(number)
    format('%.2f', number) unless number.nil?
  end

  def current_date(date)
    date.strftime('%d/%m/%Y')
  end

end
