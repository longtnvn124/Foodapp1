import 'dart:math';

import 'category.dart';
import 'package:flutter/cupertino.dart';

class Food {
  int? id;
  String name;
  String urlImage;
  Duration? duration; //time to finish this food
  Complexity? complexity;
  //one foods has many ingredients
  List<String>? ingredients = [];
  int categoryId;

  //reference: 1 Category has many Foods
  //constructor:
  Food(
      {required this.name,
      required this.urlImage,
      this.duration,
      this.complexity,
      this.ingredients,
      required this.categoryId}) {
    //id is "auto-increment"
    this.id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
