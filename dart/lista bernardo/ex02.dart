import 'dart:io';

void main() {
  
  print("Informe a sua idade em anos: ");
  int anos = int.parse(stdin.readLineSync()!);

  print("Informe seus meses: ");
  int meses = int.parse(stdin.readLineSync()!);

  print("Informe seus dias: ");
  int dias = int.parse(stdin.readLineSync()!);

  int idadeEmDias = 365 * anos + meses * 30 + dias;

  print(idadeEmDias);

}