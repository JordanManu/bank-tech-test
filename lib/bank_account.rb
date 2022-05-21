# frozen_string_literal: true

class BankAccount
  def initialize
    @current_balance = 0
    @statement = []
  end

  def balance
    @current_balance
  end

  def deposit(money)
    @current_balance += money
    transaction_details(Time.now.strftime('%d/%m/%Y'), money, :credit)
  end

  def withdraw(money)
    raise 'Insufficient funds' if money > @current_balance

    @current_balance -= money
    transaction_details(Time.now.strftime('%d/%m/%Y'), money, :debit)
  end

  def print_statement
    print "date       ||credit || debit || balance \n"
    @statement.each do |transaction|
      credit = format_currency(transaction[:credit]) if transaction.key?(:credit)
      debit = format_currency(transaction[:debit]) if transaction.key?(:debit)
      balance = format_currency(@current_balance)
      print "#{transaction[:date]} || #{credit} || #{debit} || #{balance} \n"
    end
  end

  private

  def format_currency(value)
    format('%.2f', value)
  end

  def transaction_details(date, money, operation_type)
    @statement.unshift({ "date": date, "#{operation_type}": money, "balance": @current_balance })
  end
end
