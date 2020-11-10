class Pet {
  final int id;
  final String nome;
  final String raca;
  final int idade;
  final String tipo;
  final String perfilDescricao;
  final int idPessoa;
  final String foto;
  final String qrCode;
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
    this.qrCode
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
      qrCode: json['qrCode'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        "raca": raca,
        "idade": idade,
        "nome": nome,
        "tipo": tipo,
        "foto": foto,
        "perfil_descricao": perfilDescricao,
        "idPessoa": idPessoa,
        "qrCode": qrCode
      };
}
