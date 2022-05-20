class BankTest
  def initialize
    @current_balance = []
  end
  def deposit(money)
    @current_balance << money
  end
  def balance
    @current_balance.sum
  end

end