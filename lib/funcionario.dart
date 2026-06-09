class Funcionario {
  String nome;
  double _salario;

  Funcionario(this.nome, this._salario);

  void calculaSalario() {
    _salario += _salario * 12;
    print("O salário anual do $nome, é: $_salario");
  }

  void aumentarSalario(double valor) {
    _salario += valor;
    print("Funcionário: $nome, recebeu um aumento de R\$$valor");
    getSalario();
  }

  void getSalario() {
    print("Funcionário: $nome, $_salario");
  }
}
