import 'dart:io';

import 'package:loops/cats&dogs.dart';

void main() {
  String resposta;
  String especieRespondida;

  print("Se você gosta de animais, talvez goste desse programa.");

  Gato felix = Gato("Félix");
  Cachorro max = Cachorro("Cachorro");

  print(
    "As vezes já chegou em casa... Encontrou os móveis arranhados ou viu um serzinho balançando o rabo por te ver chegar?",
  );
  stdin.readLineSync();
  print(
    "Por acaso, já parou pra pensar que pode ter sido o seu pet? ( S / N )",
  );
  resposta = stdin.readLineSync()!;

  if (resposta == "S") {
    print("Nesse caso, você tem um cachorro ou gato?");
    especieRespondida = stdin.readLineSync()!;

    switch (especieRespondida) {
      case "cachorro":
        max.abanarRabo();
        max.emitirSom();
        break;
      case "gato":
        felix.arranharMoveis();
        felix.emitirSom();
      default:
    }
  } else {
    print("Então comece a pensar nisso! Preste mais atenção no seu pet.");
  }
}
