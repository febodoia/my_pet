
import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/Theme.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text('MyPet'),
      centerTitle: true,
      backgroundColor: ColorsTheme.corPadrao,
    );
  }
}