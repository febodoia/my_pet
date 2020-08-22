import 'package:flutter/material.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_model.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_bloc.dart';
import 'PetDetailBody.dart';

class PetDetailPage extends StatelessWidget {

  final Pet pet;

  PetDetailPage(String id) :
    pet = PetBloc.getPetById(id);



  @override
  Widget build(BuildContext context) {
    return new Stack(
        children: <Widget>[
          new PetDetailBody(pet),
        ],
    );
  }
}
