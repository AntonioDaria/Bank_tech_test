require 'account'

describe Account do
  subject(:account) { described_class.new(history_log) }
  let(:history_log) { double :history_log, log_deposit: nil, log_withdraw: nil, view_statement: 'statement' }

  describe '#deposit do' do
    it 'allows a user to deposit funds' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end

    context 'When a user tries to deposit less than or equal to 0' do
      it 'will tell a user that the deposited amount must be greater than 0' do
        expect { account.deposit(-50) }.to raise_error 'Amount must be greater than 0'
      end
    end

    context "When a user doesn't input a numeric value" do
      it 'will tell a user that the deposited amount must be a numeric value' do
        expect { account.deposit('string') }.to raise_error 'Amount must be a numeric value'
      end
    end
  end

  describe '#withdraw do' do
    context ' When the user has enough funds ' do
      it 'allows a user to withdraw funds' do
        account.deposit(1000)
        account.withdraw(500)
        expect(account.balance).to eq 500
      end
    end

    context 'when the user has not got enough funds' do
      it 'will tell a user that that there are not suffcient funds to cover the transaction' do
        account.deposit(100)
        expect { account.withdraw(500) }.to raise_error 'Insufficient funds'
      end
    end
  end

  describe '#show_statement' do
    it 'prints the bank statement' do
      expect { account.show_statement }.to output("statement\n").to_stdout
    end
  end
end
