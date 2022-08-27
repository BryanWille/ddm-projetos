import 'dart:io';

void main() {
  
  double distribuidor = 0.28;

  double impostosCORNO = 0.45;

  print("Informe o custo de fábrica do automóvel: ");
  double custo = double.parse(stdin.readLineSync()!);

  double valorFinal = custo * distribuidor + custo * impostosCORNO + custo;

  print("O valor final é de $valorFinal");
}