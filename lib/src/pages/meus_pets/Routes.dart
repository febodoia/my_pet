import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/src/pages/perfil_pet/PetDetailPage.dart';

class Routes {
  static final Router _router = new Router();


  static var petDetailHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return new PetDetailPage(params["id"]);
    });

  static void initRoutes() {
    _router.define("/detail/:id", handler: petDetailHandler);
  }

  static void navigateTo(context, String route, {TransitionType transition}) {
    _router.navigateTo(context, route, transition: transition);
  }

}