class BankTest
  def initialize
    @current_balance = []
    @withdrawals = []
  end
  def deposit(money)
    @current_balance << money
  end
  def balance
    return @current_balance.sum - @withdrawals.sum
  end
  def withdraw(money)
    @withdrawals << money
  end

end