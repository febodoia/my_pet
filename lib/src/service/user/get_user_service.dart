import 'dart:convert';

import 'package:http/http.dart';
import 'package:my_pet/src/model/user/user_model.dart';

class GetUserService {
  final String userURL = "https://api-pets-localizar.herokuapp.com/service/getUser/1";

  

  Future<User> getUser() async {
    Response res = await get(userURL);

    if (res.statusCode == 201 || res.statusCode == 200) {

      return User.fromJson(json.decode(res.body));
    } else {
      throw "Can't get user. ${res.statusCode}";
    }
  }


}