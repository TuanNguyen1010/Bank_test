describe 'User can deposit money into the account' do 

  subject(:user) { BankAccount.new }

  it 'returns value of 100 when deposit 100' do 
    expect(user.deposit(100)).to eq 100
  end 
end 
