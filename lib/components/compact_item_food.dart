import 'package:flutter/material.dart';

import '../models/food.dart';

class CompactItemFood extends StatelessWidget {
  Food food;

  CompactItemFood(this.food);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                _comida(),
                _infoFoodTexts(context),
              ],
            ),
            _addIcon(context),
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            offset: Offset(7.8, 7.8),
            blurRadius: 8.0,
          )
        ]);
  }

  Widget _comida() {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.network(this.food.comidaFot));
  }

  Widget _infoFoodTexts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.food.nombre,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Text(
          this.food.tipo,
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: 3.0),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 14.0,
            ),
            SizedBox(width: 3.0),
            Text(
              this.food.lugar.estado,
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0XFFB7B7D2),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _addIcon(BuildContext context) {
    return Icon(Icons.add_outlined, color: Theme.of(context).highlightColor);
  }
}
