import 'package:my_pet/src/pages/meus_pets/Pet_model.dart';
import 'package:my_pet/src/pages/meus_pets/meus_pets_repository.dart';

class PetBloc {

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