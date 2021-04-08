abstract class Animal {
  String nome;
  double _peso;    
  
  Animal(this.nome, this._peso);      
  
  double get peso => _peso;
  
  void fazerSom();
      
  void comer(double comida) {
    _peso += comida;
    print("$nome comeu! Seu peso agora é de ${peso} quilos!");
  }  
}


class  Cachorro extends Animal {    
  Cachorro(String nome, double peso) : super(nome, peso);
  void brincar () => print("$nome esta brincando...");
  
  @override
  void fazerSom() => print("$nome fez auau!!!");
  
  @override
  String toString() {
    print("Cachorro | Nome: $nome, Peso: $peso");
  }
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
  print(dog);
  
  Gato cat = Gato("Milk", 1);
  cat.comer(0.3);
  cat.fazerSom();  
}
