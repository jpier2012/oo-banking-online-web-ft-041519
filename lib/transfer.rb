class Transfer
  attr_reader :transfer_amount, :sender, :receiever, :status

  def initialize(transfer_amount, sender, receiver, status)
    @transfer_amount = transfer_amount
    @sender = sender
    @receiver = receiver
  end
end
