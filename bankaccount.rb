class BankAccount
    attr_reader :account_number, :checkings, :savings
    @@accounts = 0
    def initialize
        generate_account_number
        @checkings = 0
        @savings = 0
        @@accounts += 1
        @interest_rate = 0.01
    end
    def deposit_checkings money
        @checkings += money
    end
    def deposit_savings money
        @savings += money
    end
    def withdraw_checkings money
        if @checkings>=money
            @checkings -= money
        else
            raise ArgumentError, "Insufficient funds"
        end
    end
    def withdraw_savings money
        if @savings>=money
            @savings -= money
        else
            raise ArgumentError, "Insufficient funds"
        end
    end
    def total_balance
        @checkings+@savings
    end
    def account_information
        puts @account_number, @checkings+@savings, @checkings, @savings, @interest_rate
    end
    private
        def generate_account_number
            @account_number = rand(1000000000..9999999999)
        end
end