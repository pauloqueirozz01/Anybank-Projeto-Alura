/* João trabalha em uma plataforma de e-commerce e está implementando uma funcionalidade de recomendação de produtos. 
Ele possui uma lista de produtos que a pessoa usuária visitou e 
quer verificar se algum item visitado já foi adicionado ao carrinho.

// Este é apenas um exemplo, os valores que as listas possuem podem variar. 

List<String> produtosCarrinho = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 

List<String> produtosVisitados = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 

Crie uma função que receba as listas de produtos visitados e no carrinho, 
exibindo os itens visitados que ainda não estão no carrinho.
*/

import 'dart:io';

void main() {
  List<String> produtosCarrinho = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
  ];

  List<String> produtosVisitados = [
    "arroz",
    "feijão",
    "macarrão",
    "leite",
    "açúcar",
    "queijo",
  ];

  void listarVisitados(
    List<String> produtosCarrinho,
    List<String> produtosVisitados,
  ) {
    for (String produto in produtosVisitados) {
      if (!produtosCarrinho.contains(produto)) {
        print("O $produto, não foi adicionado ao carrinho.");
      }
    }
  }

  listarVisitados(produtosCarrinho, produtosVisitados);

  void listVisits(
    List<String> produtosCarrinho,
    List<String> produtosVisitados,
  ) {
    for (String product in produtosVisitados) {
      if (!produtosCarrinho.contains(product)) {
        print("O $product não foi adicionado ainda.");
      }
    }
  }

  listVisits(produtosCarrinho, produtosVisitados);

  void adicionarProduto() {
    print("Gostaria de adicionar qual produto ao carrinho?");
    String produto = stdin.readLineSync()!;

    if (produto.isNotEmpty) {
      produtosCarrinho.add(produto);
      print("$produto foi adicionado ao carrinho, ${produtosCarrinho.length}");
    } else {
      print("Por favor, insira um nome válido.");
      adicionarProduto();
    }
  }

  adicionarProduto();

  // String checandoProduto() {
  //   for (String produto in produtosCarrinho) {
  //     if (produtosCarrinho.contains(produto)) {
  //       print("O $produto está no carrinho, pode seguir com a compra.");
  //     } else {
  //       print("$produto não está no carrinho ainda.");
  //       adicionarProduto(produto);
  //     }
  //   }
  //   return checandoProduto();
  // }

  // checandoProduto();
}
