import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:my_pet/src/model/user/user_model.dart';

Future<User> editUser(
    int id,
    String nome,
    String dataNascimento,
    String foto,
    String celular,
    String email,
    String password,
    String estado,
    String cidade) async {
  final String apiUrl =
      "https://api-pets-localizar.herokuapp.com/service/updateUser/$id";

  //body com senha
  final body = jsonEncode({
    "code": id,
    "nome": nome,
    "dataNascimento": dataNascimento,
    "celular": celular,
    "email": email,
    "password": password,
    "estado": estado,
    "cidade": cidade,
    "foto": foto,
    //"numero": numero,
    //"logradouro": logradouro,
    //"cep": cep,
  });

    //body sem senha
    final body2 = jsonEncode({
    "code": id,
    "nome": nome,
    "dataNascimento": dataNascimento,
    "celular": celular,
    "email": email,
    "estado": estado,
    "cidade": cidade,
    "foto": foto,
    //"numero": numero,
    //"logradouro": logradouro,
    //"cep": cep,
  });

  checkPasswordBody() {
    if (!password.isNotEmpty) {
      return body2;
    } else {
      return body;
    }
  }

  final response = await http.patch(
    apiUrl,
    body: checkPasswordBody(),
    headers: {
      "content-type": "application/json",
      "accept": "application/json",
    },
  );

  if (response.statusCode == 200 || response.statusCode == 201) {
    final String responseString = response.body;

    return User.fromJson(json.decode(responseString));
  } else {
    return throw "Can't update user. ${response.statusCode}";
  }
}

checkPassword() {}
