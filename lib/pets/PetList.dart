import 'package:flutter/material.dart';
import 'PetRow.dart';
import 'package:my_pet/pets/Theme.dart' as Theme;
import 'package:my_pet/pets/Pets.dart';

class PetList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Container(
        color: Theme.Colors.petPageBackground,
        child: new ListView.builder(
          //itemExtent: 160.0,
          itemCount: PetDao.pets.length,
          itemBuilder: (_, index) => new PetRow(PetDao.pets[index]),
        ),
      ),
    );
  }
}