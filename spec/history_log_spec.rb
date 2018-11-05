describe History_log do

  subject(:history_log) { described_class.new }

  describe '#log_deposit do' do
    it 'adds credit info to the history log' do
      expect(history_log.log_deposit(200, 200))
        .to eq [:date, '05-11-2018', :balance, 200, :credit, 200]
    end
  end


end
