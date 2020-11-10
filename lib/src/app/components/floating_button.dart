import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/Theme.dart';

class FloatingButton {
  

  floatingButtonPetEdit() {
    return FloatingActionButton(
      backgroundColor: ColorsTheme.corPadrao,
      tooltip: 'Editar',
      onPressed: () {},
      child: Icon(Icons.edit),
    );
  }

  floatingButtonAddPet() {}
}
