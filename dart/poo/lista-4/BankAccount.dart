class BankAccount{
    late int _numberAccount;
    late String _clientName;
    late double _balance;
    late double _creditScore;
    late double _currentCreditScore;

    BankAccount({required int numberAccount, required String clientName, double balance = 0, double creditScore = 0}){
      this._numberAccount = numberAccount;
      this._clientName = clientName;
      this._balance = balance;
      this._creditScore = creditScore;
      this._currentCreditScore = creditScore;
    }

    void withdraw(double ammount){
      double immBalance = ammount - getBalance; // Immediate Money the Client have on account
      if (immBalance > 0){ // If the client have more money than 0 in balance, they can withdraw
        print("Now your balance is U\$${this.getBalance}");
        _balance = this.getBalance - ammount;
      } else if (0 > immBalance && immBalance.abs() <= getCurrentCreditScore){ // if they not have more in balance than they want to withdraw and they CreditScore can afford with it
        _balance = 0;
        _currentCreditScore = this.getCurrentCreditScore - immBalance.abs();
        print("Now your balance is U\$${this.getBalance}");
        print("Now your Credit Score is U\$${this.getCurrentCreditScore}");
      } else { // if balance + credit score cannot afford with the withdraw, they cannot withdraw
        print("You have US\$${getBalance} of balance, and US\$${getCreditScore} of credit score, so you can't withdraw U\$${ammount}!");
      }
    }

    void deposit(double ammount){
      if(isBalanceZero()){ // The Client is in debt with the Bank?
        if(ammount + this._currentCreditScore > this._creditScore){ // If the client pay more than the debit, the money will go to balance
          this._balance += _creditScore - (ammount + this._currentCreditScore);
          this._currentCreditScore = _creditScore;
        } else { // else the deposit, will pay the debt
          this._currentCreditScore += ammount;
        }
      } else { // if the client is not in debt, the money will go directly to the balance
          this._balance += ammount;
        }
    }

    bool isBalanceZero(){ return (0 == this.getBalance);}


    int get getNumberAccount => _numberAccount;
    String get getClientName => _clientName; 
    double get getBalance => _balance;  
    double get getCreditScore => _creditScore;
    double get getCurrentCreditScore => _currentCreditScore;

    set setNumberAccount(int number){this._numberAccount = number;}
    set setClientName(String clientName){this._clientName = clientName;}
    set setBalance(double balance){this._balance = balance;}
    set setCreditScore(double number){this._creditScore = _creditScore;}


}