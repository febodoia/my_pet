import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/src/pages/home/home_view.dart';
import 'package:my_pet/src/pages/login/first_page_view.dart';
import 'package:my_pet/src/pages/login/login/login_view.dart';
import 'package:my_pet/src/pages/meus_pets/meus_pets_bloc.dart';
import 'package:my_pet/src/pages/meus_pets/meus_pets_repository.dart';
import 'package:my_pet/src/pages/meus_pets/meus_pets_view.dart';
import 'package:my_pet/src/pages/meus_pets/teste.dart';
import 'package:my_pet/src/pages/perfil_user/perfil_user_view.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/app/components/floating_button.dart';
import 'package:my_pet/src/app/components/qrcode/qrcode_page.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
      ],
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyPet',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/home',
        routes: {
          '/': (context) => FirstPage(), //login
          '/home': (context) => MyHomePage(),
          '/meus_pets': (context) => MeusPets(),
          '/perfiluser': (context) => PerfilUser(),
          '/qrcode': (context) => QrCode(),
          '/teste': (context) => PetsPage(),
        },
      ),
    );
  }

}

