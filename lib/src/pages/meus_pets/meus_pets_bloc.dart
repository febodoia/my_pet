import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

import 'Pet_model.dart';
import 'meus_pets_repository.dart';

class MeusPetsBloc extends BlocBase {
 
 final PetRepository repo;

  MeusPetsBloc(this.repo);

  var listPet = BehaviorSubject<List<Pet>>();
  Sink<List<Pet>> get responseIn => listPet.sink;
  Observable<List<Pet>> get responseOut => listPet.stream;
  
  void getPets() async{
    responseIn.add(null);
    try{
    var res = await repo.getPets();
    responseIn.add(res);
    }catch(e){
      listPet.addError(e);
    }
  }

  @override
  void dispose() {
    listPet.close();
    super.dispose();
  }
}
