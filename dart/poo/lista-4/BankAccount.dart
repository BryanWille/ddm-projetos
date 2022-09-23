class BankAccount {
  late int _numberAccount;
  late String _clientName;
  late double _balance;
  late double _creditScore;
  late List<Map> clientList = new List.empty(growable: true);

  BankAccount(
      {required int numberAccount,
      required String clientName,
      double balance = 0,
      double creditScore = 0}) {
    this.createAccount(
        numberAccount: numberAccount,
        clientName: clientName,
        balance: balance,
        creditScore: creditScore);
  }

  void createAccount(
      {required int numberAccount,
      required String clientName,
      double balance = 0,
      double creditScore = 0}) {
    clientList.add({
      "NumberAccount": numberAccount,
      "ClientName": clientName,
      "Balance": balance,
      "CreditScore": creditScore
    });
  }

  void withdraw(double ammount, int accountNumber) {
    if (!accountNumberIsValid(accountNumber)) {
    } else {
      if (canWithdraw(ammount)) {
        int idSender = getId(accountNumber);
        clientList[idSender]["Balance"] -= ammount;
        print("Withdrawed $ammount, now you have US\$${clientList[idSender]["Balance"]}");
      } else {
        print("You have US\$${getBalance} of balance, and US\$${getCreditScore} of credit score, so you can't withdraw US\$${ammount}!");
      }
    }
  }

  void deposit(double ammount, int accountNumber) {
    if (!accountNumberIsValid(accountNumber)) {
    } else {
      int idReceiver = getId(accountNumber);
      clientList[idReceiver]["Balance"] += ammount;
      print("Deposited $ammount, now you have US\$${clientList[idReceiver]["Balance"]}");
    }
  }

  void transfer(
      int sendNumberAccount, int receiveNumberAccount, double ammount) {
    if (!(accountNumberIsValid(sendNumberAccount) && accountNumberIsValid(receiveNumberAccount))) {
    } else {
       currentAccount(sendNumberAccount);
       if(canWithdraw(ammount)){
          withdraw(ammount, sendNumberAccount);
          deposit(ammount, receiveNumberAccount);
          print("Transferency succesfully done!!!");
          currentAccount(sendNumberAccount);
          print("Now you have US\$${this._balance}");
       } else {
        print("The Sender don't have the ammount of money to send!");
       }
    }

   

  }

  int getId(int numberAccount) {
    int id = 0;
      for (var i = 0; i < clientList.length; i++) {
        if (clientList[i]["NumberAccount"] == numberAccount) {
          id = i;
          break;
        }
        ;
      }
    return id;
  }

  bool isClientInDebit() {
    return (0 >= this.getBalance);
  }

  bool canWithdraw(double ammount) {
    return (ammount <= this.getBalance + this.getCreditScore);
  }

  bool accountNumberIsValid(int accountNumber) {
    bool isValid = false;
    for (var i = 0; i < clientList.length; i++) {
      if (clientList[i]["NumberAccount"] == accountNumber) {
        isValid = true;
        currentAccount(accountNumber);
        break;
      }
      ;
    }
    if (!isValid) print("The Given Number Account Isn't Valid!");
    return isValid;
  }

  void currentAccount(int accountNumber) {
    int id = getId(accountNumber);
    _numberAccount = clientList[id]["NumberAccount"];
    _clientName = clientList[id]["ClientName"];
    _balance = clientList[id]["Balance"];
    _creditScore = clientList[id]["CreditScore"];
  }


  int get getNumberAccount => _numberAccount;
  String get getClientName => _clientName;
  double get getBalance => _balance;
  double get getCreditScore => _creditScore;

  void printAccount(int accountNumber){

    if (!accountNumberIsValid(accountNumber)){
    } else {
    int id = getId(accountNumber);
    print("=====================================================" +
    "\nAccount Number: ${clientList[id]["NumberAccount"]}" +
    "\nClient Name: ${clientList[id]["ClientName"]}" +
    "\nBalance: U\$${clientList[id]["Balance"]} " +
    "\nCredit Score U\$${clientList[id]["CreditScore"]}" +
    "\n=====================================================");
  }
  }
}
