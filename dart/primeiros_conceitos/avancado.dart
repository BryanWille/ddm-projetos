int? poderiaRetornarNullMasNaoVai() => -3; // int? significa que o valor é null, por porém retorna -3

void main(){
  int? poderiaSerNulMasNaoEh = 1;
  List<int?> listaQuePoderiaSerNula = [2, null, 4];

  int a = poderiaSerNulMasNaoEh;
  int b = listaQuePoderiaSerNula[2]!;
  print(b);
  int c = poderiaRetornarNullMasNaoVai()!.abs(); //Exclamação força a ser do tipo normal, cortando a interrogação.



}