import 'BankAccount.dart';
void main(){

  //Validação das Funcionalidades
  BankAccount contas = new BankAccount(numberAccount: 1, clientName: "Bryan Wille", balance: 100, creditScore: 100);
  contas.createAccount(numberAccount: 2, clientName: "José Augusto", balance: 100, creditScore: 100);
  contas.createAccount(numberAccount: 3, clientName: "Matheus Dutra", balance: 100, creditScore: 100);

  contas.withdraw(50, 1);
  contas.withdraw(150, 2);
  contas.withdraw(250, 3);
  contas.printAccount(3);

  // Validação das Transferencias 
  contas.createAccount(numberAccount: 4, clientName: "Bryan Wille", balance: 100, creditScore: 100);
  contas.createAccount(numberAccount: 5, clientName: "José Augusto", balance: 100, creditScore: 100);

  /* Caso de Teste 1
  contas.transfer(4, 5, 50);
  contas.printAccount(4);
  contas.printAccount(5);
  */

  /* Caso de Teste 2
  contas.transfer(4, 5, 100);
  contas.printAccount(4);
  contas.printAccount(5);
  */

  /* Caso de Teste 3
  contas.transfer(4, 5, 250);
  contas.printAccount(4);
  contas.printAccount(5);
  */
  
}