import 'package:flutter/material.dart';
import 'package:my_pet/home/home_page.dart';
import 'package:my_pet/pages/perfil_pet.dart';
import 'package:my_pet/pages/perfil_user.dart';

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget page;
  Widget floating_button;


  @override
  void initState() {
    super.initState();
    page = new MyHomePage(title: 'MyPet');
  }

  void case0() {
    setState(() {
      page = new MyHomePage();
      floating_button = FloatingActionButton(
        backgroundColor: '48B174'.toColor(),
        tooltip: 'Ler QR Code',
        onPressed: () {  },
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
        onPressed: () {  },
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
      drawer: MyDrawer(case0: case0, case1: case1, case2: case2),

      //menu inferior
      bottomNavigationBar: BottomNavigationApp(case0: case0, case1: case1, case2: case2),
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

  MyDrawer({this.case0, this.case1, this.case2});

  @override
  _MyDrawerState createState() => _MyDrawerState(case0: case0, case1: case1, case2: case2);
}

class _MyDrawerState extends State<MyDrawer> {
  final Function case0;
  final Function case1;
  final Function case2;


  _MyDrawerState({this.case1, this.case2, this.case0});

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
