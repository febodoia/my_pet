import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/app/components/drawer.dart';
import 'package:my_pet/src/app/components/qrcode/scan.dart' as scanner;
import 'package:my_pet/src/app/my_app.dart';
import 'package:my_pet/src/view/qrcode/qr_code_view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Uint8List bytes = Uint8List(0);
  TextEditingController _inputController;
  TextEditingController _outputController = new TextEditingController();
  String qr_string;

  @override
  Widget build(BuildContext context) {
    Future scan() async {
      String barcode = await scanner.scan();
      if (barcode == null) {
        print('Leitor de QR Code não retornou nada.');
      } else {
        this._outputController.text = barcode;
        print('Texto do QR Code é: $barcode');
        qr_string = barcode;
      }
    }

    var cardBemVindo = Card(
      //elevation: 5.0,
      child: new Container(
        color: Colors.green[400],
        alignment: Alignment.topLeft,
        padding: new EdgeInsets.only(top: 50.0, left: 20.0),
        height: 200,
        //margin: new EdgeInsets.all(10.0),
        child: new Text(
          'Seja bem-vindo!',
          style: TextStyle(
              fontWeight: FontWeight.w900, color: Colors.white70, fontSize: 35),
        ),
      ),
    );

    var spacecrafts = [
      "Cadastrar um pet",
      "xxxxxxxxx",
      "xxxxxxxxxx",
      "xxxxxxxxxx"
    ];
    var myGridView = GridView.builder(
      shrinkWrap: true,
      itemCount: spacecrafts.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return new GestureDetector(
          child: new Card(
            elevation: 2.0,
            child: new Container(
              color: Colors.green[400],
              alignment: Alignment.center,
              //margin: new EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
              child: new Text(spacecrafts[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white70,
                      fontSize: 20)),
            ),
          ),
          //onTap: () ,
        );
      },
    );

    var body = Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          cardBemVindo,
          // Padding(
          //   padding: EdgeInsets.only(bottom: 140.0),
          //   child: myGridView,
          // ),
        ]);
    //cardBemVindo, myGridView]);

    floatingButtonHome() {
      return FloatingActionButton(
        backgroundColor: ColorsTheme.corPadrao,
        tooltip: 'Ler QR Code',
        onPressed: () => {
          scan(),
          if (qr_string.isNotEmpty)
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QrCodePage(qr_code: qr_string),
                  )),
            },
        },
        child: Icon(Icons.camera_alt),
      );
    }

    return Scaffold(
      drawer: MyDrawer(),
      //bottomNavigationBar: BottomNavigationApp(),
      appBar: MyAppBar(),
      body: body, //myGridView, //centerComponent(),
      floatingActionButton: floatingButtonHome(),
      backgroundColor: Colors.green[100],
    );
  }

  @override
  initState() {
    super.initState();
    this._inputController = new TextEditingController();
    this._outputController = new TextEditingController();
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

    //floatingActionButton:
  }
}

Widget carouselPet() {
  return Center(
    child: new Card(
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
                      backgroundImage: AssetImage('assets/images/dog1.jpg'),
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
                      backgroundImage: AssetImage('assets/images/dog2.jpg'),
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
                      backgroundImage: AssetImage('assets/images/dog3.jpg'),
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
                      backgroundImage: AssetImage('assets/images/dog4.jpg'),
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
