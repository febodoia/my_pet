import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'my_app_bloc.dart';
import 'my_app.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [
    Dependency((i) => Dio())
  ];

  @override
  Widget get view => MyApp();

  static Inject get to => Inject<AppModule>.of();
}