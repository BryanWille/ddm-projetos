class BankAccount{
    late int _numberAccount;
    late String _clientName;
    double? _balance;
    double? _creditScore;
    double? _currentCreditScore;

    BankAccount({required int numberAccount, required String clientName, double balance = 0, double creditScore = 0}){

    }

    void withdraw(double ammount){
      double immBalance = ammount - getBalance;
      if (immBalance > 0){
        print("Now your balance is U\$${this.getBalance}");
        _balance = this.getBalance - ammount;
      } else if (0 > immBalance && immBalance.abs() >= getCreditScore){
        _balance = 0;
        _creditScore = this.getCreditScore - immBalance.abs();
        print("Now your balance is U\$${this.getBalance}");
        print("Now your Credit Score is U\$${this.getCurrentCreditScore}");
      } else {
        print("You have US\$${getBalance} of balance, and US\$${getCreditScore} of score, so you can't withdraw U\$${ammount}!");
      }
    }

    void deposit(double ammount){
      if(0 > getCreditScore){
        _creditScore = 
      }
    }


    int get getNumberAccount => _numberAccount;
    String get getClientName => _clientName; 
    double get getBalance => _balance!;  
    double get getCreditScore => _creditScore!;
    double get getCurrentCreditScore => _currentCreditScore!;

    void set setNumberAccount(int number){this._numberAccount = number;}
    void set setClientName(String clientName){this._clientName = clientName;}
    set setBalance(double balance){this._balance = balance;}
    void set setCreditScore(double number){this._creditScore = _creditScore;}


}