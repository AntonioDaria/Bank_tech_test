describe 'feature withdraw' do
  let(:account) { Account.new }

  it 'allows the user to withdraw funds' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to eq 500
  end

  it 'throws an error if the amount is greater than the available funds' do
    account.deposit(100)
    expect { account.withdraw(500) }.to raise_error 'Insufficient funds'
  end
end
