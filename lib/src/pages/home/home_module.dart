import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/src/app/my_app_module.dart';

import 'home_bloc.dart';
import 'home_repository.dart';
import 'home_view.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => HomeBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
        
      ];

  @override
  Widget get view => MyHomePage();

  static Inject get to => Inject<HomeModule>.of();
}