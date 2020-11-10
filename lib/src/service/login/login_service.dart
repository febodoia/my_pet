import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_pet/src/model/user/user_model.dart';

class LoginService {
  static Future<User> login(String email, String password) async {
    var user;

    var url =
        'https://api-pets-localizar.herokuapp.com/service/loginUser/$email/$password';

    var header = {"Content-Type": "application/json"};

    var response = await http.get(url, headers: header);

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    Map mapResponse = json.decode(response.body);

    if (response.statusCode == 200 || response.statusCode == 201) {
      user = User.fromJson(mapResponse);
    } else {
      user = null;
    }
    return user;
  }
}
