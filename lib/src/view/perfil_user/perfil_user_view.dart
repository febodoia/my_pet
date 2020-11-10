import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/app/components/drawer.dart';
import 'package:my_pet/src/model/pet/Pet_model.dart';
import 'package:my_pet/src/model/user/user_model.dart';
import 'package:my_pet/src/service/pet/get_pet_service.dart';
import 'package:my_pet/src/service/user/get_user_service.dart';
import 'edit_user/edit_user.dart';

class PerfilUser extends StatelessWidget {
  final GetUserService userService = GetUserService();
  User user = new User();

  Widget _body() {
    return FutureBuilder(
        future: userService.getUser(),
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          if (snapshot.hasData) {
            user = snapshot.data;
            return SingleChildScrollView( 
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("Nome"),
                        subtitle: Text(snapshot.data.nome),
                      ),
                      ListTile(
                        title: Text("E-mail"),
                        subtitle: Text(snapshot.data.email),
                      ),
                      ListTile(
                        title: Text("Senha"),
                        subtitle: Text("***********"),

                      ),
                      ListTile(
                        title: Text("Celular"),
                        subtitle: Text(snapshot.data.celular),
                      ),
                      ListTile(
                        title: Text("Data de Nascimento"),
                        subtitle: Text(snapshot.data.dataNascimento),
                      ),
                      ListTile(
                        title: Text("Estado"),
                        subtitle: Text(snapshot.data.estado.toString()),
                      ),
                      ListTile(
                        title: Text("Cidade"),
                        subtitle: Text(snapshot.data.cidade.toString()),
                      ),
                    ],
                  ),
                ),
              ],
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
    
        floatingButtonEditUser() {
      return FloatingActionButton(
        backgroundColor: ColorsTheme.corPadrao,
        tooltip: 'Editar',
        onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EditUser(
                  user: user,
                ),
              ),
            ),
        // onPressed: () {
        //   Navigator.of(context).pushNamed('/edit_user');
        // }, 
        child: Icon(Icons.edit),
      );
    }

    return Scaffold(
      drawer: MyDrawer(),
      //bottomNavigationBar: BottomNavigationApp(),
      appBar: MyAppBar(),
      body: _body(),
      floatingActionButton: floatingButtonEditUser(),
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
