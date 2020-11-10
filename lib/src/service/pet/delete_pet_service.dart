import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:my_pet/src/model/pet/Pet_model.dart';

Future<Pet> deletePet(int id) async {
  final String apiUrl =
      "https://api-pets-localizar.herokuapp.com/service/deletePet/$id";

  final response = await http.delete(
    apiUrl,
    // headers: {
    //   "content-type": "application/json",
    //   "accept": "application/json",
    // },
  );

  if (response.body.isNotEmpty) {
    if (response.statusCode == 200 || response.statusCode == 201) {
      final String responseString = response.body;

      return Pet.fromJson(json.decode(responseString));
    } else {
      return throw "Can't delete pet. ${response.statusCode}";
    }
  }
}
