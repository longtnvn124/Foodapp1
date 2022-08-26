import 'package:flutter/material.dart';
import 'package:foodapp/foods_page.dart';
import 'package:foodapp/models/category.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  // 1 categoryItem - i1 categor object
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    //if you tap to this Container, it muist navigate to the list of Fppds
    return InkWell(
      onTap: () {
        print('tap to categoru IItem: ${this.category.content}');
        //navigate to another page
        //pages are stored infto a stack, the page you see is the top page(in th stack)
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => FoodsPage(
        //     category: this.category,
        //   ), // you can send parameters using constructor

        // ));
        //are there another wau to sennd parameters? Yes use routeNames
        Navigator.pushNamed(context, FoodsPage.routeName,
            arguments: {'category': category});
      },
      splashColor: Colors.deepOrange,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // now change font s family ggfonts
            Text(
              this.category.content,
              style: GoogleFonts.roboto(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [_color.withOpacity(0.8), _color],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            color: _color,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
