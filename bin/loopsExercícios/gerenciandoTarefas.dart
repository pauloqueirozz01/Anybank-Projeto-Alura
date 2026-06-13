// A Dev Kanban está desenvolvendo um aplicativo de produtividade
//onde as pessoas usuárias podem verificar suas tarefas.

// // Este é apenas um exemplo, os valores que a lista possui podem variar.

// List<String> tarefas = ["Estudar", "Comprar mantimentos"];

// Crie uma função que receba a lista de tarefas e exiba todas as tarefas.

void main() {
  List<String> tarefas = ["Estudar", "Comprar mantimentos"];

  void listaTarefas() {
    print("Lista de tarefas no banco");
    for (String tarefa in tarefas) {
      print('Tarefa: $tarefa');
    }
  }

  header();
  print("Este programa recebe uma lista de tarefas e exibe todas as tarefas");
  listaTarefas();
}

void header() {
  print("");
}
