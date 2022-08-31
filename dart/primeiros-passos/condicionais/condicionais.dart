import 'dart:io';
import 'dart:core';

void main(){
  //nota();
  //pesoIdeal();
  postoGasolina();
}


void pesoIdeal(){
  double? pesoIdeal;
  String sexo = "";

  double altura = readDouble("Digite a sua altura: ");


  while(sexo != "M" && sexo != "F"){
    sexo = readString("Digite o seu sexo [M/F]: ")[0].toUpperCase();
    switch(sexo){
      case 'M':
        pesoIdeal = (72.7 * altura) - 58;
        break;
      case 'F':
        pesoIdeal = (62.1 * altura) - 44.7;
        break;
      default:
        print("Opção de sexo inválida");
        break;
    }
  }


  print("O seu peso ideal é de ${pesoIdeal}kg");

}


void  postoGasolina(){

  //0 Gasolina | 1 Etanol  

  

  String combustivel = readString("Gasolina [G]\nEtanol [E]\n>>>")[0].toUpperCase();

  switch (combustivel){
    case 'G':
    
  }
}


void nota(){
  int nota1 = readInt("Digite a primeira nota: ");
  int nota2 = readInt("Digite a segunda nota: ");

  double media = (nota1 + nota2) / 2;

  print("Aluno(a) " + (media >= 6 ? "aprovado(a)" : "reprovado(a)") +" ficou com $media pontos");
}


int readInt(String msg){
    print(msg);
    return int.parse(stdin.readLineSync()!);
}

String readString(String msg){
    print(msg);
    return stdin.readLineSync()!;
}

double readDouble(String msg){
    print(msg);
    return double.parse(stdin.readLineSync()!);
}