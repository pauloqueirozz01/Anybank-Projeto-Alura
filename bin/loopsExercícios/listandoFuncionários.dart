/* 
Em um sistema administrativo, cada funcionário é representado por um ID (identificador único) em forma de inteiro.
List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9]; 

Crie uma função que receba a lista de IDs dos funcionários e exiba apenas os IDs que são pares.

*/
void main() {
  List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  print("Este programa recebe e exibe os IDs dos funcionários");

  void listaFuncionarios() {
    print("Lista de funcionários");
    for (int id in idsFuncionarios) {
      if (id % 2 == 0) {
        print("Funcionário ID: $id");
      }
    }
  }

  listaFuncionarios();
}
