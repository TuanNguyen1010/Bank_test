require 'transaction'

describe Transaction do 
  describe '#initialize' do 
    subject(:transaction) { described_class.new('12/01/2020', 100, nil, 100) }

    it 'has a date when initialized' do 
      expect(transaction.date).to eq('12/01/2020')
    end

    it 'has a credit value when initialized' do 
      expect(transaction.credit).to eq(100)
    end

    it 'has a total value when initialized' do 
      expect(transaction.total).to eq(100)
    end
  end 
end 
