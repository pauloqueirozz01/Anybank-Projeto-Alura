import 'dart:io';

void main() {
  Map<String, String> users = {
    "paulo": "pauloqueirozz",
    "juan": "juanqueirozz",
  };

  // Da para declarar uma variavel e usar ela para mostrar os valores do nosso Array
  for (var entry in users.entries) {
    String userName = entry.key;
    String person = entry.value;
    print("Nome de usuário: $person, @$userName");

    print("");

    //Aqui nós declaramos uma variável para ser utilizada dentro do forEach do nosso Array
    String user = '';
    String perss = '';

    users.forEach((perss, user) {
      print("Nome do usuário: $perss, @$user");
    });
    //
  }
  List<int> chooseNumbers = [];

  void getNumbers() {
    for (int typedNumber = 0; typedNumber < 5; typedNumber++) {
      int? typedNumber = int.tryParse(stdin.readLineSync()!);
      if (typedNumber != null) {
        chooseNumbers.add(typedNumber);
      } else {
        print("Invalid number");
      }
    }
  }

  void checkNumber() {
    print(chooseNumbers);
    int biggerNumber = chooseNumbers[0];

    for (int i = 0; i < chooseNumbers.length; i++) {
      if (chooseNumbers[i] > biggerNumber) {
        biggerNumber = chooseNumbers[i];
      }
    }
    print("BIgger number on array: $biggerNumber");
  }

  getNumbers();
  checkNumber();
}
