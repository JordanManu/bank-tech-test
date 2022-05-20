require "./bank_test"

describe BankTest do 

  before(:each) do 
    bank = BankTest.new
  end

  it "initializes the account with an empty balance" do
    bank = BankTest.new
    expect(bank.balance).to eq 0
  end
  it "adds money to the account" do
    bank = BankTest.new
    bank.deposit(1)
    expect(bank.balance).to eq 1
  end
  it "accumulates the money added" do
    bank = BankTest.new
    bank.deposit(3)
    bank.deposit(3)
    expect(bank.balance).to eq 6
  end
  it "withdraws money from the account" do
    bank = BankTest.new
    bank.deposit(2)
    bank.withdraw(1)
    expect(bank.balance).to eq 1
  end
  it "stores the date the transaction was made" do
    bank = BankTest.new
    bank.deposit(2)
    expect(bank.statement).to eq "20/05/2022 || 2.0 ||   || 2.0"
  end
  it "prints the statement with credit" do
    bank = BankTest.new
    bank.deposit(5)
    expect(bank.statement).to eq "20/05/2022 || 5.0 ||   || 5.0"
  end
  it "prints the statement with debit" do
    bank = BankTest.new
    bank.withdraw(2)
    expect(bank.statement).to eq "20/05/2022 ||  || -2.0 || -2.0"
  end
end
