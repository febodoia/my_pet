import 'dart:convert';

import 'package:http/http.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_model.dart';
import 'package:my_pet/src/pages/perfil_user/user_model.dart';

class HttpService {
  final String petsURL = "https://api-pets-localizar.herokuapp.com/service/listPets/1";
  final String userURL = "https://api-pets-localizar.herokuapp.com/service/getUser/1";

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

  Future<User> getUser() async {
    Response res = await get(userURL);

    if (res.statusCode == 201) {

      return User.fromJson(json.decode(res.body));
    } else {
      throw "Can't get user. ${res.statusCode}";
    }
  }


}