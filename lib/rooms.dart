/*
## 4. Representando quartos com herança

Crie três classes que representam três tipos de quartos em um hotel: 
quarto simples, 
quarto médio
e quarto luxo.

Todos os quartos têm em comum as seguintes características:
- **Tipo de quarto:** indica se o quarto é simples, médio ou luxo;
- **Valor da diária:** registra a diária do tipo do quarto. 
  Por exemplo, 
    a diária do quarto simples é 80 reais; 
    a do quarto médio é 250 reais; 
    a do quarto luxo é 1000 reais. 
    
Repare que todos possuem a característica `valorDiaria` em comum, que é reaproveitada nos três tipos de quarto;
- **Número de diárias:** o número de diárias reservadas por um(a) hóspede;
- **Método de reservar:** realiza a ação de reservar um quarto.

Vamos lá?
 */

import 'dart:io';

class Quarto {
  String tipoDeQuarto;
  double valorDiaria;
  int quantidadeDeDiarias;

  Quarto(this.tipoDeQuarto, this.valorDiaria, this.quantidadeDeDiarias);

  void calculaValorReserva() {
    valorDiaria * quantidadeDeDiarias;
  }

  void roomService() {
    print("Servindo café da manhã no quarto do $tipoDeQuarto");
  }

  void roomCoffeeBreak() {
    print("Limpando o quarto $tipoDeQuarto.");
  }
}

class QuartoSimples extends Quarto {
  /*  
O exercício diz:
  O quarto simples SEMPRE custa 80.
  Então quem cria um QuartoSimples não deveria escolher o valor.
  
  Pensando nisso, vamos criar um metodo construtor que ajude a padronizar as informações do quarto.
  passaremos para o nosso quarto simples, predefinições para ele, como o tipo de quarto e o valor da diária.
*/
  QuartoSimples(int quantidadeDeDiarias)
    : super("Quarto Simples", 500.00, quantidadeDeDiarias);
}

class QuartoMedio extends Quarto {
  QuartoMedio(int quantidadeDeDiarias)
    : super("Quarto Médio", 250.00, quantidadeDeDiarias);
}

class QuartoLuxo extends Quarto {
  QuartoLuxo(int quantidadeDeDiarias)
    : super("Quarto Luxuoso", 1000, quantidadeDeDiarias);
}

void reservaQuarto() {
  String quartoDigitado;

  getName();
  verificaMaioridade();

  print("");
  listarQuartos();

  print("");
  print("Qual quarto você deseja escolher?");
}

void getName() {
  String? name;

  print("Olá! Tudo bom? Vamos realizar a reserva do seu quarto agora;");
  print("");
  print("Primeiro, me informe seu nome:");
  name = stdin.readLineSync();

  if (name != null) {
    print("Bem vindo, $name!");
  } else {
    print("Não foi possível processar sua resposta. Tente novamente.");
    getName();
  }
}

void verificaMaioridade() {
  print("Digite sua idade: ");
  int? idade = int.tryParse(stdin.readLineSync()!);

  if (idade != null) {
    if (idade <= 18) {
      print("Você pode continuar com a reserva do quarto.");
      print("");
    } else {
      print(
        "Menor de idade. Solicite a um responsável para solicitar a reserva.",
      );
    }
  } else {
    print("Digite um número válido. Por favor, tente novamente.");
  }
}

void listarQuartos() {
  List<Quarto> tiposDeQuartos = [
    QuartoSimples(0),
    QuartoMedio(0),
    QuartoLuxo(0),
  ];

  print("Listando os quartos disponíveis em nosso catálogo: ");

  for (int i = 0; i < tiposDeQuartos.length; i++) {
    print(
      "${tiposDeQuartos[i].tipoDeQuarto} - Diária: ${tiposDeQuartos[i].valorDiaria}",
    );
  }
}
