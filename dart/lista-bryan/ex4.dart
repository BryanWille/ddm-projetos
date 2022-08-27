import 'dart:io';

void main() {
  int branco, nulo, valido;

  print("Digite o número de eleitores: ");
  int eleitores = int.parse(stdin.readLineSync()!);

  print("Digite o número de votos nulos: ");
  nulo = int.parse(stdin.readLineSync()!);

  print("Digite o número de votos brancos: ");
  branco = int.parse(stdin.readLineSync()!);

  print("Digite o número de votos válidos: ");
  valido = int.parse(stdin.readLineSync()!);

  double porcNulo = nulo * 100 / eleitores;
  double porcBranco = branco * 100 / eleitores;
  double porcValido = valido * 100 / eleitores;

  print(
      "================= \nBranco: $porcBranco% \nNulo: $porcNulo% \nValidos: $porcValido%");
}
