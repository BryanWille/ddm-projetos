import 'dart:io';

void main() {
  calcularArea(); // 1
  dataNascimento(); // 2
  impostoCarro(); // 3
  porcentagemVotos(); // 4
  conversorTemperatura(60); // 5
}

void calcularArea() {
  print("Digite o tamanho da base: ");
  double base = double.parse(stdin.readLineSync()!);

  print("Digite o tamanho da altura: ");
  double altura = double.parse(stdin.readLineSync()!);

  double area = base * altura / 2;

  print("A area é de: $area");
}

void dataNascimento() {
  print("Digite a sua data de nascimento: dia/mes/ano");
  String dataNascimento = stdin.readLineSync()!;
  int dia = int.parse(dataNascimento.substring(0, 2));
  int mes = int.parse(dataNascimento.substring(3, 5));
  int ano = int.parse(dataNascimento.substring(6));

  var dataNasc = DateTime.utc(ano, mes, dia);
  var data = DateTime.now().difference(dataNasc).inDays;

  print("Você tem um total de $data dias vividos");
}

void impostoCarro() {
  print("Digite o preço do carro em: R\$");
  double precoFab = double.parse(stdin.readLineSync()!);

  double imposto = precoFab + (precoFab * 0.28) + (precoFab * 0.45);

  print("O Preço final é de R\$$imposto");
}

void porcentagemVotos() {
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

void conversorTemperatura(int fahrenheit) {
  double c = ((fahrenheit - 32) / 9) * 5;
  print("Temperatura $c C°");
}
