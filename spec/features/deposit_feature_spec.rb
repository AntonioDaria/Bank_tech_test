describe 'feature deposit' do
  let(:account) { Account.new }

  it 'allows the user to deposit funds' do
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end

  it 'throws an error if the deposit is <= 0' do
    expect { account.deposit(-50) }.to raise_error "Amount must be greater than 0"
  end

  it 'throws an error if the deposit is not a valid number' do
    expect { account.deposit("string") }.to raise_error "Amount must be a numeric value"
  end
end
