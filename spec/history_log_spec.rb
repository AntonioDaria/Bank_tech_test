describe History_log do

  subject(:history_log) { described_class.new }

  describe '#log_deposit' do
    it 'adds credit info to the history log' do
      expect(history_log.log_deposit(300, 300))
        .to eq [:date, '05-11-2018', :balance, 300, :credit, 300]
    end
  end

  # describe '#log_withdraw' do
  #   it 'adds info about withdrawal to the history log' do
  #     expect(history_log.log_withdraw(200, 200))
  #       .to eq [:date, '05-11-2018', :balance, 300, :credit, 300]
  #   end
  # end


end
