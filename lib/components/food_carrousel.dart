// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:merssie/components/item_food.dart';

import '../models/food.dart';

class FoodCarrousel extends StatelessWidget {
  List<Food> foods;

  FoodCarrousel(this.foods);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 300.0,
      ),
      items: this
          .foods
          .map((e) => ItemFood(e, themeDark: foods.indexOf(e) == 0))
          .toList(),
    );
  }
}
