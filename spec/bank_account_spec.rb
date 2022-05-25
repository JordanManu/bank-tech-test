# frozen_string_literal: true

require 'bank_account'
require 'statement'

describe BankAccount do
  before(:each) do
    # let { statement } { double('statement') }
    # @statement = double('statement')
    allow(@statement).to receive(:print_statement)
    @bank = BankAccount.new(@statement)
    @date = Time.now.strftime('%d/%m/%Y')
  end

  describe '#initialization' do
    it 'initializes the account with an empty statement' do
      @bank.print_statement
      expect(@statement).to have_received(:print_statement).with([])
    end
  end

  describe '#deposit' do
    it 'adds money to the account' do
      @bank.deposit(1)
      @bank.print_statement
      expect(@statement).to have_received(:print_statement).with(
        [{:amount=>"1.00", :balance=>"1.00", :date=> @date, :type=>:credit}]
      )
    end

    it 'accumulates the money added' do
      @bank.deposit(3)
      @bank.deposit(3)
      @bank.print_statement
      expect(@statement).to have_received(:print_statement).with(
        [{:amount=>"3.00", :balance=>"6.00", :date=> @date, :type=>:credit}, 
         {:amount=>"3.00", :balance=>"3.00", :date=> @date, :type=>:credit}
        ]
      )
    end
  end

  describe '#withdraw' do
    it 'withdraws money from the account' do
      @bank.deposit(2)
      @bank.withdraw(1)
      @bank.print_statement
      expect(@statement).to have_received(:print_statement).with(
        [{:amount=>"1.00", :balance=>"1.00", :date=> @date, :type=>:debit}, 
         {:amount=>"2.00", :balance=>"2.00", :date=> @date, :type=>:credit}
        ]
      )
    end

    it "doesn't allow the user to withdraw more money than what they have in their account" do
      expect { @bank.withdraw(1) }.to raise_error('Insufficient funds')
    end
  end
end
