import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:my_pet/pets/Routes.dart';
import 'package:my_pet/pets/Theme.dart' as Theme;
import 'package:my_pet/pets/Pet.dart';

class PetRow extends StatelessWidget {

  final Pet pet;

  PetRow(this.pet);

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
          backgroundImage: new AssetImage(pet.image),
          //height: Theme.Dimens.petHeight,
          //width: Theme.Dimens.petWidth,
        ),
      ),
    );

    final petCard = new Container(
      margin: const EdgeInsets.only(left: 40.0, right: 10.0),
      decoration: new BoxDecoration(
        color: Theme.Colors.petCard,
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(color: Colors.black,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0))
        ],
      ),
      child: new Container(
        margin: const EdgeInsets.only(top: 16.0, left: 72.0),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(pet.name, style: Theme.TextStyles.petTitle),
            new Text(pet.raca, style: Theme.TextStyles.petLocation),
            new Container(
              color: const Color(0xFF00C6FF),
              width: 24.0,
              height: 1.0,
              margin: const EdgeInsets.symmetric(vertical: 8.0)
            ),
            new Row(
              children: <Widget>[
                new Icon(Icons.location_on, size: 14.0,
                  color: Theme.Colors.petDistance),
                new Text(
                  pet.tipo, style: Theme.TextStyles.petDistance),
                new Container(width: 24.0),
                new Icon(Icons.flight_land, size: 14.0,
                  color: Theme.Colors.petDistance),
                new Text(
                  pet.idade, style: Theme.TextStyles.petDistance),
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

