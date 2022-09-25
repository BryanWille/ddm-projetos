class BankAccount{
    // =========== Attributes and Constructor =========== //
    late int _numberAccount;
    late String _clientName;
    late double _balance;
    late double _creditScore;

    BankAccount({required int numberAccount, required String clientName, double balance = 0, double creditScore = 0}){
      this._numberAccount = numberAccount;
      this._clientName = clientName;
      this._balance = balance;
      this._creditScore = creditScore;
    }


    // =========== Main Operations =========== //
    void transfer(BankAccount sender, BankAccount receiver, double amount){
      if(sender.canWithdraw(amount)){
        sender.withdraw(amount);
        receiver.deposit(amount);
      } else {
        operationNotDone();
      }
    }

    void withdraw(double amount){
      if(canWithdraw(amount)){
        removeAmount(amount);
        operationDone();
      } else {
        operationNotDone();
      }
    }

    void deposit(double amount){
      this.setBalance = this.getBalance + amount;
      operationDone();
    }


    // =========== Removing and Add Money From Balance =========== //
    void removeAmount(double amount) => this.setBalance = this.getBalance - amount;
    void addAmount(double amount) => this.setBalance = this.getBalance + amount;


    // =========== Boolean Test ===========
    bool canWithdraw(double amount) => this.getBalance + this.getCreditScore >= amount;


    // =========== Automatized Messages =========== //
    void operationDone() => print("Operation successfully done, now ${this._clientName} have US\$${this.getBalance} on they account!");
    void operationNotDone() => print("${this.getClientName} don't have enough money for this operation!");


    // =========== Getters and Setters =========== //
    int get getNumberAccount => _numberAccount;
    String get getClientName => _clientName; 
    double get getBalance => _balance;  
    double get getCreditScore => _creditScore;

    set setNumberAccount(int number){this._numberAccount = number;}
    set setClientName(String clientName){this._clientName = clientName;}
    set setBalance(double balance){this._balance = balance;}
    set setCreditScore(double number){this._creditScore = _creditScore;}


    // =========== To String =========== //
    @override
    String toString(){
      return "========================================\n" +
      "Account Number: ${_numberAccount}\n"+
      "Client Name: ${_clientName}\n" +
      "Balance: \$${_balance}\n"+
      "Credit Score: \$${_creditScore}\n" 
      "========================================";
    }

}