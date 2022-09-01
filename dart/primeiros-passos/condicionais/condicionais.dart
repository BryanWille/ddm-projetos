import 'dart:io';
import 'dart:core';

void main(){
  //nota();
  //pesoIdeal();
  //postoGasolina();
  //aposentadoria();
  avaliador();
}
void nota(){
  int nota1 = readInt("Digite a primeira nota: ");
  int nota2 = readInt("Digite a segunda nota: ");

  double media = (nota1 + nota2) / 2;

  print("Aluno(a) " + (media >= 6 ? "aprovado(a)" : "reprovado(a)") +" ficou com $media pontos");
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

  List etanol = new List.filled(3, 0);
  List gasolina = new List.filled(3, 0);
  //0 Gasolina | 1 Etanol  
  etanol[0] = "Etanol";
  gasolina[0] = "Gasolina";

  etanol[1] = readDouble("Digite o preço por litro do Etanol: R\$");
  gasolina[1] = readDouble("Digite o preço por litro de Gasolina: R\$");

  double totalAbastecer = readDouble("Digite quantos litros vai abastecer: ");

  if(totalAbastecer <= 20){
    etanol[2] = ((3 * totalAbastecer) / 100) * (etanol[1] * totalAbastecer);
    gasolina[2] = ((4 * totalAbastecer) / 100) * (gasolina[1] * totalAbastecer);
    print("Desconto de 3% em Etanol e 4% em Gasolina");
  } else {
    etanol[2] = ((5 * totalAbastecer) / 100) * etanol[1];
    gasolina[2] = ((6 * totalAbastecer) / 100) * gasolina[1];
    print("Desconto de 3% em Etanol e 4% em Gasolina");
  }

  String msg = "A melhor opção é: ";
  if(gasolina[2] > etanol[2]){
    print(msg + "etanol pois o preço é R\$${etanol[2]} enquanto a gasolina é R\$${gasolina[2]}. Uma diferença de R\$${gasolina[2] - etanol[2]}  ");
  } else {
    print(msg + "gasolina pois o preço é R\$${gasolina[2]} enquanto o etanol é R\$${etanol[2]}. Uma diferença de R\$${etanol[2] - gasolina[2]}  ");
  }

}




void aposentadoria(){
  int anoAtual = DateTime.now().year;
  List funcionario = new List.empty(growable: true);
  funcionario.add(readString("Digite a matrícula do funcionário: "));
  funcionario.add(readInt("Digite o ano de nascimento: "));
  funcionario.add(readInt("Digite o ano de ingresso na primeira empresa do funcionário: "));

  num idade = anoAtual - funcionario[1];
  num tempoTrabalhado = anoAtual - funcionario[2]; 

  bool aprovado = false;

  if( idade >= 60){
    if( tempoTrabalhado >= 25 || idade >= 65){
      aprovado = true;
    }
  } else if (tempoTrabalhado >= 30){
    aprovado = true;
  }

    print("O funcionário ${funcionario[0]} tem $idade anos, já trabalhou $tempoTrabalhado anos. \n" + (aprovado ? "Requerer Aposentadoria" : "Não é possível requerer"));

}

void avaliador(){
  List notas = new List.empty(growable: true);
  double media = 0;
  notas.add(readString("Digite o nome do aluno: "));
  for(int i = 1; i < 4; i++){
    notas.add(readDouble("Digite a nota da ${i+1}° avaliação de ${notas[0]}"));
    media += notas[i];
  }
  
  media /= 3;

  String conceito = "";

  if(media < 6){
    conceito = "D";
  } else if (media < 7.5){
    conceito = "C";
  } else if (media < 9){
    conceito = "B";
  } else {
    conceito = "A";
  }

  print("O aluno ${notas[0]} com média $media teve a nota: $conceito");
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