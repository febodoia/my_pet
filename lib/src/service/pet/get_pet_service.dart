import 'dart:convert';

import 'package:http/http.dart';
import 'package:my_pet/src/model/pet/Pet_model.dart';

class GetPetsService {
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