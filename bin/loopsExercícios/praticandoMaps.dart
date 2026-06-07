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
}
