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
}


class  Cachorro extends Animal {    
  Cachorro(String nome, double peso) : super(nome, peso);
  void brincar () => print("$nome esta brincando...");
  void latir () => print("$nome está latindo!");
}


void main () {
  Cachorro c = Cachorro("Billy", 25);
  c.comer(2);
  c.latir();
  c.comer(3);
}
