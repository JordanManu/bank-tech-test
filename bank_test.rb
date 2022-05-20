class BankTest
  def initialize
    @current_balance = 0
    @statement = []
  end
  def deposit(money)
    deposit = @current_balance += money
    deposit_date = Time.now.strftime("%d/%m/%Y")
    @statement.push({"date": deposit_date, "credit": deposit.to_f, "debit": " "})
  end
  def balance
    @current_balance
  end
  def withdraw(money)
    withdraw = @current_balance -= money
    withdrawal_date = Time.now.strftime("%d/%m/%Y")
    @statement.push({"date": withdrawal_date, "credit": "", "debit": withdraw.to_f})
  end
  def statement
    puts "date || credit || debit || balance"
     @statement.each do |transaction|
      return "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{@current_balance.to_f}"
    end
  end
end