import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/app/components/floating_button.dart';
import 'package:my_pet/src/model/pet/Pet_model.dart';
import 'package:my_pet/src/service/pet/add_pet_service.dart';

class AddPet extends StatelessWidget {
  //final Pet pet;
  final TextEditingController nomeController = new TextEditingController();
  final TextEditingController racaController = new TextEditingController();
  final TextEditingController idadeController = new TextEditingController();
  final TextEditingController tipoController = new TextEditingController();
  final TextEditingController perfilDescricaoController =
      new TextEditingController();
  final TextEditingController idPessoaController = new TextEditingController();
  final TextEditingController fotoController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Dialog cadastrado com sucesso
    Widget okButtonSucess = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, '/meus_pets', (route) => false);
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Usuário"),
      content: Text("Seu pet foi cadastrado com sucesso."),
      actions: [
        okButtonSucess,
      ],
    );
    // exibe o dialog
    showDialogSucess() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alerta;
        },
      );
    }

    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: nomeController,
                    decoration: InputDecoration(labelText: 'Nome'),
                  ),
                  TextField(
                    controller: racaController,
                    decoration: InputDecoration(labelText: 'Raça'),
                  ),
                  TextField(
                    controller: idadeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Idade'),
                  ),
                  TextField(
                    controller: tipoController,
                    decoration: InputDecoration(labelText: 'Tipo'),
                  ),
                  TextField(
                    controller: perfilDescricaoController,
                    decoration:
                        InputDecoration(labelText: 'Fale um pouco sobre o pet'),
                  ),
                  // TextField(
                  //   controller: idPessoaController,
                  //   keyboardType: TextInputType.number,
                  //   decoration: InputDecoration(labelText: 'idpessoa'),
                  // ),
                  TextField(
                    controller: fotoController,
                    decoration: InputDecoration(labelText: 'url foto'),
                  ),
                  RaisedButton(
                    onPressed: () async {
                      int idade = int.parse(idadeController.text);

                      Pet newPet = new Pet(
                          nome: nomeController.text,
                          raca: racaController.text,
                          idade: idade,
                          tipo: tipoController.text,
                          perfilDescricao: perfilDescricaoController.text,
                          foto: fotoController.text);

                      Pet p = await createPet(
                          newPet.nome,
                          newPet.raca,
                          newPet.idade,
                          newPet.tipo,
                          newPet.perfilDescricao,
                          newPet.foto);

                      print('Pet ' + p.nome + ' foi cadastrado com sucesso.');
                      showDialogSucess();
                    },
                    child: const Text("Cadastrar"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
