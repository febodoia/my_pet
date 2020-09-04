import 'package:flutter/material.dart';
import 'package:my_pet/src/app/components/app_bar.dart';
import 'package:my_pet/src/app/components/floating_button.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_model.dart';

class PetDetail extends StatelessWidget {
  final Pet pet;

  PetDetail({@required this.pet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        floatingActionButton: FloatingButton().floatingButtonPetEdit(),
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
                        title: Text("ID"),
                        subtitle: Text("${pet.id}"),
                      ),
                      ListTile(
                        title: Text("Descrição"),
                        subtitle: Text("${pet.perfilDescricao}"),
                      ),
                      ListTile(
                        title: Text("Dono"),
                        subtitle: Text("${pet.idPessoa}"),
                      ),
                      ListTile(
                        title: Text("Idade"),
                        subtitle: Text("${pet.idade}"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}