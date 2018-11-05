describe 'feature deposit' do
  let(:account) { Account.new }

  it 'allows the user to deposit funds' do
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end
end
