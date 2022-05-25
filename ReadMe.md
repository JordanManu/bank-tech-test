# Bank Tech Test

```
██                                                                                              
██                                                                                              
██                                                                                              
██                                                                                              
██                                                                                              
██                                                                                              
██                                                                                              
██                                                                                              
██                                              ░░░░                                            
██                                            ░░  ░░░░                                          
██                                          ░░  ░░░░░░░░                                        
██                                          ░░  ░░░░░░░░                                        
██                                            ░░  ░░░░                                          
██                                              ░░░░                                            
██                                                                                              
██                                                                                              
██                                          ▒▒▒▒▒▒▒▒▒▒▒▒                                        
██                              ▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░▒▒▒▒▒▒                                  
██                            ▒▒░░░░░░░░▒▒░░░░▓▓▓▓▓▓▓▓░░░░░░░░▒▒▒▒                              
██                            ▒▒░░▒▒▒▒▒▒▒▒░░▓▓░░░░░░░░  ░░░░░░░░░░▒▒                            
██                            ▒▒░░▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒                          
██                            ▒▒░░▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒░░▒▒                        
██                          ▒▒░░▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒                        
██                    ▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒                      
██                  ▒▒░░░░░░░░▓▓░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒░░▒▒▒▒                      
██                  ▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒                  
██                  ▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                
██                  ▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                
██                  ▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                  
██                  ▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                    
██                  ▒▒▒▒▒▒░░░░░░░░░░░░░░░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                    
██                    ▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                      
██                        ▒▒▒▒▒▒░░▒▒░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                      
██                          ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                        
██                            ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                          
██                              ▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒                            
██                                ▒▒░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░▒▒▒▒▒▒                              
██                                ▒▒░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒░░░░▒▒▒▒                              
██                                ▒▒▒▒░░░░▒▒▒▒        ▒▒▒▒░░░░▒▒▒▒                              
██                                ░░▒▒▒▒▒▒▒▒░░          ▒▒▒▒▒▒▒▒░░                              
██                                  ░░                        ░░                                
██                                                                                              
██                                                                                              
██                                                                                              
██                                                                                              
██                                                                                              
██                                                                                              
```

# Specification

* Requirements
  * [X] You should be able to interact with your code via a REPL like IRB or Node. 
  * [X] Deposits, withdrawal.
  * [X] Account statement (date, amount, balance) printing.
  * [X] Data can be kept in memory

## Acceptance Criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

## Screenshots of the program

![Screenshot](https://imgur.com/dqCwFGU.png)

## How to use

* Clone this repo to your local machine with ```git clone https://github.com/JordanManu/bank-tech-test.git```
* Run ```bundle install``` to install gems
* To run the tests using Rspec, you can run the command ```rspec``` in your terminal
* To check the quality of the code, use the command ```rubocop``` to run rubocop
* To use the program, start by opening irb in your terminal
* To load the program into irb use the command ```require "./lib/bank_account.rb"```
* From there, you can create a new instance of the BankAccount class using ```bank = BankAccount.new```
* To deposit money into the account, use the command bank.deposit(money) eg. ```bank.deposit(30)```
* To withdraw money from the account, use the command bank.withdraw(money) eg. ```bank.withdraw(20)```
* To view a bank statement, use the command ```bank.print_statement```
* Happy depositing! 

## My approach

- My approach to this challenge was to first create the user stories below from the specification given. 
- I then used a TDD approach to create simple and effective code.
- I started by having one BankAccount class, then after that was completed and working, I separated it into two classes - BankAccount and Statement.
- The BankAccount class is responsible for handling the transactions, and the Statement class is responsible for printing the Statement.

## User Stories

```
As a user, 
So that I can put money in my account, 
I'd like to be able to deposit money in my account

As a user, 
So that I can access my money, 
I would like to be able to withdraw money from my account

As a user, 
So that I know when I accessed my account, 
I would like to see the date the transactions took place

As a user, 
So that I can see the activity of my account, 
I would like to see a transcript of withdrawals with the date and amounts

As a user, 
So that I can see my recent account activity first, 
I would like to see my transactions in order from most recent to least.

As a user, 
So that my account will not go into overdraft,
I would like to not be able to withdraw more money than my account has.
```

## References

https://textart.sh/topic/bank




