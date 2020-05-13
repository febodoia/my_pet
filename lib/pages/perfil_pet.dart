import 'package:flutter/material.dart';
import 'package:my_pet/app/my_app.dart';

class PerfilPet extends StatefulWidget {
  
@override
  PerfilPetState createState() => PerfilPetState();

  

}

class PerfilPetState extends State<PerfilPet> {

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
            Text('Perfil do Pet'),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        tooltip: 'Adicionar Pet',
        child: Icon(Icons.add),
      ),
    );

  }
}