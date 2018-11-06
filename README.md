## Bank Tech Test
This project features a command line Ruby app that simulates some of the main banking operations as deposit and withdraw of funds. The user can also print on screen a statement with all the transactions.

### How to Use
- Clone this repo to your machine
- Run `bundle install` to install gem dependencies
- In your terminal run  pry and require './lib/account'
- Interact with the app following the example below

### Testing
The app was fully tested using RSpec. and achieved 100%
coverage


### Example:

Create a new account.
```
> Natwest = Account.new
=> #<Account:0x00007f8b29025650 @balance=0, @history_log=#<History_log:0x00007f8b290254c0 @formatter=#<Formatter:0x00007f8b29024930>, @history=[]>>
```

Deposit funds.
```
> Natwest.deposit(1000)
  => 1000
```
Deposit funds again.
```
> Natwest.deposit(2000)
  => 1000
```

Whitdraw money
```
> Natwest.withdraw(500)
  => 500
```
### Screenshot of running app
```
![image](https://user-images.githubusercontent.com/24396579/48071766-f2f00c80-e1d2-11e8-8061-8a7e56bb7564.png)

```

Check balance
### Bank statement format
```
> Natwest.show_statement

date || credit || debit || balance
06-11-2018 ||  || 500.00 || 2500.00
06-11-2018 || 2000.00 ||  || 3000.00
06-11-2018 || 1000.00 ||  || 1000.00
=> nil

```
### User Stories

```
As a user
So that I don't have to keep cash at home
I would like to deposit money into my bank

As a user
So that I can use my money to buy goods
I would like to withdraw money from the bank

As a Banker
So that users can only deposit valid amounts
I would like to see an error if the deposited amount is < 0

As a Banker
So that users can only deposit valid amounts
I would like to see an error if the deposited amount is not a number

As a Banker
So that users can withdraw available funds
I would like to see an error if the amount withdrawn is greater than the available funds

As a user
So that I can check my available funds
I would like to be able to see my account balance

As a user
So that I can keep on track of my finances
I would like to view a bank statement with the newest transaction on the top
```
