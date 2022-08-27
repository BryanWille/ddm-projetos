import 'dart:io';

void main(){

  print("Digite a base: ");
  int base = int.parse(stdin.readLineSync()!);
  
  print("Agora, digite a altura: ");
  int altura = int.parse(stdin.readLineSync()!);

  double area = (base * altura)/2;
  print("A área do triângulo é $area");
  
}
