import 'package:flutter/material.dart';
import 'package:foodapp/categories_page.dart';
import 'package:foodapp/foods_page.dart';
import 'package:foodapp/models/category.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App with Navigation',
        initialRoute: '/', // this is root
        routes: {
          '/FoodsPage': (context) => FoodsPage(),
          '/CategoriesPage': (context) => CategoriesPage(),
        },
        theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: GoogleFonts.sunshineyTextTheme(
            ThemeData.light().textTheme.copyWith(
                  bodyText1: TextStyle(color: Color.fromARGB(1, 20, 52, 52)),
                  bodyText2: TextStyle(color: Color.fromARGB(1, 20, 52, 52)),
                  headline1: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
          ),
        ),
        home: Scaffold(
          body: Scaffold(
            appBar: AppBar(
              title: Text(
                'Food\'s categories',
                style: TextStyle(fontSize: 30),
              ),
              centerTitle: true,
            ),
            body: SafeArea(child: CategoriesPage()),
          ),
        ));
  }
}
