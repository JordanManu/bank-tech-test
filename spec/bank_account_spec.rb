# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  before(:each) do
    @bank = BankAccount.new
    @date = Time.now.strftime('%d/%m/%Y')
  end

  describe '#initialization' do
    it 'initializes the account with an empty balance' do
      expect(@bank.balance).to eq 0.00
    end

    it 'initializes the account with an empty statement' do
      expect(@bank.print_statement).to eq []
    end
  end

  describe '#deposit' do
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
  describe '#withdraw' do
    it 'withdraws money from the account' do
      @bank.deposit(2)
      @bank.withdraw(1)
      expect(@bank.balance).to eq 1
    end
    it "doesn't allow the user to withdraw more money than what they have in their account" do
      expect { @bank.withdraw(1) }.to raise_error('Insufficient funds')
    end
  end

end
