import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/app/components/drawer.dart';
import 'package:my_pet/src/model/pet/Pet_model.dart';
import 'package:my_pet/src/service/pet/get_pet_service.dart';
import 'Pet_card.dart';

class MeusPets extends StatelessWidget {
  final GetPetsService petsService = GetPetsService();

  Widget _body() {
    return FutureBuilder(
        future: petsService.getPets(),
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
    floatingButtonAddPet() {
      return FloatingActionButton(
        backgroundColor: ColorsTheme.corPadrao,
        tooltip: 'Adicionar',
        onPressed: () {
          Navigator.of(context).pushNamed('/add_pet');
        },
        child: Icon(Icons.add),
      );
    }

    return Scaffold(
      drawer: MyDrawer(),
      //bottomNavigationBar: BottomNavigationApp(),
      appBar: MyAppBar(),
      body: _body(),
      floatingActionButton: floatingButtonAddPet(),
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
