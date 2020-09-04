import 'package:my_pet/src/pages/perfil_pet/vacinas.dart';

class Pet {

   final int id;
  final String nome;
  final String raca;
  final int idade;
  final String tipo;
  final String perfilDescricao;
  final int idPessoa;
  final String foto;
  //final List<Vacinas> vacinas;


Pet({
  this.id,
  this.nome,
  this.raca,
  this.idade,
  this.tipo,
  this.perfilDescricao,
  this.idPessoa,
  this.foto,
  });


  factory Pet.fromJson(Map<String, dynamic> json) {
    return Pet(
      id: json['code'] as int,
      nome: json['nome'] as String,
      raca: json['raca'] as String,
      idade: json['idade'] as int,
      tipo: json['tipo'] as String,
      perfilDescricao: json['perfil_descricao'] as String,
      idPessoa: json['idPessoa'] as int,
      foto: json['foto'] as String,
    );
    }


}