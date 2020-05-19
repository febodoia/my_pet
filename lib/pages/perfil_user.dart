import 'package:flutter/material.dart';

class PerfilUser extends StatefulWidget {
  @override
  PerfilUserState createState() => PerfilUserState();
}

class PerfilUserState extends State<PerfilUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Card(
              elevation: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundImage: AssetImage('assets/images/user.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Fernando Bodoia',
                          style: TextStyle(
                              fontSize:
                                  16), //'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at.'
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              height: 468.0,
              child: new Card(
                elevation: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Nome: Fernando Bodoia',
                            style: TextStyle(
                                fontSize:
                                    16), //'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at.'
                          ),
                        ),

                        Container(
                          child: Text(
                            'Email: fernandobodoia@gmail.com',
                            style: TextStyle(
                                fontSize:
                                    16), //'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at.'
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Senha: *********',
                            style: TextStyle(
                                fontSize:
                                    16), //'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis varius sagittis mauris sed pharetra. Nam eget imperdiet dolor, eu pellentesque tortor. Donec tempus finibus diam, volutpat consectetur neque laoreet sed. Proin iaculis lectus nisl, vitae eleifend nisi sollicitudin at.'
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
