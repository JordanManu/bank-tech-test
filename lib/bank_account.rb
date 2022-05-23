# frozen_string_literal: true

require_relative 'statement'

class BankAccount
  def initialize(statement = Statement.new)
    @statement = statement
    @current_balance = 0
    @transactions = []
  end

  def balance
    @current_balance
  end

  def deposit(money)
    @current_balance += money
    transaction_details(money, :credit)
  end

  def withdraw(money)
    raise 'Insufficient funds' if money > @current_balance

    @current_balance -= money
    transaction_details(money, :debit)
  end

  def print_statement
    @statement.print_statement(@transactions)
  end

  private

  def format_currency(value)
    format('%.2f', value)
  end

  def transaction_details(amount, operation_type)
    @transactions.unshift({ "date": Time.now.strftime('%d/%m/%Y'),
                            "type": operation_type,
                            "amount": format_currency(amount),
                            "balance": format_currency(@current_balance) })
  end
end
