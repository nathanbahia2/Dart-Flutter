class Pessoa {
  
  String nome;
  int _idade;
  double _altura;
  
  Pessoa(this.nome, this._idade, this._altura);
   
  void aniver () => _idade ++;
  
  int get idade => _idade;
  
  double get altura => _altura;
  
  set altura (double altura) {
    if (0 < altura && altura < 3) {
      _altura = altura;
    }
  } 
}

void main() {
  Pessoa p = Pessoa("Nathan", 27, 1.9);
  p.aniver();
  print(p.idade);
  p.altura = 3.5;
  print(p.altura);
}
