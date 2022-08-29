import 'dart:io';

void main() {
  print("Digite o preço do carro em: R\$");
  double precoFab = double.parse(stdin.readLineSync()!);

  double imposto = precoFab + (precoFab * 0.28) + (precoFab * 0.45);

  print("O Preço final é de R\$$imposto");
}
