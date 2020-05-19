import 'package:flutter/material.dart';
import 'package:my_pet/pets/Theme.dart' as Theme;
import 'package:my_pet/pets/Pet.dart';

class PetDetailBody extends StatelessWidget {
  final Pet pet;

  PetDetailBody(this.pet);


  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Container(
          color: Theme.Colors.petPageBackground,
          child: new Center(
            child: new Hero(
              tag: 'pet-icon-${pet.id}',
              child: new Image(
                image: new AssetImage(pet.image),
                height: Theme.Dimens.petHeight,
                width: Theme.Dimens.petWidth,
              ),
            ),
          ),
        ),
      ]
    );
  }
}