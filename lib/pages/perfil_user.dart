import 'package:flutter/material.dart';
import 'package:my_pet/app/my_app.dart';

class PerfilUser extends StatefulWidget {
  
@override
  PerfilUserState createState() => PerfilUserState();

  

}

class PerfilUserState extends State<PerfilUser> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      drawer: MyDrawer(),

      bottomNavigationBar: BottomNavigationApp(),

      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Perfil do Usuário'),
          ],
        ),
      ),
    );

  }
}