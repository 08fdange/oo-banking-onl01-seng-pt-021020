class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end
    
  def valid?
    if self.sender.valid? && self.reciever.valid?
      true 
    else 
      false 
    end 
  end
      
  
end
