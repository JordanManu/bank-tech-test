class BankTest
  def initialize
    @current_balance = 0
  end
  def deposit(money)
    @current_balance += money
  end
  def balance
    @current_balance
  end
  def withdraw(money)
    @current_balance -= money
  end

end