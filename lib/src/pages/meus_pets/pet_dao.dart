import 'package:my_pet/src/pages/meus_pets/Pet_model.dart';
class PetDao {

  int id;
  String nome;
  String raca;
  int idade;
  String tipo;
  String perfilDescricao;
  int idPessoa;
  String foto;


  static final List<Pet> pets = [
    Pet(
      id: 1,
      nome: "Jack",
      raca: "Raça",
      tipo: "Cachorro",
      idade: 2,
      perfilDescricao: "Lorem ipsum...",
      foto: "assets/images/dog1.jpg",
    ),
    Pet(
      id: 2,
      nome: "Zeus",
      raca: "Raça",
      tipo: "Cachorro",
      idade: 2,
      perfilDescricao: "Lorem ipsum...",
      foto: "assets/images/dog2.jpg",
    ),
    Pet(
      id: 3,
      nome: "Nina",
      raca: "Raça",
      tipo: "Cachorro",
      idade: 2,
      perfilDescricao: "Lorem ipsum...",
      foto: "assets/images/dog3.jpg",
    ),
    Pet(
      id: 4,
      nome: "Bud",
      raca: "Raça",
      tipo: "Cachorro",
      idade: 2,
      perfilDescricao: "Lorem ipsum...",
      foto: "assets/images/dog4.jpg",
    ),
  ];

  static Pet getPetById(id) {
    return pets
        .where((p) => p.id == id)
        .first;
  }
}