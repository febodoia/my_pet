import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/src/pages/meus_pets/Routes.dart';
import 'package:my_pet/src/app/components/Theme.dart';
import 'package:my_pet/src/pages/meus_pets/Pet_model.dart';

class PetCard extends StatelessWidget {

  final Pet pet;

  PetCard(this.pet);

  @override
  Widget build(BuildContext context) {
    final petThumbnail = new Container(
      alignment: new FractionalOffset(0.0, 0.5),
      margin: const EdgeInsets.only(left: 10.0),
      child: new Hero(
        tag: 'pet-icon-${pet.id}',
        child: new CircleAvatar(
          //child: Image(
          radius: 45.0,
          backgroundImage: new AssetImage(pet.foto),
          //height: ColorsTheme.Dimens.petHeight,
          //width: ColorsTheme.Dimens.petWidth,
        ),
      ),
    );

    final petCard = new Container(
      margin: const EdgeInsets.only(left: 40.0, right: 10.0),
      decoration: new BoxDecoration(
        color: ColorsTheme.petCard,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(color: Colors.black,
            blurRadius: 10.0,
            offset: new Offset(0.0, 1.0))
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 16.0, left: 72.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(pet.nome, style: TextStyles.petTitle),
            new Text(pet.raca, style: TextStyles.petLocation),
            new Container(
              color: const Color(0xFF00C6FF),
              width: 24.0,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0)
            ),
            new Row(
              children: <Widget>[
                new Icon(Icons.location_on, size: 14.0,
                  color: ColorsTheme.petDistance),
                new Text(
                  pet.tipo, style: TextStyles.petDistance),
                new Container(width: 24.0),
                new Icon(Icons.flight_land, size: 14.0,
                  color: ColorsTheme.petDistance),
                new Text(
                  pet.idade, style: TextStyles.petDistance),
              ],
            )
          ],
        ),
      ),
    );

    return new Container(
      height: 120.0,
      margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: new FlatButton(
        onPressed: () => _navigateTo(context, pet.id),

        child: new Stack(
          children: <Widget>[
            petCard,
            petThumbnail,
          ],
        ),
      ),
    );
  }

  _navigateTo(context, String id) {
    Routes.navigateTo(
      context,
      '/detail/${pet.id}',
      transition: TransitionType.fadeIn
    );
  }
}

