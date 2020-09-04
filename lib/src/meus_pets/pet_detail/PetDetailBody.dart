import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_model.dart';

class PetDetailBody extends StatelessWidget {
  final Pet pet;

  PetDetailBody(this.pet);


  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Container(
          color: ColorsTheme.petPageBackground,
          child: new Center(
            child: new Hero(
              tag: 'pet-icon-${pet.id}',
              child: new Image(
                image: new AssetImage(pet.foto),
                height: Dimens.petHeight,
                width: Dimens.petWidth,
              ),
            ),
          ),
        ),
      ]
    );
  }
}