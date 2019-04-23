class Transfer
  attr_reader :amount, :sender, :receiver, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    if self.valid?
      self.sender.balance -= transfer_amount
      self.receiver.balance += transfer_amount
      self.status = 'complete'
    else
      self.status = 'rejected'
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if self.status == 'complete'
      self.receiver.balance -= transfer_amount
      self.sender.balance += transfer_amount
      self.status = 'reversed'
    end
  end
end
