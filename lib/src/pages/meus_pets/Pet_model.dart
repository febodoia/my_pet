import 'package:my_pet/src/pages/perfil_pet/vacinas.dart';

class Pet {

 String id;
 String nome;
 String raca;
 String idade;
 String tipo;
 String perfilDescricao;
 String idPessoa;
 String foto;
 List<Vacinas> vacinas;


  Pet({this.id, this.nome, this.raca, this.idade, this.tipo, this.perfilDescricao, this.idPessoa, this.foto, this.vacinas});

  Pet.fromJson(Map<String, dynamic> json) {
    id = json['code'];
    raca = json['raca'];
    idade = json['idade'];
    nome = json['nome'];
    tipo = json['tipo'];
    foto = json['foto'];
    perfilDescricao = json['perfil_descricao'];
    idPessoa = json['idPessoa'];
    if (json['vacinas'] != null) {
      vacinas = new List<Vacinas>();
      json['vacinas'].forEach((v) {
        vacinas.add(new Vacinas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.id;
    data['raca'] = this.raca;
    data['idade'] = this.idade;
    data['nome'] = this.nome;
    data['tipo'] = this.tipo;
    data['foto'] = this.foto;
    data['perfil_descricao'] = this.perfilDescricao;
    data['idPessoa'] = this.idPessoa;
    if (this.vacinas != null) {
      data['vacinas'] = this.vacinas.map((v) => v.toJson()).toList();
    }
    return data;
  }


}