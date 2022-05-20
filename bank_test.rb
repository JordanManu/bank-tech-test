class BankTest
  def initialize
    @current_balance = 0
    @statement = []
  end
  def deposit(money)
    deposit = @current_balance += money
    deposit_date = Time.now.strftime("%d/%m/%Y")
    @statement.push({"date": deposit_date, "credit": deposit})
  end
  def balance
    @current_balance
  end
  def withdraw(money)
    withdraw = @current_balance -= money
    withdrawal_date = Time.now.strftime("%d/%m/%Y")
    @statement.push({"date": withdrawal_date, "debit": withdraw})
  end
  def statement
    @statement.each do |transaction|
        return "#{transaction[:date]} || #{transaction[:credit]}.00 || #{@current_balance}.00"
      # transaction.map { |key, value| return "#{value}" }
    end
  end

end