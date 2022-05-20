require "./bank_test"

describe BankTest do 

  before(:each) do 
    bank = BankTest.new
  end

  it "adds money to the account" do
    bank = BankTest.new
    bank.deposit(1.00)
    expect(bank.balance).to eq 1.00
  end
  it "accumulates the money added" do
    bank = BankTest.new
    bank.deposit(3.00)
    bank.deposit(3.00)
    expect(bank.balance).to eq 6.00
  end
end