import 'dart:io';
import 'package:loops/cliente.dart';

void main() {
  print("Sistema de Reserva de Hotelaria - POO em Dart");
  print("");

  Cliente cliente = Cliente("Paulovisk", []);
  cliente.reservaDeQuarto("102");
  cliente.reservaDeQuarto("103");
  cliente.reservaDeQuarto("101");
  cliente.removerReserva("102");
}
