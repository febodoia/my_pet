import 'package:flutter/material.dart';
import 'package:my_pet/home/home_page.dart';
import 'package:my_pet/pages/perfil_pet.dart';
import 'package:my_pet/pages/perfil_user.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
      home: MyHomePage(title: 'MyPet'),
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
        backgroundColor: Colors.green,
      );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      //menu superior
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Fernando"),
                accountEmail: Text("fernandobodoia@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.green
                ),

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
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyHomePage()), (Route<dynamic> route) => false);
            },
          ),

          new ListTile(
              leading: new Icon(Icons.photo),
              title: new Text("Meus Pets"),
              
              onTap: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => PerfilPet()), (Route<dynamic> route) => false);
                
            },
          ),

          new ListTile(
              leading: new Icon(Icons.person),
              title: new Text("Perfil"),

              onTap: () {
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => PerfilUser()), (Route<dynamic> route) => false);
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
  BottomNavigationAppState createState()=> BottomNavigationAppState();
}

class BottomNavigationAppState extends State<BottomNavigationApp>{
  var _index = 0;
  List<Widget> _pages;
  Widget _selectedContent;

  

  @override
  Widget build(BuildContext context) {
    
    
    _definePages() {
    _pages = [
      MyHomePage(),
      PerfilPet(),
      PerfilUser(),
    ];
  }
    
     _definePages();

    return BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _index = index;
            _selectedContent = _pages[_index];

          switch (_index){
            case 0: {
              currentIndex: _index;
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => MyHomePage()), (Route<dynamic> route) => false);
            }
            break;
            case 1: {
              currentIndex: _index;
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => PerfilPet()), (Route<dynamic> route) => false);
            }
            break;
            case 2: {
              currentIndex: _index;
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => PerfilUser()), (Route<dynamic> route) => false);
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
            activeIcon: Icon(Icons.assistant, color: Colors.lightGreen)
            ),

            BottomNavigationBarItem(
            icon: Icon(Icons.assistant),
            title: Text('Meus Pets'),
            activeIcon: Icon(Icons.assistant, color: Colors.lightGreen),
            ),
            
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Perfil'),
            activeIcon: Icon(Icons.person, color: Colors.lightGreen)
            ),

            
        ],
        

        
        
      );
    
  }
}