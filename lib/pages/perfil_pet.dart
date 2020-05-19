import 'package:flutter/material.dart';
import 'package:my_pet/pets/PetList.dart';

class PerfilPet extends StatefulWidget {
  @override
  PerfilPetState createState() => PerfilPetState();
}

class PerfilPetState extends State<PerfilPet> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(child: PetList(),
    
    );
  }

  
  
  
  
  
  
  
  
  
  
  
  // Widget listaPet() {
  //   return Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: <Widget>[
  //         Column(
  //           children: <Widget>[
  //             new Card(
  //               elevation: 20.0,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: new Column(
  //                   //crossAxisAlignment: CrossAxisAlignment.stretch,kkk
  //                   children: <Widget>[
  //                     Row(
  //                       children: <Widget>[
  //                         Column(
  //                           children: [
  //                             CircleAvatar(
  //                               radius: 45.0,
  //                               backgroundImage:
  //                                   AssetImage('assets/images/dog1.jpg'),
  //                             ),
  //                             Padding(
  //                               padding: const EdgeInsets.all(5.0),
  //                               child: Text('Jack'),
  //                             ),
  //                           ],
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             new Card(
  //               elevation: 20.0,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: new Column(
  //                   //crossAxisAlignment: CrossAxisAlignment.stretch,kkk
  //                   children: <Widget>[
  //                     Row(
  //                       children: <Widget>[
  //                         Column(
  //                           children: [
  //                             CircleAvatar(
  //                               radius: 45.0,
  //                               backgroundImage:
  //                                   AssetImage('assets/images/dog2.jpg'),
  //                             ),
  //                             Padding(
  //                               padding: const EdgeInsets.all(5.0),
  //                               child: Text('Zeus'),
  //                             ),
  //                           ],
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             new Card(
  //               elevation: 20.0,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: new Column(
  //                   //crossAxisAlignment: CrossAxisAlignment.stretch,kkk
  //                   children: <Widget>[
  //                     Row(
  //                       children: <Widget>[
  //                         Column(
  //                           children: [
  //                             CircleAvatar(
  //                               radius: 45.0,
  //                               backgroundImage:
  //                                   AssetImage('assets/images/dog3.jpg'),
  //                             ),
  //                             Padding(
  //                               padding: const EdgeInsets.all(5.0),
  //                               child: Text('Nina'),
  //                             ),
  //                           ],
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             new Card(
  //               elevation: 20.0,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(8.0),
  //                 child: new Column(
  //                   //crossAxisAlignment: CrossAxisAlignment.stretch
  //                   children: <Widget>[
  //                     Row(
  //                       children: <Widget>[
  //                         CircleAvatar(
  //                           radius: 45.0,
  //                           backgroundImage:
  //                               AssetImage('assets/images/dog4.jpg'),
  //                         ),
  //                         Padding(
  //                           padding: const EdgeInsets.all(5.0),
  //                           child: Text('Bud'),
  //                         ),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
