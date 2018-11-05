require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe '#deposit do' do
    it 'allows a user to deposit funds' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end

    it 'will tell a user that the deposited amount must be greater than 0' do
      expect { account.deposit(-50) }.to raise_error "Amount must be greater than 0"
    end

    it 'will tell a user that the deposited amount must be a numeric value' do
      expect { account.deposit("string") }.to raise_error "Amount must be a numeric value"
    end
  end

  describe '#withdraw do' do
    it 'allows a user to withdraw funds' do
      account.deposit(1000)
      account.withdraw(500)
      expect(account.balance).to eq 500
    end
  end
end
