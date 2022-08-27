import 'dart:io';

void main(){
  print("Insira o custo de fábrica: ");
  int custoFabrica = int.parse(stdin.readLineSync()!);

  print("Insira a porcentagem do distribuidor: ");
  int percentFabrica = int.parse(stdin.readLineSync()!);

  print("Agora, insira a porcentagem dos impostos");
  int percentImpostos = int.parse(stdin.readLineSync()!);

  double precoTotal = custoFabrica + (custoFabrica * (percentFabrica / 100)) + (custoFabrica * (percentImpostos / 100));
  print("O preço do carro é $precoTotal");
}