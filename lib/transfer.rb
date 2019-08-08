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
    if @sender.balance
    receiver.balance += amount
      binding.pry
     = @balance - @amount


    status = "complete"
  end
  end

end
