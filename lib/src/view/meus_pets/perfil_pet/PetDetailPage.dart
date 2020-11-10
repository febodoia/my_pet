import 'dart:io' as Io;
import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/model/pet/Pet_model.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/service/pet/delete_pet_service.dart';
import 'package:my_pet/src/view/meus_pets/perfil_pet/edit_pet/edit_pet.dart';

class PetDetail extends StatelessWidget {
  final Pet pet;

  PetDetail({@required this.pet});

  @override
  Widget build(BuildContext context) {
    //Dialog excluído com sucesso
    Widget okButtonSucess = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Pet"),
      content: Text("O pet foi removido com sucesso."),
      actions: [
        okButtonSucess,
      ],
    );
    // exibe o dialog
    ShowDialogSucess() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        },
      );
    }

    //Dialog confirmação para excluir
    // configura o button
    Widget okButton = FlatButton(
      child: Text("Sim"),
      onPressed: () {
        deletePet(pet.id);
        Navigator.pop(context);
        ShowDialogSucess();
      },
    );

    // configura o button
    Widget cancelButton = FlatButton(
      child: Text("Não"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    _showDialog() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // retorna um objeto do tipo Dialog
          return AlertDialog(
            title: new Text("Excluir"),
            content: new Text("Deseja excluir o pet?"),
            actions: [
              okButton,
              cancelButton,
            ],
          );
        },
      );
    }

    speedDialPetEdit() {
      return SpeedDial(
        // both default to 16
        marginRight: 18,
        marginBottom: 20,
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        // this is ignored if animatedIcon is non null
        // child: Icon(Icons.add),
        visible: true,
        // If true user is forced to close dial manually
        // by tapping main button and overlay is not rendered.
        closeManually: false,
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: ColorsTheme.corPadrao,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.brush),
            backgroundColor: ColorsTheme.appBarDetailBackground,
            label: 'Excluir',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => _showDialog(),
          ),
          SpeedDialChild(
            child: Icon(Icons.edit),
            backgroundColor: ColorsTheme.appBarDetailBackground,
            label: 'Editar',
            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => EditPet(
                  pet: pet,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Uint8List _bytesImage;
    if (pet.qrCode.isNotEmpty) {
      String _imgString = pet.qrCode;
      _bytesImage = Base64Decoder().convert(_imgString);
    }

    return Scaffold(
        appBar: MyAppBar(),
        floatingActionButton: speedDialPetEdit(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("Nome"),
                        subtitle: Text("${pet.nome}"),
                      ),
                      ListTile(
                        title: Text("Idade"),
                        subtitle: Text("${pet.idade}"),
                      ),
                      ListTile(
                        title: Text("Raça"),
                        subtitle: Text("${pet.raca}"),
                      ),
                      ListTile(
                        title: Text("Descrição"),
                        subtitle: Text("${pet.perfilDescricao}"),
                      ),
                      Image.memory(_bytesImage),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
