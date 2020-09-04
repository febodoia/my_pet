
import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/qrcode/scan.dart' as scanner;

class HomeBloc {

  
  TextEditingController _outputController;
  
  Future scan() async {
    String barcode = await scanner.scan();
    if (barcode == null) {
      print('Leitor de QR Code não retornou nada.');
    } else {
      this._outputController.text = barcode;
      print('Texto do QR Code é: $barcode');
    }
  }
}