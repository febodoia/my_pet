import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/model/pet/Pet_model.dart';
import 'package:my_pet/src/service/pet/edit_pet_service.dart';

class EditPet extends StatelessWidget {
  final Pet pet;
  final TextEditingController nomeController = new TextEditingController();
  final TextEditingController racaController = new TextEditingController();
  final TextEditingController idadeController = new TextEditingController();
  final TextEditingController tipoController = new TextEditingController();
  final TextEditingController perfilDescricaoController =
      new TextEditingController();
  final TextEditingController idPessoaController = new TextEditingController();
  final TextEditingController fotoController = new TextEditingController();

  EditPet({Key key, this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    nomeController.text = pet.nome;
    racaController.text = pet.raca;
    idadeController.text = pet.idade.toString();
    tipoController.text = pet.tipo;
    perfilDescricaoController.text = pet.perfilDescricao;
    //idPessoaController.text = pet.nome;
    fotoController.text = pet.foto;

    //Dialog alterado com sucesso
    Widget okButtonSucess = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
            context, '/meus_pets', (route) => false);
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Pet"),
      content: Text("O pet foi alterado com sucesso."),
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
                  //),
                  TextField(
                    controller: fotoController,
                    decoration: InputDecoration(labelText: 'url foto'),
                  ),
                  RaisedButton(
                    onPressed: () async {
                      int idade = int.parse(idadeController.text);
                      //int idPessoa = int.parse(idPessoaController.text);

                      Pet newPet = new Pet(
                          id: pet.id,
                          nome: nomeController.text,
                          raca: racaController.text,
                          idade: idade,
                          tipo: tipoController.text,
                          foto: fotoController.text,
                          perfilDescricao: perfilDescricaoController.text);
                      //idPessoa: idPessoa,

                      Pet p = await editPet(
                        newPet.id,
                        newPet.nome,
                        newPet.raca,
                        newPet.idade,
                        newPet.tipo,
                        newPet.perfilDescricao,
                        newPet.idPessoa,
                        newPet.foto
                      ).whenComplete(() => print('Pet ' +
                          newPet.nome +
                          ' foi atualizado com sucesso.'));

                      showDialogSucess();
                    },
                    child: const Text("Salvar"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
