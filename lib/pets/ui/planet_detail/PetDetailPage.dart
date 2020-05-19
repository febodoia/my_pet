import 'package:flutter/material.dart';
import 'package:my_pet/pets/Pet.dart';
import 'package:my_pet/pets/Pets.dart';
import 'package:my_pet/pets/ui/pet_detail/PetDetailBody.dart';

class PetDetailPage extends StatelessWidget {

  final Pet pet;

  PetDetailPage(String id) :
    pet = PetDao.getPetById(id);



  @override
  Widget build(BuildContext context) {
    return new Stack(
        children: <Widget>[
          new PetDetailBody(pet),
        ],
    );
  }
}
