import 'dart:io';

void main() {
  print("Digite a temperatura em F°: ");
  double f = double.parse(stdin.readLineSync()!);
  double c = ((f - 32) / 9);
  print("Temperatura $c C°");
}

