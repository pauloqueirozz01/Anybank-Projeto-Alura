// Existem duas formas muito comuns para instanciar atributos da superclasse em subclasses.
// Veja o código ao seguir:

class Animal {
  String nome;

  Animal(this.nome);

  void comer() {
    print("$nome está comendo.");
  }
}

class Cachorro extends Animal {
  String cor;

  // Dentro da classe Cachorro ainda precisamos atribuir um valor para o atributo da superclasse nome.
  // A primeira forma que temos de atribuir esse valor é chamando o atributo super.nome dentro do construtor:
  // -> Uma das formas de Atribuição dentro da instância: Cachorro(this.cor, super.nome);

  // Mas existe uma outra forma também super comum de fazer essa instância, utilizando : super():
  Cachorro(this.cor, String nome)
    : super(
        nome,
      ); // na esquerda, foi feita atribuição da instância, utilizando : super()
  void latir() {
    print("O cachorro $nome, está latindo.");
  }
}
// Note que para atributos da própria subclasse utilizamos this. 
// e para atributos da superclasse apenas dizemos o seu tipo e o nome do atributo.
