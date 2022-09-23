import 'dart:convert';
import 'dart:math';

class ContaBancaria{
  late int _accountNumber;
  late String _nameClient;
  late double _creditLimit;
  late double _balance;

  ContaBancaria({required this._nameClient!, int this._accountNumber!, double creditLimit = 0, double balance = 0}){

  }

  int get getAccountNumber => _accountNumber;
  String get getName => _nameClient;
  double get getCreditLimit => _creditLimit;
  double get getBalance => _balance;

  set setAccountNumber(int accountNumber) => _accountNumber = accountNumber;
  set setNameClient(String nameClient) => _nameClient = nameClient;
  set setCreditLimit(double creditLimit) => _creditLimit = creditLimit;
  set setBalance(double balance) => _balance = balance;

}