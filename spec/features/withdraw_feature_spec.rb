describe 'feature withdraw' do
  let(:account) { Account.new }

  it 'allows the user to withdraw funds' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to eq 500
  end
end
