import 'package:dio/dio.dart';
import 'Pet_model.dart';

class PetRepository {
  
  final Dio _client;

  PetRepository(this._client);

  Future<List<Pet>> getPets() async {
    try {
      var response = await _client.get("https://api-pets-localizar.herokuapp.com/service/listPets/1");
      return (response.data as List)
          .map((item) => Pet.fromJson(item))
          .toList();
    } on DioError catch (e) {
      throw (e.message);
    }
  }




}