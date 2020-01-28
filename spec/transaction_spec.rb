require 'transaction'

describe Transaction do 
    
  describe 'transaction' do 
    it 'display amount,date and balance for deposit of 1000 on 10-01-2012' do
      expect(subject.deposit(1000, 1000, "10/01/2012")).to eq('10/01/2012 || 1000.00 || || 1000.00')
    end  
  end 
end 
