import 'BankAccount.dart'; // Association not agregation

class Branch{
  late String _branchName;
  late int _branchNumber;
  List<int> _accounts = new List.empty(growable: true);

  Branch({required this.setBranchName, required this.branchNumber})

  String get getBranchName => _branchName;
  set setBranchName(String name) => this._branchName = name;



}