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

  void aposentadoria() {
    
    
    
  }
}

void check() {
  final String nomePessoa = entrada(mensagem: "qual seu nome?");
  final idadePessoa = int.parse(entrada(mensagem: "qual sua idade?"));
  final anoTrab = int.parse(entrada(mensagem: "quantos anos trabalhados"));

  Pessoa usuario = Pessoa(nomePessoa, idadePessoa, anoTrab);
}
