describe History_log do

  subject(:history_log) { described_class.new }

  describe '#log_deposit' do
    it 'adds credit info to the history log' do
      expect(history_log.log_deposit(300, 300))
        .to eq [:date, Time.now.strftime('%d-%m-%Y'), :balance, 300, :credit, 300]
    end
  end
end
