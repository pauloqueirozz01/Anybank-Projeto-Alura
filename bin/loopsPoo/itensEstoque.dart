// Criando uma classe para itens de estoque

// Você trabalha no time de desenvolvimento de um sistema de gestão de estoque para uma loja de eletrônicos.
// Sua tarefa é criar uma classe chamada Item que deverá
// armazenar informações sobre o nome do produto e a quantidade em estoque.
// Em seguida, você deve instanciar dois itens:
// um para "Smartphone", com 100 unidades em estoque,
// e outro para "Notebook", com 50 unidades.
// Por fim, você deve imprimir as informações desses itens no terminal.

// O print no terminal deve ser algo parecido com isto:
import 'dart:io';

void main() {
  print("");
  print("Sistema de Estoque de Itens - Dart POO");
  print("");

  Item smartphone = Item("Smartphone", 100, 2450.00);
  Item notebook = Item("Notebook", 50, 5500);
  Item tablet = Item("Tablet", 50, 1200);
  Item iPad = Item("iPad", 65, 1450.89);
  Item airPods = Item("AirPods", 200, 849.90);

  List<Item> itens = <Item>[smartphone, notebook, tablet, iPad, airPods];

  for (Item item in itens) {
    print(
      "Produto: ${item.nomeDoItem}, Quantidade: ${item.quantidadeItem}, Valor: ${item.precoItem}",
    );
  }

  print("");
  print("Atualizando o preço do notebook, acabou de entrar em promoção.");
  print("Qual o novo valor do notebbok?");

  double novoPreco = double.parse(stdin.readLineSync()!);
  notebook.addPricing(novoPreco);

  print(notebook.precoItem);

  // Para modificar um valor novo vamos usar
}

class Item {
  String nomeDoItem;
  int quantidadeItem;
  double precoItem;

  Item(this.nomeDoItem, this.quantidadeItem, this.precoItem);

  // 2.Implementando operações de entrada e saída de estoque

  // Agora que criou a classe Item,
  //você precisa adicionar funcionalidades para registrar entradas e saídas de produtos no estoque.
  // Implemente métodos dentro da classe Item para realizar essas operações.
  // Teste esses métodos registrando
  // uma entrada de 20 unidades para o "Smartphone" e
  // uma saída de 10 unidades do "Notebook".
  // Por último, imprima as novas quantidades em estoque no terminal.
  void registerInput(int valor) {
    quantidadeItem += valor;
  }

  void registerOutput(int valor) {
    if (quantidadeItem >= valor) {
      quantidadeItem -= valor;
    } else {
      print("O valor digitado é maior que a quantidade de itens disponíveis.");
    }
  }

  // 3. Gerenciando múltiplos itens de estoque

  // Você percebeu que a loja possui muitos produtos.
  // Sua tarefa agora é fazer uma lista que armazena várias instâncias da classe ItemEstoque.
  // Em seguida, implemente um laço de repetição que percorra essa lista e
  // imprima as informações de cada item em estoque.
  // Para testar, crie pelo menos três itens com diferentes produtos e quantidades,
  // adicione-os à lista e exiba os detalhes de todos os itens cadastrados.

  // Agora que você já tem um controle de estoque,
  // vamos acrescentar mais uma funcionalidade ao sistema: o controle de preços dos produtos.
  // Sua tarefa é adicionar um novo atributo preco à classe ItemEstoque.
  // Em seguida, implemente um método que permita alterar o preço de um item específico.
  // Crie três itens, defina seus preços iniciais e depois altere o preço de um deles.
  // Por fim, imprima o nome do produto, sua quantidade em estoque e o preço atualizado.
  void addPricing(double novoPreco) {
    precoItem = novoPreco;
  }
}
