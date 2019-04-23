class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initilize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def deposit(amount)
    self.balance += amount
  end
end
