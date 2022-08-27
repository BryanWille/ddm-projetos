import 'dart:io';

void main() {
  print("Digite quantos anos você tem: ");
  int ano = int.parse(stdin.readLineSync()!);

  print("Digite quantos meses você tem: ");
  int meses = int.parse(stdin.readLineSync()!);

  print("Digite quantos dias você tem: ");
  int dia = int.parse(stdin.readLineSync()!);

  int diasTotal = (ano * 365) + (meses * 30) + dia;

  print("Você tem um total de $diasTotal dias vividos");
}
