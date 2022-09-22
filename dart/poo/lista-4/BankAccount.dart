class BankAccount{
    late int _numberAccount;
    late String _clientName;
    double? _balance;
    double? _creditScore;

    BankAccount({required int numberAccount, 
    required String lientName, double balance = 0, 
    double creditScore = 0}){

    }

    int get getNumberAccount =>  _numberAccount;
    String get getClientName =>  _clientName; 
    double get getBalance =>  _balance!;  
    double get getCreditScore =>  _creditScore!;

    void set setNumberAccount(int number){this._numberAccount = number;}
    void set setClientName(String clientName){this._clientName = clientName;}
    void set setBalance(double balance){this._balance = balance;}
    void set setCreditScore(double number){this._creditScore = _creditScore;}


}