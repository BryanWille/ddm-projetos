import 'dart:io';

void main() {
  print("Informe o número de eleitores totais: ");
  int eleitores = int.parse(stdin.readLineSync()!);

  print("Informe o número de votos nulos: ");
  int nulos = int.parse(stdin.readLineSync()!);

  print("Informe o número de votos em braco: ");
  int branco = int.parse(stdin.readLineSync()!);

  print("Informe o número de votos válidos: ");
  int validos = int.parse(stdin.readLineSync()!);
}
