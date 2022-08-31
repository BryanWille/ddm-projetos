import 'dart:io';

void main() {
  var votos = [];

  print("Digite o número de eleitores: ");
  int eleitores = int.parse(stdin.readLineSync()!);

  print("Digite o número de votos nulos: ");
  votos.add(int.parse(stdin.readLineSync()!));

  print("Digite o número de votos brancos: ");
  votos.add(int.parse(stdin.readLineSync()!));

  print("Digite o número de votos válidos: ");
  votos.add(int.parse(stdin.readLineSync()!));

  for (var i = 2; i >= 0; i--) {
    votos.add(votos[i] * 100 / eleitores);
    print(i < votos.length);
  }

  print(
      "================= \nBranco: ${votos[3]}% \nNulo: ${votos[4]}% \nValidos: ${votos[5]}%");
}
