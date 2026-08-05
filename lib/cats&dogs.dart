/* 
Crie uma classe `Animal` com um método `emitirSom()`. 
Em seguida, crie duas outras classes: `Cachorro` e `Gato`, que herdam o método da classe `Animal`. 
utilize a anotação `@override` para indicar que estão sobrescrevendo o método 
Ao adicionar o método `emitirSom()` nas classes `Cachorro` e `Gato`, 
— o método `emitirSom` deve fazer um print “O cachorro late” para `Cachorro` e “o gato miou” para `Gato`.

  Além disso, adicione métodos específicos para cada classe, 
  como `abanarRabo()` para o `Cachorro` 
  e `arranharMoveis()` para o Gato.

O print no terminal deve ser semelhante a isto:

  O cachorro late.
  O cachorro está abanando o rabo. 
  O gato miou.
  O gato está arranhando os móveis.
*/

class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print("O $nome, está emitindo um som.");
  }
}

class Gato extends Animal {
  Gato(super.nome);

  @override
  void emitirSom() {
    print("O $nome está miando!");
  }

  void arranharMoveis() {
    print("O gato está arranhando os móveis!");
  }
}

class Cachorro extends Animal {
  Cachorro(super.nome);

  @override
  void emitirSom() {
    print("O $nome está latindo!");
  }

  void abanarRabo() {
    print("O $nome está abanando o rabo.");
  }
}
