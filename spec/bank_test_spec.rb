# frozen_string_literal: true

require './bank_test'

describe BankTest do
  before(:each) do
    @bank = BankTest.new
    @date = Time.now.strftime('%d/%m/%Y')
  end

  context '#initialization' do
    it 'initializes the account with an empty balance' do
      expect(@bank.balance).to eq 0.00
    end

    it 'initializes the account with an empty statement' do
      expect(@bank.print_statement).to eq []
    end
  end

  context '#deposit' do
    it 'adds money to the account' do
      @bank.deposit(1)
      expect(@bank.balance).to eq 1
    end

    it 'accumulates the money added' do
      @bank.deposit(3)
      @bank.deposit(3)
      expect(@bank.balance).to eq 6
    end
  end
  context '#withdraw' do
    it 'withdraws money from the account' do
      @bank.deposit(2)
      @bank.withdraw(1)
      expect(@bank.balance).to eq 1
    end
    it "doesn't allow the user to withdraw more money than what they have in their account" do
      expect {@bank.withdraw(1)}.to raise_error("Insufficient funds")
    end
  end
  context '#print_statement' do
    it 'stores the date the transaction was made' do
      @bank.deposit(2)
      expect(@bank.print_statement).to eq [{ balance: 2.0, credit: 2.0, date: @date.to_s }]
    end

    it 'prints the bank statement with date, credit and balance' do
      @bank.deposit(5)
      expect(@bank.print_statement).to eq [{ balance: 5.0, credit: 5.0, date: @date.to_s }]
    end

    it 'prints the statement with most recent transaction first' do
      @bank.deposit(15)
      @bank.withdraw(10)
      expect(@bank.print_statement[0]).to eq({ balance: 5.0, date: @date, debit: 10.0 })
    end
    it 'prints the monetary values in the statement with two decimal places' do
      @bank.deposit(5)
      expect(@bank.print_statement).to eq [{ balance: 5.00, credit: 5.00, date: @date.to_s }]
    end
  end
end
