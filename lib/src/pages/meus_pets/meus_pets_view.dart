import 'package:flutter/material.dart';
import 'package:my_pet/src/meus_pets/Pet_Card.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_bloc.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/app/components/bottom_navigator.dart';
import 'package:my_pet/src/app/components/drawer.dart';
import 'package:my_pet/src/app/components/floating_button.dart';
import 'package:my_pet/src/service/http_service.dart';

import 'Pet_model.dart';
import 'meus_pets_bloc.dart';

class MeusPets extends StatelessWidget {
  final HttpService httpService = HttpService();

  Widget _body() {
    return FutureBuilder(
        future: httpService.getPets(),
        builder: (BuildContext context, AsyncSnapshot<List<Pet>> snapshot) {
          if (snapshot.hasData) {
            List<Pet> pets = snapshot.data;
            return Center(
              child: new Container(
                color: ColorsTheme.petPageBackground,
                child: new ListView.builder(
                  //itemExtent: 160.0,
                  itemCount: snapshot.data.length,
                  itemBuilder: (_, index) => new PetCard(pets[index]),
                ),
              ),
            );
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      //bottomNavigationBar: BottomNavigationApp(),
      appBar: MyAppBar(),
      body: _body(),
      floatingActionButton: FloatingButton().floatingButtonPet(),
    );
  }
}

// Widget _body() {
//     return SingleChildScrollView(
//         child: StreamBuilder<List<Pet>>(
//             stream: bloc.responseOut,
//             builder: (context, snapshot) {
//               if (snapshot.hasError) {
//                 return Center(child: Text(snapshot.error.toString()));
//               }

//               if (snapshot.hasData) {
//                 return Center(
//                   child: new Container(
//                     color: ColorsTheme.petPageBackground,
//                     child: new ListView.builder(
//                       //itemExtent: 160.0,
//                       itemCount: snapshot.data.length,
//                       itemBuilder: (_, index) =>
//                           new PetCard(PetBloc.pets[index]),
//                     ),
//                   ),
//                 );
//               }
//             }));
//   }

// Widget _body2() {
//     return Center(
//       child: Text(
//         'teste'
//       ),
//     );
// }
