import 'dart:io';

void main(){

  print("Insira quantos anos você tem: ");
  int anos = int.parse(stdin.readLineSync()!);

  print("Insira quantos meses você tem: ");
  int meses = int.parse(stdin.readLineSync()!);

  print("Insira quantos dias você tem: ");
  int dias = int.parse(stdin.readLineSync()!);

  int idadeTotal = (anos * 365) + (meses * 30) + dias;
  print("Sua idade total em dias é $idadeTotal");
}