import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return centerComponent();
  }

  Widget centerComponent() {
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          carouselPet(),

          new Card(
            elevation: 4.0,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Notícia 1',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at.'),
                ),
              ],
            ),
          ),
          new Card(
            elevation: 4.0,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Notícia 2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at.'),
                ),
              ],
            ),
          )
          
        
          
        
        ],

        

      ),

      
    );

    floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        tooltip: 'Ler QR Code',
        onPressed: () {  },
        child: Icon(Icons.camera_alt),
      );

    

  
}
}

  Widget carouselPet(){
    return Center(child: 
      new Card(
            elevation: 4.0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 7.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45.0,
                            backgroundImage:
                                AssetImage('assets/images/dog1.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Jack'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45.0,
                            backgroundImage:
                                AssetImage('assets/images/dog2.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Zeus'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45.0,
                            backgroundImage:
                                AssetImage('assets/images/dog3.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Nina'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 45.0,
                            backgroundImage:
                                AssetImage('assets/images/dog4.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text('Bud'),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
    );
  }