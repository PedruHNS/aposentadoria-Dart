import 'package:aposentadoria/aposentadoria.dart';


void main() {
  String? sair;
  while (sair != "sim") {
    check();
    sair = entrada(mensagem: "deseja finalizar a consulta?");

  }
}
