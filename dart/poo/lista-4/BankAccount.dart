class BankAccount{
    late int _numberAccount;
    late String _clientName;
    double? _balance;
    double? _creditScore;

    BankAccount({required int numberAccount, 
    required String lientName, double balance = 0, 
    double creditScore = 0}){

    }

    void withdraw(double ammount){
      double immBalance = ammount - getBalance;
      if (immBalance > 0 || (0 > immBalance && immBalance.abs() >= getCreditScore)){
        print("Now your balance is U\$${this.getBalance}");
        _balance = this.getBalance - ammount;
      } else {
        print("You have US\$${getBalance} of balance, and US\$${getCreditScore} of score, so you can't withdraw U\$${ammount}!");
      }
    }


    int get getNumberAccount =>  _numberAccount;
    String get getClientName =>  _clientName; 
    double get getBalance =>  _balance!;  
    double get getCreditScore =>  _creditScore!;

    void set setNumberAccount(int number){this._numberAccount = number;}
    void set setClientName(String clientName){this._clientName = clientName;}
    set setBalance(double balance){this._balance = balance;}
    void set setCreditScore(double number){this._creditScore = _creditScore;}


}