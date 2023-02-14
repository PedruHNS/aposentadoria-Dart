import 'package:aposentadoria/aposentadoria.dart';

void main() {
  checkUser();
}

void checkUser() {
  String sair = entrada(mensagem: "efetuar consulta?").toLowerCase();
  if (sair == "nao") {
    print("finalizado");
    return;
  }
  if (sair == "sim") {
    check();
    checkUser();
    return;
  }
  print("Não entendi digite novamente");
  checkUser();
}
