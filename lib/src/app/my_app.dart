import 'package:flutter/material.dart';
import 'package:my_pet/src/view/home/home_view.dart';
import 'package:my_pet/src/view/login/first_page_view.dart';
import 'package:my_pet/src/view/meus_pets/meus_pets_view.dart';
import 'package:my_pet/src/view/meus_pets/perfil_pet/add_pet/add_pet.dart';
import 'package:my_pet/src/view/meus_pets/perfil_pet/edit_pet/edit_pet.dart';
import 'package:my_pet/src/view/meus_pets/teste.dart';
import 'package:my_pet/src/view/perfil_user/edit_user/edit_user.dart';
import 'package:my_pet/src/view/perfil_user/perfil_user_view.dart';
import 'package:my_pet/src/view/qrcode/qr_code_view.dart';
import 'package:my_pet/src/view/qrcode/qrcode_page.dart';

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
    return MaterialApp(
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
          '/add_pet': (context) => AddPet(),
          '/edit_pet': (context) => EditPet(),
          '/edit_user': (context) => EditUser(),
          '/qrcodepage': (context) => QrCodePage(),
        },
      );
  }

}

