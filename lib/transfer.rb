class Transfer
  attr_reader :transfer_amount, :sender, :receiever, :status

  def initialize(transfer_amount, sender, receiver, status)
    @transfer_amount = transfer_amount
    @sender = sender
    @receiver = receiver
    @status = status
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction

  end
end
