import 'package:flutter/material.dart';
import 'package:my_pet/src/pages/login/first_page_view.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/pages/perfil_user/perfil_user_bloc.dart';
import 'package:my_pet/src/pages/perfil_user/user_model.dart';

class MyDrawer extends StatelessWidget {

  PerfilUserBloc user = PerfilUserBloc();


  @override
  Widget build(BuildContext context) {
    return Drawer(
      //menu superior
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(user.user.nome),
            accountEmail: Text(user.user.email),
            decoration: BoxDecoration(color: ColorsTheme.corPadrao),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/images/user.jpg'),
              backgroundColor: Colors.transparent,
            ),
          ),
          new ListTile(
            leading: new Icon(Icons.home),
            title: new Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          new ListTile(
            leading: new Icon(Icons.photo),
            title: new Text("Meus Pets"),
            onTap: () {
              Navigator.pushNamed(context, '/meus_pets');
            },
          ),
          new ListTile(
            leading: new Icon(Icons.person),
            title: new Text("Perfil"),
            onTap: () {
              Navigator.pushNamed(context, '/perfiluser'); //'/teste');
            },
          ),
          new ListTile(
            leading: new Icon(Icons.exit_to_app),
            title: new Text("Sair"),
            onTap: () {},
          ),
          new ListTile(
            leading: new Icon(Icons.exit_to_app),
            title: new Text("Login"),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          new ListTile(
            leading: new Icon(Icons.camera_alt),
            title: new Text("QR Code"),
            onTap: () {
              Navigator.pushNamed(context, '/qrcode');
            },
          ),
        ],
      ),
    );
  }
}
