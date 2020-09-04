import 'package:flutter/material.dart';
import 'package:my_pet/src/pages/home/home_bloc.dart';
import 'package:my_pet/src/app/components/Theme.dart';

class FloatingButton {
  
floatingButtonHome() {
  return FloatingActionButton(
        backgroundColor: ColorsTheme.corPadrao,
        tooltip: 'Ler QR Code',
        onPressed: () => HomeBloc().scan(),
        child: Icon(Icons.camera_alt),
      );
    }

floatingButtonPet(){
  return FloatingActionButton(
        backgroundColor: ColorsTheme.corPadrao,
        tooltip: 'Adicionar',
        onPressed: () {},
        child: Icon(Icons.add),
      );
    }

floatingButtonPetEdit(){
  return FloatingActionButton(
        backgroundColor: ColorsTheme.corPadrao,
        tooltip: 'Editar',
        onPressed: () {},
        child: Icon(Icons.edit),
      );
    }
}