import 'dart:io';
abstract class BankAccount{
  BankAccount({required this.balance});
  double balance;
  void deposit(double amount){
    balance += amount;
  }
  void withdraw(double amount);
}
//Savings account
class SavingsAccount extends BankAccount{
  SavingsAccount(double balance) : super(balance: balance);
  void withdraw(double amount){
    if(balance >= amount){
      balance -= amount;
    }else{
      print("Insufficient funds");
    }
  }
}
class CheckingAccount extends BankAccount{
  CheckingAccount(double balance) : super(balance : balance);
  void withdraw(double amount){
    if(balance >= amount){
      balance -= amount;
    } else{
      balance -= amount;
      if(balance < 0){
        print("Overdraft fee applied");
        balance -= 10;
      }
    }
  }
}
main(){

}
