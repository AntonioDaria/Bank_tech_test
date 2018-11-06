require 'formatter'
describe Formatter do

  mock_data = [
    { date: '05-11-2018', balance: 1000, credit: 1000 },
    { date: '05-11-2018', balance: 300, debit: 700 }
  ]
  subject(:formatter) { described_class.new }
  let(:log_history) { double :history_log, reverse: mock_data }

    describe '#formatting_statement' do
      it 'prints the formatted statement' do
        result = [
          "date || credit || debit || balance",
          "05-11-2018 || 1000.00 ||  || 1000.00",
          "05-11-2018 ||  || 700.00 || 300.00"
        ]
        expect(subject.formatting_statement(log_history)).to eq(result)
      end
    end

end