import 'dart:io';

void main() {
  print("Digite a sua data de nascimento: dia/mes/ano");
  String dataNascimento = stdin.readLineSync()!;
  int dia = int.parse(dataNascimento.substring(0, 2));
  int mes = int.parse(dataNascimento.substring(3, 5));
  int ano = int.parse(dataNascimento.substring(6));

  var dataNasc = DateTime.utc(ano, mes, dia);
  var data = DateTime.now().difference(dataNasc).inDays;

  print("Você tem um total de $data dias vividos");
}
