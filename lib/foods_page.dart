import 'package:flutter/material.dart';
import 'package:foodapp/fake_data.dart';
import 'package:foodapp/models/category.dart';
import 'package:foodapp/models/food.dart';
import 'package:transparent_image/transparent_image.dart';

class FoodsPage extends StatelessWidget {
  static const String routeName = '/FoodsPage';
  Category? category;
  FoodsPage({this.category});
  @override
  Widget build(BuildContext context) {
    Map<String, Category>? arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, Category>?;
    category = arguments!['category'];
    List<Food> foods = FAKE_FOODS
        .where((food) => food.categoryId == this.category?.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods from ${category?.content}'),
      ),
      body: Center(
          child: Center(
              child: ListView.builder(
                  itemCount: foods.length,
                  itemBuilder: ((context, index) {
                    Food food = foods[index];
                    return ClipRect(
                      child: FadeInImage.assetNetwork(
                        placeholder: 'assets/loading1.gif',
                        image: 'https://picsum.photos/250?image=9',
                      ),
                    );
                    // Text(
                    //   food.name,
                    //   style: TextStyle(color: Colors.black),
                    // );
                  })))),
    );
  }
}
