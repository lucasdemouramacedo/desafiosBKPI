List unzip(List list){
  List listaOrdenada = [];
  int aux;
  //Colocando os numeros em um único array
  for(int i=0; i<list.length; i++){
    for(int j=0; j<list[i].length; j++){
      listaOrdenada.add(list[i][j]);
    }
  }
  
  //Ordenação do array
  for(int i=0; i<listaOrdenada.length; i++){
    for(int j=1; j<listaOrdenada.length; j++){
      if(listaOrdenada[j-1]>=listaOrdenada[j]){
        aux = listaOrdenada[j];
        listaOrdenada[j] = listaOrdenada[j-1];
        listaOrdenada[j-1] = aux;
      }
    }
  }
  
  return listaOrdenada;
}

void main() {
  List list = [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]];
  print(unzip(list));
}
