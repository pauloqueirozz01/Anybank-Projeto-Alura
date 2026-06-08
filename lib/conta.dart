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
    print("_Saldo da conta atualizado: $_saldo");
    print("");
  }

  void send(double value) {
    _saldo -= value;
    print("$nome fez uma transferência no valor de $value");
    print("_Saldo da conta atualizado: $_saldo");
    print("");
  }
}
