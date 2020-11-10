import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:my_pet/src/model/pet/Pet_model.dart';

Future<Pet> editPet(int id, String nome, String raca, int idade, String tipo,
    String perfilDescricao, int idPessoa, String foto) async {
  final String apiUrl =
      "https://api-pets-localizar.herokuapp.com/service/updatePet/$id";

  final body = jsonEncode({
    "nome": nome,
    "raca": raca,
    "idade": idade,
    "tipo": tipo,
    "perfil_descricao": perfilDescricao,
    "idPessoa": 1,
    "foto": foto
  });

  final response = await http.patch(
    apiUrl,
    body: body,
    headers: {
      "content-type": "application/json",
      "accept": "application/json",
    },
  );

  if (response.statusCode == 200 || response.statusCode == 201) {
    final String responseString = response.body;

    return Pet.fromJson(json.decode(responseString));
  } else {
    return throw "Can't update pet. ${response.statusCode}";
  }
}
