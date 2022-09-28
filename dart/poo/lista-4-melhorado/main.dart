import 'BankAccount.dart';
import 'Branch.dart';

void main(){

  // ================= Validations Tests ================= //

  /*
  BankAccount Bryan = new BankAccount(numberAccount: 1, clientName: "Bryan", balance: 100, creditScore: 100);
  print(Bryan);
  Bryan.withdraw(50);
  print(Bryan);

  BankAccount Wille = new BankAccount(numberAccount: 2, clientName: "Wille", balance: 100, creditScore: 150);
  print(Wille);
  Wille.withdraw(150);
  print(Wille);

  BankAccount Souto = new BankAccount(numberAccount: 3, clientName: "Souto", balance: 100, creditScore: 100);
  print(Souto);
  Souto.withdraw(250);
  print(Souto);
  */

  // ================= Transference Tests ================= // 
  BankAccount Bryan = new BankAccount(numberAccount: 1, clientName: "Bryan", balance: 100, creditScore: 100);
  BankAccount Wille = new BankAccount(numberAccount: 2, clientName: "Wille", balance: 100, creditScore: 100);
  BankAccount Noe = new BankAccount(numberAccount: 3, clientName: "Noe", balance: 100, creditScore: 100);

  Branch main = new Branch(branchName: "IDK", branchNumber: 0);
  main.addAccount(Bryan);
  main.addAccount(Wille);
  main.addAccount(Noe);

  print(main);

  // 1: Bryan.transfer(Bryan, Wille, 50);
  // 2: Bryan.transfer(Bryan, Wille, 100);
  
  // 3:
  //Bryan.transfer(Bryan, Wille, 250);
  //print(Bryan);
  //print(Wille);


}
