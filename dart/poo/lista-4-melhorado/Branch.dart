import 'BankAccount.dart'; // Association not agregation

class Branch{
  late String _branchName;
  late int _branchNumber;
  List<BankAccount> _accounts = new List.empty(growable: true);

  Branch({required String branchName, required int branchNumber}){
    this.setBranchName = branchName;
    this.setBranchNumber = branchNumber;
  }


  void addAccount(BankAccount account){
    _accounts.add(account);
  }

  void searchAccount(int accountNumber){
    bool find = false;
    for(var account in _accounts){
      if(account.getNumberAccount == accountNumber){
        find = true;
        break;
      }
    }
    print( find ? "Account found" : "Account not found");
  }

  List<BankAccount> get getAccounts => _accounts; 
  String get getBranchName => _branchName;
  int get getBranchNumber => _branchNumber;
  
  set setBranchNumber(int number) => this._branchNumber = number; 
  set setBranchName(String name) => this._branchName = name;

  @override
  String toString(){
    for(var account in _accounts){
      print(account);
    }
    return "";
  }

}
