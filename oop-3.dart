class Animal {
  String nome;
  double _peso;    
  
  Animal(this.nome, this._peso);      
  
  double get peso {
    return _peso;
  }
      
  void comer(double comida) {
    _peso += comida;
    print("$nome comeu! Seu peso agora é de ${peso} quilos!");
  }
  
  void fazerSom() => print("$nome fez um som");
}


class  Cachorro extends Animal {    
  Cachorro(String nome, double peso) : super(nome, peso);
  void brincar () => print("$nome esta brincando...");
  
  @override
  void fazerSom() => print("$nome fez auau!!!");
}


class  Gato extends Animal {    
  Gato(String nome, double peso) : super(nome, peso);
    
  @override
  void fazerSom() => print("$nome fez maiu!!!");
}


void main () {
  Cachorro dog = Cachorro("Billy", 25);
  dog.comer(2);
  dog.fazerSom();
  dog.brincar();
  
  Gato cat = Gato("Milk", 1);
  cat.comer(0.3);
  cat.fazerSom();  
}
