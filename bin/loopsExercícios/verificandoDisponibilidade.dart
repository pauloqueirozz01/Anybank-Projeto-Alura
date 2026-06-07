/*
Em um sistema de reservas, 
é necessário verificar se um determinado item está disponível em um conjunto de itens disponíveis.

Set<int> codigosDisponiveis = {1, 2, 3, 4, 5}; 

Crie uma função que receba um set de itens disponíveis e um código e verifique se ele está presente no set.
 */
import 'dart:io';

void main() {
  print("Este programa checa se um código está presente no set.");

  Set<int> codigosDisponiveis = {1, 2, 3, 4, 5};

  bool resultado = checaDisponibilidade(codigosDisponiveis);
  print("Código disponível: $resultado");
}

bool checaDisponibilidade(Set<int> codigosDisponiveis) {
  print("Digite um código de 1 a 10, para checarmos se ele está disponível.");
  int? codigo = int.tryParse(stdin.readLineSync()!);

  if (codigo != null) {
    return codigosDisponiveis.contains(codigo);
  }
  return false;
}
