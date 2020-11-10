import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/app_bar.dart';

class QrCodePage extends StatelessWidget {

  final String qr_code;

  const QrCodePage({Key key, this.qr_code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(child: Text("Informações do Pet", style: TextStyle(fontSize: 30),)),
                    SizedBox(height: 30,),
                    Text(qr_code),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
