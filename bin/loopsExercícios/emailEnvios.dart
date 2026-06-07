import 'dart:io';

void main() {
  header();
  print("");
  print("Este programa faz envio de e-mail");

  // List<String> emails = <String>[
  //   "pauloqueirozzdev@gmail.com",
  //   "rosasilva@gmail.com",
  // ];

  // void getEmail() {
  //   print("Digite seu email: ");
  //   String? email = stdin.readLineSync();

  //   if (email != null && email.isNotEmpty) {
  //     if (email.contains("@") && !email.contains(email)) {
  //       emails.add(email);
  //       print("E-mail: $email, foi adicionado ao nosso banco de e-mails");
  //       print(emails);
  //       sendEmail(email);
  //     } else if (!email.contains("@")) {
  //       print(
  //         "digite seu email no formato correto. Contendo @ (exemplo@gmail.com)",
  //       );
  //       getEmail();
  //     }
  //   } else {
  //     print("Digite um e-mail válido.");
  //     getEmail();
  //   }

  Set<String> setEmails = {"pauloqueirozzdev@gmail.com", "rosasilva@gmail.com"};

  setEmails.add("valentinalsaraujoo@gmail.com");
  setEmails.add("pauloqueirozzdev@gmail.com");

  // Map é como dicionário no Swift
  // Map<String, String> userEmails = {
  //   "juan": "juanqsilva@gmail.com",
  //   "paulo": "pauloqueirozzdev@gmail.com",
  // };

  // print(userEmails);

  void getEmail() {
    print("");
    print("Digite seu e-mail:");
    String? email = stdin.readLineSync();

    if (email != null && email.isNotEmpty) {
      if (email.contains("@") && !setEmails.contains(email)) {
        print(
          "Seu e-mail foi cadastrado no nosso banco. Vamos adicionar ele na lista de destinatários.",
        );
        sendEmail(email);
      } else if (setEmails.contains(email)) {
        print("O $email informado já está cadastrado no nosso banco");
        print("Vamos seguir com o envio em massa.");
        sendEmail(email);
      } else {
        print("Digite um e-mail válido.");
      }
    }
  }

  void listSends() {
    print("Lista de emails no banco:");
    for (String email in setEmails) {
      print(email);
    }
    print("Você gostaria de enviar mensagens para estes endereços?");
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty && input == "sim") {
      for (String email in setEmails) {
        sendEmail(email);
      }
    }
  }

  getEmail();
  listSends();

  print("<-- FIM DO PROGRAMA -->");
}

// for (int i = 0; i < Emails.length; i++) {
//   print(Emails[i]);
// }

void sendEmail(String email) {
  print("Mensagem enviada para: $email");
}

void header() {
  print(
    "          _____           _______                  _______                   _____                    _____          ",
  );
  print(
    "         /\\    \\         /::\\    \\                /::\\    \\                 /\\    \\                  /\\    \\         ",
  );
  print(
    "        /::\\____\\       /::::\\    \\              /::::\\    \\               /::\\    \\                /::\\    \\        ",
  );
  print(
    "       /:::/    /      /::::::\\    \\            /::::::\\    \\             /::::\\    \\              /::::\\    \\       ",
  );
  print(
    "      /:::/    /      /::::::::\\    \\          /::::::::\\    \\           /::::::\\    \\            /::::::\\    \\      ",
  );
  print(
    "     /:::/    /      /:::/~~\\:::\\    \\        /:::/~~\\:::\\    \\         /:::/\\:::\\    \\          /:::/\\:::\\    \\     ",
  );
  print(
    "    /:::/    /      /:::/    \\:::\\    \\      /:::/    \\:::\\    \\       /:::/__\\:::\\    \\        /:::/__\\:::\\    \\    ",
  );
  print(
    "   /:::/    /      /:::/    / \\:::\\    \\    /:::/    / \\:::\\    \\     /::::\\   \\:::\\    \\       \\:::\\   \\:::\\    \\   ",
  );
  print(
    "  /:::/    /      /:::/____/   \\:::\\____\\  /:::/____/   \\:::\\____\\   /::::::\\   \\:::\\    \\    ___\\:::\\   \\:::\\    \\  ",
  );
  print(
    " /:::/    /      |:::|    |     |:::|    ||:::|    |     |:::|    | /:::/\\:::\\   \\:::\\____\\  /\\   \\:::\\   \\:::\\    \\ ",
  );
  print(
    "/:::/____/       |:::|____|     |:::|    ||:::|____|     |:::|    |/:::/  \\:::\\   \\:::|    |/::\\   \\:::\\   \\:::\\____\\",
  );
  print(
    "\\:::\\    \\        \\:::\\    \\   /:::/    /  \\:::\\    \\   /:::/    / \\::/    \\:::\\  /:::|____|\\:::\\   \\:::\\   \\::/    /",
  );
  print(
    " \\:::\\    \\        \\:::\\    \\ /:::/    /    \\:::\\    \\ /:::/    /   \\/_____/\\:::\\/:::/    /  \\:::\\   \\:::\\   \\/____/ ",
  );
  print(
    "  \\:::\\    \\        \\:::\\    /:::/    /      \\:::\\    /:::/    /             \\::::::/    /    \\:::\\   \\:::\\    \\     ",
  );
  print(
    "   \\:::\\    \\        \\:::\\__/:::/    /        \\:::\\__/:::/    /               \\::::/    /      \\:::\\   \\:::\\____\\    ",
  );
  print(
    "    \\:::\\    \\        \\::::::::/    /          \\::::::::/    /                 \\::/____/        \\:::\\  /:::/    /    ",
  );
  print(
    "     \\:::\\    \\        \\::::::/    /            \\::::::/    /                   ~~               \\:::\\/:::/    /     ",
  );
  print(
    "      \\:::\\    \\        \\::::/    /              \\::::/    /                                      \\::::::/    /      ",
  );
  print(
    "       \\:::\\____\\        \\::/____/                \\::/____/                                        \\::::/    /       ",
  );
  print(
    "        \\::/    /         ~~                       ~~                                               \\::/    /        ",
  );
  print(
    "         \\/____/                                                                                     \\/____/         ",
  );
  print(
    "                                                                                                                     ",
  );
}
