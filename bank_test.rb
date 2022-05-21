class BankTest
  def initialize
    @current_balance = 0.00
    @statement = []
  end
  def balance
    @current_balance
  end
  def deposit(money)
    deposit = @current_balance += money
    transaction_details(Time.now.strftime("%d/%m/%Y"), money, "")
  end
  def transaction_details(date, credit, debit)
    @statement.unshift({"date": date, "credit": credit.to_f, "debit": debit.to_f, "balance": @current_balance})
  end
  def withdraw(money)
    withdraw = @current_balance -= money
    transaction_details(Time.now.strftime("%d/%m/%Y"),"", money)
  end
  def print_statement
    print "date || credit || debit || balance"
    @statement.each do |transaction|
    print "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{transaction[:balance]} \n"
    end
  end
end