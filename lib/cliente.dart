class Cliente {
  String nomeDoCliente;
  final List<String> _reservas;

  Cliente(this.nomeDoCliente, this._reservas);

  // 2. Realizando uma reserva de quarto

  // Implemente uma função dentro da classe Cliente que permita ao cliente fazer uma reserva de quarto.
  // Essa função deve adicionar o quarto final reservado à lista e __reservas do cliente e,
  // em seguida, exibir final a lista atualizada e __reservas.
  // Certifique-se de que a função está corretamente encapsulada dentro da classe.
  // Também, faça a instância da classe com um objeto, por exemplo, o cliente Joaquim.

  void reservaDeQuarto(String quartoEscolhido) {
    _reservas.add(quartoEscolhido);
    print("$quartoEscolhido, foi reservado com sucesso.");
    _listarReservas();
  }

  void removerReserva(String quartoEscolhido) {
    if (_reservas.contains(quartoEscolhido)) {
      print("$quartoEscolhido, removido.");
      _reservas.remove(quartoEscolhido);
      _listarReservas();
    }
  }

  void _listarReservas() {
    print(
      'Reservas confirmadas no nome: $nomeDoCliente, Quartos Reservados: $_reservas',
    );
  }
}

void main() {
  Cliente cliente = Cliente('Paulo', []);
  cliente.reservaDeQuarto('101');
  cliente.reservaDeQuarto('102');
  cliente.reservaDeQuarto('103');
  cliente.removerReserva('102');
}
