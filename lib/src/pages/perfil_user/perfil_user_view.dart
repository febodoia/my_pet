import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/app/components/floating_button.dart';
import 'package:my_pet/src/pages/perfil_user/user_model.dart';
import 'package:my_pet/src/service/http_service.dart';

class PerfilUser extends StatefulWidget {
  
  final User user;
  PerfilUser({@required this.user});

  @override
  _PerfilUserState createState() => _PerfilUserState();
}

class _PerfilUserState extends State<PerfilUser> {

  Future<User> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = httpService.getUser();
  }

  final HttpService httpService = HttpService();



@override
  Widget build(BuildContext context) {

    
    _body2(){
      return FutureBuilder<User>(
        future: futureUser,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
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
                        subtitle: Text(snapshot.data.password),
                      ),
                      ListTile(
                        title: Text("ID"),
                        subtitle: Text(snapshot.data.id.toString()),
                      ),
                      ListTile(
                        title: Text("Celular"),
                        subtitle: Text(snapshot.data.celular),
                      ),
                      ListTile(
                        title: Text("Data de Nascimento"),
                        subtitle: Text("${snapshot.data.dataNascimento}"),
                      ),
                      ListTile(
                        title: Text("Logradouro"),
                        subtitle: Text(snapshot.data.logradouro.toString()),
                      ),
                      ListTile(
                        title: Text("CEP"),
                        subtitle: Text(snapshot.data.cep.toString()),
                      ),
                      ListTile(
                        title: Text("Estado"),
                        subtitle: Text(snapshot.data.estado.toString()),
                      ),
                      ListTile(
                        title: Text("Cidade"),
                        subtitle: Text(snapshot.data.cidade.toString()),
                      ),
                      ListTile(
                        title: Text("Número"),
                        subtitle: Text(snapshot.data.numero.toString()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
          } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
    }
  
    

  // _body(){
  //   return SingleChildScrollView( 
  //         child: Padding(
  //           padding: const EdgeInsets.all(12.0),
  //           child: Column(
  //             children: <Widget>[
  //               Card(
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: <Widget>[
  //                     ListTile(
  //                       title: Text("Nome"),
  //                       subtitle: Text("${user.nome}"),
  //                     ),
  //                     ListTile(
  //                       title: Text("E-mail"),
  //                       subtitle: Text(user.email),
  //                     ),
  //                     ListTile(
  //                       title: Text("Senha"),
  //                       subtitle: Text(user.password),
  //                     ),
  //                     ListTile(
  //                       title: Text("ID"),
  //                       subtitle: Text(user.id.toString()),
  //                     ),
  //                     ListTile(
  //                       title: Text("Celular"),
  //                       subtitle: Text(user.celular),
  //                     ),
  //                     ListTile(
  //                       title: Text("Data de Nascimento"),
  //                       subtitle: Text("${user.dataNascimento}"),
  //                     ),
  //                     ListTile(
  //                       title: Text("Logradouro"),
  //                       subtitle: Text("${user.logradouro}"),
  //                     ),
  //                     ListTile(
  //                       title: Text("CEP"),
  //                       subtitle: Text(user.cep),
  //                     ),
  //                     ListTile(
  //                       title: Text("Estado"),
  //                       subtitle: Text(user.estado),
  //                     ),
  //                     ListTile(
  //                       title: Text("Cidade"),
  //                       subtitle: Text(user.cidade),
  //                     ),
  //                     ListTile(
  //                       title: Text("Número"),
  //                       subtitle: Text("${user.numero}"),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  // }
  
    return Scaffold(
      appBar: MyAppBar(),
      floatingActionButton: FloatingButton().floatingButtonPetEdit(),
      body: _body2(),
    );
  }
}