import 'dart:io';

void main() {
  verifyAge();
}

void verifyAge() {
  print("Digite sua idade");
  int? age = int.tryParse(stdin.readLineSync()!);

  if (age != null) {
    if (age < 18) {
      print("Com $age anos você é menor de idade");
    } else {
      print("Com $age anos você é maior de idade");
    }
  }
}
