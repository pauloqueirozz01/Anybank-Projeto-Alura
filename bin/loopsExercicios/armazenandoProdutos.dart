/* 
Uma empresa está gerenciando o inventário de seus produtos e,
precisa de uma solução para monitorar a quantidade de unidades de certos itens em seu estoque. 
Para isso, você deve criar uma função que, dado uma lista de produtos, 
conte quantas vezes o item "maçã" aparece na lista de produtos.


// Este é apenas um exemplo, os valores que a lista possui podem variar. 

List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"];
*/

void main() {
  List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"];

  print(
    "Este programa checa quantas vezes a maçã aparece entre os produtos listados",
  );

  int contarItens(List<String> produtos) {
    int index = 0;
    for (String produto in produtos) {
      if (produto == "maçã") {
        index++;
        print("A palavra maçã apareceu pela $indexº vez");
      }
    }
    return index;
  }

  contarItens(produtos);
}
