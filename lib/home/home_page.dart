import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _index = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }



  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      drawer: Drawer(
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
                Navigator.pop(context);
                //Navigator.of(context).pushNamed(PHOTO_CONTAINER_SCREEN);
            },
          ),

          new ListTile(
              leading: new Icon(Icons.photo),
              title: new Text("Meus Pets"),

              onTap: () {
                Navigator.pop(context);
                //Navigator.of(context).pushNamed(PHOTO_CONTAINER_SCREEN);
            },
          ),

          new ListTile(
              leading: new Icon(Icons.person),
              title: new Text("Perfil"),

              onTap: () {
                Navigator.pop(context);
                //Navigator.of(context).pushNamed(PHOTO_CONTAINER_SCREEN);
            },
          ),

              new ListTile(
                  leading: new Icon(Icons.exit_to_app),
                  title: new Text("Sair"),
                  

                  onTap: () {
                    Navigator.pop(context);
                    //Navigator.of(context).pushNamed(PHOTO_CONTAINER_SCREEN);
                },
              ),
            ],
          

              
        
        
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            _index = index;
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
            activeIcon: Icon(Icons.assistant, color: Colors.lightGreen)
            ),
            
            BottomNavigationBarItem(
            icon: Icon(Icons.assistant),
            title: Text('Perfil'),
            activeIcon: Icon(Icons.assistant, color: Colors.lightGreen)
            ),

            
        ],

        
        
      ),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Text(
              'Home',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),*/

            new Card(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(children: <Widget>[
                new Image.network('https://image.flaticon.com/icons/png/512/91/91544.png', height: 100,
                        fit:BoxFit.fill),
                Text('     ' 
                  
                ),

                new Image.network('https://image.flaticon.com/icons/png/512/91/91544.png', height: 100,
                        fit:BoxFit.fill),
                Text('     ' 
                  
                ),
                new Image.network('https://image.flaticon.com/icons/png/512/91/91544.png', height: 100,
                        fit:BoxFit.fill),
                Text('     ' 
                ),

                new Image.network('https://image.flaticon.com/icons/png/512/91/91544.png', height: 100,
                        fit:BoxFit.fill)
                ],)

                
                
               ],
            ),
          ),

          new Card(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Notícia 1',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                ),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at.'),
              ],
            ),
          ),

          new Card(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text('Notícia 2',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                ),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at.'),
              ],
            ),
          )
            
            
          ],

          
          



        ),

          
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: Colors.lightGreen,
        tooltip: 'Ler QR Code',
        child: Icon(Icons.camera_alt),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
