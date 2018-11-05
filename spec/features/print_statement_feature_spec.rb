require 'account'

describe "feature print statement" do
  let(:account) { Account.new}

  xit "prints a statement" do
    account.deposit(1000)
    account.withdraw(300)
    format_statement = "date || credit || debit || balance\n"\
                       "05-11-2018 ||  ||300.00  || 700.00\n"\
                       "05-11-2018 || 1000.00 ||  || 1000.00\n"
    expect{ account.show_statement }.to output(format_statement).to_stdout
  end
end
