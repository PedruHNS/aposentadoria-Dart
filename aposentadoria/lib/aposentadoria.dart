import 'dart:io';

String entrada({required String mensagem}) {
  String? input;

  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

class Pessoa {
  String nome;
  int idade;
  int trabalho;

  Pessoa(this.nome, this.idade, this.trabalho);

  String aposentadoria() {
    if (idade >= 60 && trabalho >= 25) {
      return "Parabêns $nome, você esta autorizado a se aposentar";
    } else if (trabalho >= 30) {
      return "Parabêns $nome, você esta autorizado a se aposentar aproveite";
    } else if (idade >= 65) {
      return "Parabêns $nome, sua aposentadoria esta autorizada";
    } else {
      return "não pode se aposentar";
    }
  }
}

void check() {
  final String nomePessoa = entrada(mensagem: "qual seu nome?");
  final idadePessoa = int.parse(entrada(mensagem: "qual sua idade?"));
  final anoTrab = int.parse(entrada(mensagem: "quantos anos trabalhados"));

  Pessoa usuario = Pessoa(nomePessoa, idadePessoa, anoTrab);
  print(usuario.aposentadoria());
}

