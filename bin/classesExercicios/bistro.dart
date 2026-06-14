// O bistrô está contratando novos funcionários e
// você precisa criar um sistema para gerenciar a equipe.

// Existem três tipos de funcionários:
// cozinheiros, garçons e gerentes.

// Cada funcionário possui um nome e um salário.

class Funcionary {
  String name;
  double salary;

  Funcionary(this.name, this.salary);

  void working() {
    print("$name, está trabalhando.");
  }
}

class Cooker extends Funcionary {
  Cooker(super.name, super.salary);

  @override
  void working() {
    print("O cozinheiro: $name, está cozinhando.");
  }
}

class Waiter extends Funcionary {
  Waiter(super.name, super.salary);

  @override
  void working() {
    print("O garçom: $name, está atendendo.");
  }
}

class Gerent extends Funcionary {
  Gerent(super.name, super.salary);

  @override
  void working() {
    print("O gerente: $name, gerenciou a equipe hoje.");
  }
}
