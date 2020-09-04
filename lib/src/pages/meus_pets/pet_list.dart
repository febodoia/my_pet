import 'package:flutter/material.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_card.dart';
import 'package:my_pet/src/app/components/Theme.dart' as Theme;
import 'package:my_pet/src/pages/meus_pets/pet_dao.dart';

class PetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Container(
        color: Theme.ColorsTheme.petPageBackground,
        child: new ListView.builder(
          //itemExtent: 160.0,
          itemCount: PetDao.pets.length,
          itemBuilder: (_, index) => new PetCard(PetDao.pets[index]),
        ),
      ),
    );
  }
}