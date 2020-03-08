class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end
    
  def valid?
    if self.sender.valid? && self.receiver.valid? && self.status == 'pending'
      true
    else 
      false 
    end 
  end
  
  def execute_transaction
    if self.valid?
      sender.balance -= @amount
      receiver.balance += @amount
      @status = ""
    end
  end
  
  
end
