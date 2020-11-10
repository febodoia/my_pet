import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:my_pet/src/model/pet/Pet_model.dart';
import 'package:my_pet/src/model/user/user_model.dart';

Future<User> deleteUser(int id) async {
  final String apiUrl =
      "https://api-pets-localizar.herokuapp.com/service/deletePet/${id}";


  final response = await http.post(
    apiUrl,
    headers: {
      "content-type": "application/json",
      "accept": "application/json",
    },
  );

  if (response.statusCode == 200 || response.statusCode == 201) {
    final String responseString = response.body;

    return User.fromJson(json.decode(responseString));
  } else {
    return throw "Can't delete pet. ${response.statusCode}";
  }
}
