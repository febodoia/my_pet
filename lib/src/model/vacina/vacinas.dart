class Vacinas {

  String nome;
String descricao;
String dataUltimaVacinacao;
String validade;

Vacinas.fromJson(Map<String, dynamic> json) {
    nome = json['code'];
    descricao = json['raca'];
    dataUltimaVacinacao = json['idade'];
    validade = json['nome'];
  }

  Map<String, dynamic> toJson() {
     Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['descricao'] = this.descricao;
    data['dataUltimaVacinacao'] = this.dataUltimaVacinacao;
    data['validade'] = this.validade;
    
    return data;
  }


}