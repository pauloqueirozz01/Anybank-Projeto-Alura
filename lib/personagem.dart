class Personagem {
  String nomeDoPersonagem;
  List<String> _superPowers = [];
  List<String> classes;

  Personagem(this.nomeDoPersonagem, this._superPowers, this.classes);

  void getClass(String classe) {
    classes.add(classe);
  }

  void getPowers(List<String> superPower) {
    _superPowers.addAll(superPower);
    printPersona();
  }

  void removePowers(String powerForRemove) {
    if (_superPowers.contains(powerForRemove)) {
      _superPowers.remove(powerForRemove);
      printPersona();
    } else {
      print("Entrada inválida.");
    }
  }

  void printPersona() {
    print(
      "Personagem: $nomeDoPersonagem, Poderes: $_superPowers, classe: $classes",
    );
  }
}
