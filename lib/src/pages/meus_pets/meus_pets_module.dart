import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'Pet_bloc.dart';
import 'meus_pets_bloc.dart';
import 'meus_pets_repository.dart';
import 'meus_pets_view.dart';

class MeusPetsModule extends ModuleWidget {
  
  @override
  List<Bloc> get blocs => [
        Bloc((i) => MeusPetsBloc(MeusPetsModule.to.getDependency<PetRepository>())),
      ];

  @override
  List<Dependency> get dependencies => [
        Dependency(
            (i) => PetRepository(MeusPetsModule.to.getDependency<Dio>()))
      ];

  @override
  Widget get view => MeusPets();

  static Inject get to => Inject<MeusPetsModule>.of();
}
