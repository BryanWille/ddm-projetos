import 'dart:io';

void main() {
  
  print("Informe a base: ");
  double base = double.parse(stdin.readLineSync()!);

  print("Informe a altura: ");
  double altura = double.parse(stdin.readLineSync()!);

  double area = (base* altura)/2.0;
  
  print("Área é igual a $area");

}