require "timecop"

describe HistoryLog do
  subject(:history_log) { described_class.new(formatter) }
  let(:formatter) { double :formatter, formatting_statement: 'statement' }

  before(:each) do
   @date = Timecop.freeze(Time.now)
  end

  describe '#log_deposit' do
    it 'adds credit info to the history log' do
      # date = Timecop.freeze(Time.now)
      expect(history_log.log_deposit(300, 300))
        .to eq [:date, @date, :balance, 300, :credit, 300]
    end
  end

  describe '#log_withdraw' do
    it 'adds info about withdrawal to the history log' do
      # date = Timecop.freeze(Time.now)
      expect(history_log.log_withdraw(100, 200))
        .to eq [:date, @date, :balance, 200, :debit, 100]
    end
  end

  describe '#view_statement' do
    it 'returns bank statement' do
      expect(history_log.view_statement).to eq('statement')
    end
  end
end
