class User {
  int id;
  String nome;
  String dataNascimento;
  String foto;
  String celular;
  String email;
  String password;
  String logradouro;
  String cep;
  String estado;
  String cidade;
  int numero;

  User(
      {this.id,
      this.nome,
      this.dataNascimento,
      this.foto,
      this.celular,
      this.email,
      this.password,
      this.logradouro,
      this.cep,
      this.estado,
      this.cidade,
      this.numero});

  User.fromJson(Map<String, dynamic> json) {
    id = json['code'];
    nome = json['nome'];
    dataNascimento = json['dataNascimento'];
    foto = json['foto'];
    celular = json['celular'];
    email = json['email'];
    password = json['password'];
    logradouro = json['logradouro'];
    cep = json['cep'];
    estado = json['estado'];
    cidade = json['cidade'];
    numero = json['numero'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.id;
    data['nome'] = this.nome;
    data['dataNascimento'] = this.dataNascimento;
    data['foto'] = this.foto;
    data['celular'] = this.celular;
    data['email'] = this.email;
    data['password'] = this.password;
    data['logradouro'] = this.logradouro;
    data['cep'] = this.cep;
    data['estado'] = this.estado;
    data['cidade'] = this.cidade;
    data['numero'] = this.numero;
    return data;
  }
}
