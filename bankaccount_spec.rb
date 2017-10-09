require_relative 'bankaccount'
RSpec.describe BankAccount do
    before(:each) do
        @bankaccount1 = BankAccount.new
        @bankaccount1.deposit_checkings(5)
        @bankaccount1.deposit_savings(10)
    end
    it 'Has a getter method for retrieving the checking account balance' do
        expect(@bankaccount1.checkings).to eq(5)
    end
    it 'Has a getter method for retrieving the checking account balance' do
        expect(@bankaccount1.total_balance).to eq(15)
    end
    it 'Has a function that allows the user to withdraw cash' do
        @bankaccount1.withdraw_checkings(3)
        expect(@bankaccount1.checkings).to eq(2)
    end
    it 'Raises an error if a user tries to withdraw more money than they have in the account' do
        expect{@bankaccount1.withdraw_checkings(10)}.to raise_error(ArgumentError)
    end
    it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
        expect{BankAccount.accounts}.to raise_error(NoMethodError)
    end
    it 'Raises an error when the user attempts to set the interest rate' do
        expect{@bankaccount1.interest_rate = 0}.to raise_error(NoMethodError)
    end
end