import 'package:flutter/material.dart';
import 'package:my_pet/home/home_page.dart';
import 'package:my_pet/pages/perfil_pet.dart';
import 'package:my_pet/pages/perfil_user.dart';
import 'package:my_pet/qrcode/scan.dart' as scanner;

import '../qrcode/qrcode_page.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget page;
  Widget floating_button;
  TextEditingController _outputController;

  @override
  void initState() {
    super.initState();
    page = new MyHomePage(title: 'MyPet');
    this._outputController = new TextEditingController();
  }

  //scan qr code
  Future _scan() async {
    String barcode = await scanner.scan();
    if (barcode == null) {
      print('nothing return.');
    } else {
      this._outputController.text = barcode;
      print('Texto do QR Code é: $barcode');
    }
  }

  void case0() {
    setState(() {
      page = new MyHomePage();

      floating_button = FloatingActionButton(
        backgroundColor: '48B174'.toColor(),
        tooltip: 'Ler QR Code',
        onPressed: () => _scan(),
        child: Icon(Icons.camera_alt),
      );
    });
  }

  void case1() {
    setState(() {
      page = new PerfilPet();
      floating_button = FloatingActionButton(
        backgroundColor: '48B174'.toColor(),
        tooltip: 'Adicionar',
        onPressed: () {},
        child: Icon(Icons.add),
      );
    });
  }

  void case2() {
    setState(() {
      page = new PerfilUser();
      floating_button = null;
    });
  }

  //tela após ler qr code
  void case3() {
    setState(() {
      page = new QrCode();
      floating_button = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: firstConfig(page),
    );
  }

  Widget firstConfig(Widget page) {
    return new Scaffold(
      drawer: MyDrawer(case0: case0, case1: case1, case2: case2, case3: case3),

      //menu inferior
      bottomNavigationBar:
          BottomNavigationApp(case0: case0, case1: case1, case2: case2),
      // bottomNavigationBar: Container(
      //   height: 100,
      //   child: FlareActor('assets/navbar.flr', fit: BoxFit.contain)
      //   ),
      appBar: MyAppBar(),
      body: page,

      floatingActionButton: floating_button,
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text('MyPet'),
      centerTitle: true,
      backgroundColor: '48B174'.toColor(),
    );
  }
}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

class MyDrawer extends StatefulWidget {
  final Function case0;
  final Function case1;
  final Function case2;
  final Function case3;

  MyDrawer({this.case0, this.case1, this.case2, this.case3});

  @override
  _MyDrawerState createState() =>
      _MyDrawerState(case0: case0, case1: case1, case2: case2, case3: case3);
}

class _MyDrawerState extends State<MyDrawer> {
  final Function case0;
  final Function case1;
  final Function case2;
  final Function case3;

  _MyDrawerState({this.case1, this.case2, this.case0, this.case3});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //menu superior
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Fernando"),
            accountEmail: Text("fernandobodoia@gmail.com"),
            decoration: BoxDecoration(color: '48B174'.toColor()),
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
              Navigator.pop(context);
              case0();
            },
          ),
          new ListTile(
            leading: new Icon(Icons.photo),
            title: new Text("Meus Pets"),
            onTap: () {
              Navigator.pop(context);
              case1();
            },
          ),
          new ListTile(
            leading: new Icon(Icons.person),
            title: new Text("Perfil"),
            onTap: () {
              Navigator.pop(context);
              case2();
            },
          ),
          new ListTile(
            leading: new Icon(Icons.exit_to_app),
            title: new Text("Sair"),
            onTap: () {
              //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => PerfilPet()), (Route<dynamic> route) => false);
            },
          ),
          new ListTile(
            leading: new Icon(Icons.camera_alt),
            title: new Text("QR Code"),
            onTap: () {
              Navigator.pop(context);
              case3();
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavigationApp extends StatefulWidget {
  final Function case0;
  final Function case1;
  final Function case2;

  BottomNavigationApp({this.case0, this.case1, this.case2});

  BottomNavigationAppState createState() =>
      BottomNavigationAppState(case0: case0, case1: case1, case2: case2);
}

class BottomNavigationAppState extends State<BottomNavigationApp> {
  var _index = 0;
  final Function case0;
  final Function case1;
  final Function case2;

  BottomNavigationAppState({this.case0, this.case1, this.case2});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        setState(() {
          _index = index;

          switch (_index) {
            case 0:
              {
                case0();
              }
              break;
            case 1:
              {
                case1();
              }
              break;
            case 2:
              {
                case2();
              }
              break;
          }
        });
      },
      currentIndex: _index,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.assistant),
            title: Text('Home'),
            activeIcon: Icon(Icons.assistant, color: '48B174'.toColor())),
        BottomNavigationBarItem(
          icon: Icon(Icons.assistant),
          title: Text('Meus Pets'),
          activeIcon: Icon(Icons.assistant, color: '48B174'.toColor()),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
            activeIcon: Icon(Icons.person, color: '48B174'.toColor())),
      ],
    );
  }
}
