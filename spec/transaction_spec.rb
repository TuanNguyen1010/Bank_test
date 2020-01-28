require 'transaction'

describe Transaction do 
    
  describe '#deposit_transaction' do 
    it 'display amount,date and balance for deposit of 1000 on 10-01-2012' do
      subject.deposit_transaction(1000, 1000, "10/01/2012")
      expect(subject.current_transaction).to eq('10/01/2012 || 1000.00 || || 1000.00')
    end  
  end 

  describe '#withdraw_transaction' do 
    it 'display amount,date and balance for deposit of 1000 on 10-01-2012' do
      subject.withdraw_transaction(1000, -1000, "12/01/2012")
      expect(subject.current_transaction).to eq('12/01/2012 || || 1000.00 || -1000.00')
    end  
  end 
end 
