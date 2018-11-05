##Bank Tech Test


## User Stories

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
I would like to view a bank statement in reverse chronological order
```
### Bank statement format

```
date       || credit || debit || balance
14/01/2012 ||        ||500.00 || 2500.00
13/01/2012 ||2000.00 ||       || 3000.00
10/01/2012 || 1000.00||       || 1000.00
```
