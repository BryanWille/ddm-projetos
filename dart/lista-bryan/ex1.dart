import 'dart:io';

void main() {
  
  print("Digite o tamanho da base: ");
  double base = double.parse(stdin.readLineSync()!);

  print("Digite o tamanho da altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  
  double area = base * altura / 2;
  
  print("A area é de: $area");
}
