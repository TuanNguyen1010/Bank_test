<h1>Bank account project</h1>

<h2>Requirements</h2>
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).


<h2>Acceptance criteria</h2>

```
Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00 
```

<h2>User Stories</h2>
``` 
As a User,
So I can have a balance on my account, 
I want to deposit money into my account.
```
```
As a User, 
So I can spend cash, 
I want to be able to withdraw money from my account.
```
```
As a User, 
So I can see my transactions, 
I want to be able to print out my bank statement.
```

<h2>QuickStart</h2>

First, clone the repository. Then:

```
> bundle install
```

type following on command line

```
rspec # To run tests
rubocop # To run linter
```

You should be able to run the app through IRB

```
Tuans-MacBook-Pro:bank_test tuannguyen$ irb -r ./lib/bank_account.rb
2.6.3 :001 > user = BankAccount.new
 => #<BankAccount:0x00007ff2841db6a8 @balance=0, @bank_statement=#<BankStatement:0x00007ff2841db680 @transaction=Transaction, @all_statement=[]>> 
2.6.3 :002 > user.withdraw(100)
Traceback (most recent call last):
        5: from /Users/tuannguyen/.rvm/rubies/ruby-2.6.3/bin/irb:23:in `<main>'
        4: from /Users/tuannguyen/.rvm/rubies/ruby-2.6.3/bin/irb:23:in `load'
        3: from /Users/tuannguyen/.rvm/rubies/ruby-2.6.3/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        2: from (irb):2
        1: from /Users/tuannguyen/Desktop/projects/tech_test/bank_test/lib/bank_account.rb:20:in `withdraw'
RuntimeError (Insufficient funds in your account)
2.6.3 :003 > user.deposit(1000)
 => 1000 
2.6.3 :004 > user.withdraw(200)
 => 800 
2.6.3 :005 > user.print_statement
date || credit || debit || balance
30/01/2020 ||  || 200 || 800
30/01/2020 || 1000 ||  || 1000
 => nil 
2.6.3 :006 > 
```

<h2>Gems used</h2>

```

> Rspec
> SimpleCov
> Rubocop

```

<h2>Approach </h2>

My approach for the tech test was to start of basic functionailty and create test which had dependancities on each other to make sure I had working code and test. I would then implement doubles and mocks afterwards. 