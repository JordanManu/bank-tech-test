# frozen_string_literal: true

class BankTest
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
    raise "Insufficient funds" if money > @current_balance
    @current_balance -= money
    transaction_details(Time.now.strftime('%d/%m/%Y'), money, :debit)
  end

  def print_statement
    print "date       ||credit || debit || balance \n"
    @statement.each do |transaction|
      if transaction.has_key?(:credit)
        credit = format('%.2f', transaction[:credit])
      elsif transaction.has_key?(:debit)
        debit = format('%.2f', transaction[:debit])
      end
      balance = format('%.2f', transaction[:balance])
      print "#{transaction[:date]} || #{credit} || #{debit} || #{balance} \n"
    end
  end

  private

  def transaction_details(date, money, type)
    @statement.unshift({ "date": date, "#{type}": money, "balance": @current_balance })
  end
end
