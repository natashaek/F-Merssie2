import 'package:flutter/material.dart';
import 'package:merssie/models/food.dart';

class ItemFood extends StatefulWidget {
  Food food;
  bool themeDark;

  ItemFood(this.food, {this.themeDark = false});

  @override
  State<ItemFood> createState() => _ItemFoodState();
}

class _ItemFoodState extends State<ItemFood> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _comidaFoto(),
                    Divider(),
                    _favIcon(),
                    // _searchBar(),
                  ],
                ),
                _infoFoodTexts(context),
              ]),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
        color: this.widget.themeDark
            ? Theme.of(context).secondaryHeaderColor
            : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black45,
            offset: Offset(4.0, 4.0),
            blurRadius: 10.0,
          )
        ]);
  }

  Widget _comidaFoto() {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            this.widget.food.lugar.foto,
            width: 215.0,
          ),
        ));
  }

  Widget _favIcon() {
    return GestureDetector(
      child: Icon(
          this.widget.food.isFavorite ? Icons.favorite : Icons.favorite_border,
          color: this.widget.themeDark ? Colors.white : Colors.grey),
      onTap: () {
        setState(() {
          this.widget.food.isFavorite = !this.widget.food.isFavorite;
        });
      },
    );
  }

  Widget _infoFoodTexts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          this.widget.food.tipo,
          style: TextStyle(
              fontSize: 15.0,
              color: this.widget.themeDark ? Color(0XFFB7B7D2) : Colors.grey),
        ),
        Text(
          this.widget.food.nombre,
          style:
              //this.widget.themeDark
              //? Theme.of(context).textTheme.headline3 :

              Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 5.0),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 15.0,
            ),
            SizedBox(width: 5.0),
            Text(
              this.widget.food.lugar.estado,
              style: TextStyle(
                  fontSize: 15.0,
                  color:
                      this.widget.themeDark ? Color(0XFFB7B7D2) : Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
