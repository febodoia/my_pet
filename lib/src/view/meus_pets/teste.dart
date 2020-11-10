import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HttpService {
  final String petsURL = "https://api-pets-localizar.herokuapp.com/service/listPets/1";

  Future<List<Pet>> getPets() async {
    Response res = await get(petsURL);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Pet> pets = body
          .map(
            (dynamic item) => Pet.fromJson(item),
          )
          .toList();

      return pets;
    } else {
      throw "Can't get pets.";
    }
  }
}

class Pet {
  final int id;
  final String nome;
  final String raca;
  final int idade;
  final String tipo;
  final String perfilDescricao;
  final int idPessoa;
  final String foto;

  Pet({
  this.id,
  this.nome,
  this.raca,
  this.idade,
  this.tipo,
  this.perfilDescricao,
  this.idPessoa,
  this.foto});



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

class PetsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pets"),
      ),
      body: FutureBuilder(
        future: httpService.getPets(),
        builder: (BuildContext context, AsyncSnapshot<List<Pet>> snapshot) {
          if (snapshot.hasData) {
            List<Pet> pets = snapshot.data;
            return ListView(
              children: pets
                  .map(
                    (Pet pet) => ListTile(
                      title: Text(pet.nome),
                      subtitle: Text('ID: ' + pet.id.toString()),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PetDetail(
                            pet: pet,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

class PetDetail extends StatelessWidget {
  final Pet pet;

  PetDetail({@required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${pet.nome}"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("Nome"),
                        subtitle: Text("${pet.nome}"),
                      ),
                      ListTile(
                        title: Text("ID"),
                        subtitle: Text("${pet.id}"),
                      ),
                      ListTile(
                        title: Text("Descrição"),
                        subtitle: Text(pet.perfilDescricao),
                      ),
                      ListTile(
                        title: Text("Dono"),
                        subtitle: Text("${pet.idPessoa}"),
                      ),
                      ListTile(
                        title: Text("Idade"),
                        subtitle: Text("${pet.idade}"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
