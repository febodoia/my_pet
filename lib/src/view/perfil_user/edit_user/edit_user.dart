import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/model/user/user_model.dart';
import 'package:my_pet/src/service/user/edit_user_service.dart';

class EditUser extends StatelessWidget {
  final User user;
  final TextEditingController nomeController = new TextEditingController();
  final TextEditingController dataNascimentoController = new TextEditingController();
  final TextEditingController fotoController = new TextEditingController();
  final TextEditingController celularController = new TextEditingController();
  final TextEditingController emailController =
      new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController logradouroController = new TextEditingController();
  final TextEditingController cepController = new TextEditingController();
  final TextEditingController estadoController = new TextEditingController();
  final TextEditingController cidadeController = new TextEditingController();
  final TextEditingController numeroController = new TextEditingController();

   EditUser({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    nomeController.text = user.nome;
    dataNascimentoController.text = user.dataNascimento;
    //fotoController.text = user.foto;
    celularController.text = user.celular;
    emailController.text = user.email;
    //passwordController.text = user.password;
    //logradouroController.text = user.logradouro;
    //cepController.text = user.cep;
    estadoController.text = user.estado;
    cidadeController.text = user.cidade;
    //numeroController.text = user.numero.toString();

    //Dialog alterado com sucesso
    Widget okButtonSucess = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.popAndPushNamed(context, '/perfiluser');
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Usuário"),
      content: Text("Seu usuário foi alterado com sucesso."),
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
                    controller: dataNascimentoController,
                    decoration: InputDecoration(labelText: 'Data de nascimento'),
                  ),
                  TextField(
                    controller: celularController,
                    decoration: InputDecoration(labelText: 'Celular'),
                  ),
                  TextField(
                    controller: emailController,
                    decoration:
                        InputDecoration(labelText: 'E-mail'),
                  ),
                  TextField(
                    controller: passwordController,
                    decoration:
                        InputDecoration(labelText: 'Senha'),
                  ),
                  // TextField(
                  //   controller: logradouroController,
                  //   decoration:
                  //       InputDecoration(labelText: 'Rua'),
                  // ),
                  // TextField(
                  //   controller: numeroController,
                  //   decoration:
                  //       InputDecoration(labelText: 'Número'),
                  // ),
                  // TextField(
                  //   controller: cepController,
                  //   decoration:
                  //       InputDecoration(labelText: 'Cep'),
                  // ),
                  TextField(
                    controller: cidadeController,
                    decoration:
                        InputDecoration(labelText: 'Cidade'),
                  ),
                  TextField(
                    controller: estadoController,
                    decoration:
                        InputDecoration(labelText: 'UF'),
                  ),
                  // TextField(
                  //   controller: idPessoaController,
                  //   keyboardType: TextInputType.number,
                  //   decoration: InputDecoration(labelText: 'idpessoa'),
                  // ),
                  // TextField(
                  //   controller: fotoController,
                  //   decoration: InputDecoration(labelText: 'url foto'),
                  // ),
                  RaisedButton(
                    onPressed: () async {
                      

                      User newUser = new User(
                          id: user.id,
                          nome: nomeController.text,
                          dataNascimento: dataNascimentoController.text,
                          foto: fotoController.text,
                          celular: celularController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          //logradouro: logradouroController.text,
                          //cep: cepController.text,
                          estado: estadoController.text,
                          cidade: cidadeController.text,
                          //numero: int.parse(numeroController.text)
                          );

                      User p = await editUser(
                          newUser.id,
                          newUser.nome,
                          newUser.dataNascimento,
                          newUser.foto,
                          newUser.celular,
                          newUser.email,
                          newUser.password,
                          //newUser.logradouro,
                          //newUser.cep,
                          newUser.estado,
                          newUser.cidade,
                          //newUser.numero,
                          ).whenComplete(() => print('Usuário ' + newUser.nome + ' foi atualizado com sucesso.'));

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
