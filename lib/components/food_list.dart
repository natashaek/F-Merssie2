import 'package:flutter/material.dart';
import 'package:merssie/components/compact_item_food.dart';
import 'package:merssie/models/food.dart';

class FoodList extends StatelessWidget {
  List<Food> foods;

  FoodList(this.foods);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: this.foods.length,
      itemBuilder: (BuildContext context, int index) =>
          CompactItemFood(this.foods[index]),
    );
  }
}
