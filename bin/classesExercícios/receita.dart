// O chef do bistrô que você trabalha pediu que o cardápio virtual
// tenha categorias de comida:
// comida vegana;
// bebidas;
// sobremesas.

// É seu trabalho encontrar a melhor maneira de implementar essas categorias com código Dart.

// A classe Receita já está pronta:

class Receita {
  String nome;
  double preco;

  Receita(this.nome, this.preco);
}

class ReceitaVegana extends Receita {
  bool isVegan = true;

  ReceitaVegana(super.nome, super.preco);
}
