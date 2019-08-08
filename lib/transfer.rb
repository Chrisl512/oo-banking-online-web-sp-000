class Transfer

  attr_reader :sender, :receiver, :status, :amount
  attr_accessor :account, :balance

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    if valid? && sender.balance > amount && self.status == "pending"
    receiver.balance += amount
      binding.pry
      
   else

    status = "complete"
  end
  end

end
