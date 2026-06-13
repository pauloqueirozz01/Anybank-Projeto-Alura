class Conta {
  String nome;
  double _saldo;

  Conta(this.nome, this._saldo);

  // Estamos criando MÉTODOS ou MÉTODO CONSTRUTOR, que nada mais são do quê funções dentro de Classes.
  void receiving(double value) {
    // Podemos chamar diretamente o _saldo para atribuir o novo value
    _saldo += value;
    //esse += é a mesma coisa de escrever conta._saldo = conta._saldo + value;
    print("$nome recebeu uma transferência no value de $value");
    printCurrent();
    print("");
  }

  void send(double value) {
    _saldo -= value;
    print("$nome fez uma transferência no valor de $value");
    printCurrent();
    print("");
  }

  void printCurrent() {
    print("O saldo atual de $nome, é: R\$$_saldo");
  }
}

// A forma como é feita herança dentro do Dart, usa extends para herdar as caracteristicas da Classe principal

// Criamos outro tipo de Conta, que ainda é uma Conta.
// Mas sendo uma ContaCorrente, utilizamos extends Conta,
// para recebermos nome e o _saldo, da class Conta
class ContaCorrente extends Conta {
  ContaCorrente(super.nome, super._saldo);
}

class ContaPoupanca extends Conta {
  ContaPoupanca(super.nome, super._saldo);
}
