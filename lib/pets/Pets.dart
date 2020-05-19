import 'package:my_pet/pets/Pet.dart';
class PetDao {

  static final List<Pet> pets = [
    const Pet(
      id: "1",
      name: "Jack",
      raca: "Raça",
      tipo: "Cachorro",
      idade: "idade",
      description: "Lorem ipsum...",
      image: "assets/images/dog1.jpg",
    ),
    const Pet(
      id: "2",
      name: "Zeus",
      raca: "Raça",
      tipo: "Cachorro",
      idade: "idade",
      description: "Lorem ipsum...",
      image: "assets/images/dog2.jpg",
    ),
    const Pet(
      id: "3",
      name: "Nina",
      raca: "Raça",
      tipo: "Cachorro",
      idade: "idade",
      description: "Lorem ipsum...",
      image: "assets/images/dog3.jpg",
    ),
    const Pet(
      id: "4",
      name: "Bud",
      raca: "Raça",
      tipo: "Cachorro",
      idade: "idade",
      description: "Lorem ipsum...",
      image: "assets/images/dog4.jpg",
    ),
  ];

  static Pet getPetById(id) {
    return pets
        .where((p) => p.id == id)
        .first;
  }
}