import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merssie/components/food_carrousel.dart';
import 'package:merssie/components/food_list.dart';
import 'package:merssie/models/lugar.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:merssie/pages/myPerfilPage.dart';
import 'package:merssie/pages/perfilPage.dart';

import '../models/food.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget {
  List<Food> recentFoods = [
    Food(
      nombre: "México",
      tipo: "Tradicionales",
      comidaFot:
          ("https://vivirmejor.mx/wp-content/uploads/2020/08/Comida-Tipica-Mexicana-Pozole-Portada.jpg"),
      lugar: Lugar(
          pais: "Mexico",
          estado: "Ciudad de México",
          foto:
              "https://cdn.britannica.com/73/2573-050-C825CE68/Flag-Mexico.jpg"),
      isFavorite: true,
    ),
    Food(
        nombre: " Italia",
        tipo: "Pasta",
        comidaFot:
            ("https://www.todoenperu.net/recetas/wp-content/uploads/2019/04/ceviche.jpg"),
        lugar: Lugar(
            pais: "Italia",
            estado: "Venustiano Carranza",
            foto:
                "https://cdn.britannica.com/73/2573-050-C825CE68/Flag-Mexico.jpg")),
    Food(
        nombre: "Perú",
        tipo: "Peruana",
        comidaFot:
            ("https://www.todoenperu.net/recetas/wp-content/uploads/2019/04/ceviche.jpg"),
        lugar: Lugar(
            pais: "Peru",
            estado: "Barrio Mayor",
            foto:
                "https://cdn.britannica.com/73/2573-050-C825CE68/Flag-Mexico.jpg"))
  ];

  List<Food> forYouFoods = [
    Food(
      nombre: "México",
      tipo: "Tradicionales",
      comidaFot:
          ("https://vivirmejor.mx/wp-content/uploads/2020/08/Comida-Tipica-Mexicana-Pozole-Portada.jpg"),
      lugar: Lugar(
          pais: "Mexico",
          estado: "CDMX",
          foto:
              "https://cdn.britannica.com/73/2573-050-C825CE68/Flag-Mexico.jpg"),
      isFavorite: true,
    ),
    Food(
        nombre: " Italia",
        tipo: "Pasta",
        comidaFot:
            ("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKtNiw3tN2ha9VgpoxpddOx9_bpdrso0GIXw&usqp=CAU"),
        lugar: Lugar(
            pais: "Italia",
            estado: "Roma",
            foto:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/1200px-Flag_of_Italy.svg.png")),
    Food(
        nombre: "Perú",
        tipo: "Peruana",
        comidaFot:
            ("https://www.todoenperu.net/recetas/wp-content/uploads/2019/04/ceviche.jpg"),
        lugar: Lugar(
            pais: "Peru",
            estado: "Lima",
            foto:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/1200px-Flag_of_Peru.svg.png"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: <Widget>[
        _customAppBar(context),
        _searchBar(),
        _textHeader(context),
        _forYou(context),
        _recent(context),
        SizedBox(height: 50.0),
      ],
    )));
  }

  Widget _customAppBar(context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    iconSize: 30.0,
                    icon: Icon(Icons.delivery_dining_outlined),
                    color: Colors.deepOrange),
                Text('Food', style: Theme.of(context).textTheme.headline3),
              ],
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      elevation: 0),
                  child: Text(
                    'OPCIONES',
                    style: TextStyle(fontSize: 10.0),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PerfilPage()));
                  }),
              /*IconButton(
                onPressed: () => Navigator.pushNamed(context, 'myperfil'),
                iconSize: 20.0,
                icon: Icon(Icons.settings),
              ),*/
            ],
          ),
        ],
      ),
    );
  }

  Widget _textHeader(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //  Text('Hi Jade', style: Theme.of(context).textTheme.bodyText1),
            Text('Categorias', style: Theme.of(context).textTheme.headline4),

            FoodCarrousel(this
                .forYouFoods), //Text('Design job', style: Theme.of(context).textTheme.headline3)
          ]),
    );
  }

  Widget _forYou(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            'Menú',
            style: Theme.of(context).textTheme.headline5,
          ),
        )
      ],
    );
  }

  Widget _searchBar() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      height: 60.0,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.search,
              size: 25.0,
            ),
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
            hintText: 'Explorar'),
      ),
    );
  }

  Widget _recent(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0, bottom: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Populares',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Ver todo',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: FoodList(this.recentFoods),
        ),
      ],
    );
  }
}
