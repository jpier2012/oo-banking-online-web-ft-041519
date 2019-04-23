class Transfer
  attr_reader :transfer_amount, :sender, :receiever, :status

  def initialize(transfer_amount, sender, receiever, status)
    @transfer_amount = transfer_amount
  end
end
