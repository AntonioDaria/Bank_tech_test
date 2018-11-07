require 'formatter'
require 'timecop'

describe Formatter do
  date_now = Timecop.freeze(Time.now)
  mock_data = [
    { date: date_now, balance: 1000, credit: 1000 },
    { date: date_now, balance: 300, debit: 700 }
  ]
  subject(:formatter) { described_class.new }
  let(:log_history) { double :history_log, reverse: mock_data }

  describe '#formatting_statement' do
    it 'prints the formatted statement' do
      result = [
        'date || credit || debit || balance',
        "#{date_now.strftime('%d/%m/%Y')} || 1000.00 ||  || 1000.00",
        "#{date_now.strftime('%d/%m/%Y')} ||  || 700.00 || 300.00"
      ]
      expect(subject.formatting_statement(log_history)).to eq(result)
    end
  end
end
