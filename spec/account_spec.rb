require 'account'

describe Account do
  subject(:account) { described_class.new }

  describe '#deposit do' do
    it 'allows a user to deposit funds' do
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end
end
