require "./bank_test"

describe BankTest do 

  before(:each) do 
    @bank = BankTest.new
    @date = Time.now.strftime("%d/%m/%Y")
  end

  it "initializes the account with an empty balance" do
    expect(@bank.balance).to eq 0.00
  end
  it "adds money to the account" do
    @bank.deposit(1)
    expect(@bank.balance).to eq 1
  end
  it "accumulates the money added" do
    @bank.deposit(3)
    @bank.deposit(3)
    expect(@bank.balance).to eq 6
  end
  it "withdraws money from the account" do
    @bank.deposit(2)
    @bank.withdraw(1)
    expect(@bank.balance).to eq 1
  end
  it "stores the date the transaction was made" do
    @bank.deposit(2)
    expect(@bank.print_statement).to eq [{:balance=>2.0, :credit=>2.0, :date=>"#{@date}", :debit=>0.0}]
  end
  it "prints the bank statement with date, credit and balance" do
    @bank.deposit(5)
    expect(@bank.print_statement).to eq [{:balance=>5.0, :credit=>5.0, :date=>"#{@date}", :debit=>0.0}]
  end
  it "prints the statement with most recent transaction first" do
    @bank.deposit(15)
    @bank.withdraw(10)
    expect(@bank.print_statement[0]).to eq({:balance=>5.0, :credit=>0.0, :date=>@date, :debit=>10.0})
  end
end
