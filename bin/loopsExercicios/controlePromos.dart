/* 
Uma loja tem dois sets de promoções. 
Um contém os identificadores (ID) dos produtos da promoção da semana, 
enquanto o outro contém os identificadores dos produtos da promoção de fim de mês.


  Set<int> produtosSemana = {1, 2, 3, 4};   

  Set<int> produtosMes = {3, 4, 5, 6};

  Crie uma função que receba os dois sets e 
  exiba todos os IDs que estão em qualquer uma das promoções.
*/

void main() {
  String nome = "Paulo";
  String sobrenome = "André";

  String nomeCompleto = "Nome Completo: $nome $sobrenome";
  print(nomeCompleto);

  Set<String> setPromosWeekly = {
    "Calçado Nike",
    "Camisa Polo Básica",
    "Camiseta Básica",
    "Calça Jeans",
  };

  Set<String> setPromosMounth = {
    "Camisa Polo Básica",
    "Camiseta Básica",
    "Calça Jeans",
  };

  for (String item in setPromosMounth) {
    checkPromo(item);
  }
}

void checkPromo(String item) {
  print("Produto do Mês de Agosto em Promoção: $item!");
}
