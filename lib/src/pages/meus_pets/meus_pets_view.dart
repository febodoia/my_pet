import 'package:flutter/material.dart';
import 'package:my_pet/src/meus_pets/Pet_Card.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_bloc.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/app/components/bottom_navigator.dart';
import 'package:my_pet/src/app/components/drawer.dart';
import 'package:my_pet/src/app/components/floating_button.dart';
import 'package:my_pet/src/pages/meus_pets/meus_pets_module.dart';

import 'Pet_model.dart';
import 'meus_pets_bloc.dart';

class MeusPets extends StatefulWidget {
  @override
  _MeusPetsState createState() => _MeusPetsState();
}

class _MeusPetsState extends State<MeusPets> {
  var bloc = MeusPetsModule.to.getBloc<MeusPetsBloc>();

  @override
  void initState() {
    bloc.getPets();
    super.initState();
  }

  // Widget _body() {
  //   return SingleChildScrollView(
  //       child: StreamBuilder<List<Pet>>(
  //           stream: bloc.responseOut,
  //           builder: (context, snapshot) {
  //             if (snapshot.hasError) {
  //               return Center(child: Text(snapshot.error.toString()));
  //             }

  //             if (snapshot.hasData) {
  //               return Center(
  //                 child: new Container(
  //                   color: ColorsTheme.petPageBackground,
  //                   child: new ListView.builder(
  //                     //itemExtent: 160.0,
  //                     itemCount: snapshot.data.length,
  //                     itemBuilder: (_, index) =>
  //                         new PetCard(PetBloc.pets[index]),
  //                   ),
  //                 ),
  //               );
  //             }
  //           }));
  // }


Widget _body2() {
    return Center(
      child: Text(
        'teste'
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      //bottomNavigationBar: BottomNavigationApp(),
      appBar: MyAppBar(),
      body: _body2(),
      floatingActionButton: FloatingButton().floatingButtonPet(),
    );
  }
}
