void main (){
  List<String> nomes = ['Nathan','Batista', 'Assis'];
  
  print(nomes[0]);
  print(nomes);
  
  nomes.add('Bahia');
  print(nomes);
  
  print("Tamanho da lista: ${nomes.length}");
  
  nomes.insert(0, 'Amanda');
  print(nomes);    
    
  print(nomes.contains('Bahia'));
  print(nomes.contains('Fonseca'));
  
  //*****************************************
  List<Pessoa> pessoas = List();
  pessoas.add(Pessoa("Nathan", 27));
  pessoas.add(Pessoa("Amanda", 26));
  
  print(pessoas);
  
  for (Pessoa p in pessoas) {
    print(p);
  }
}


class Pessoa {
  String nome;
  int idade;
  Pessoa(this.nome, this.idade);
  
  @override
  String toString() {
    return "$nome, $idade anos";
  }
}
