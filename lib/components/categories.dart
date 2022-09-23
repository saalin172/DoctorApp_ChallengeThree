import 'package:flutter/material.dart';

import '../models/categories_model.dart';

class Categories extends StatelessWidget {
  // final String categoryTextName;
  // final String categoryIconPath;
  // final Color color;
  //
  Categories({
    required this.cg,
  });

  final CategoriesList cg;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 9),
          padding: EdgeInsets.all(10),
          //0xffFFE0F4
          decoration: BoxDecoration(
            color: cg.color,
            // color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(14),
            // image: DecorationImage(
            //   image: AssetImage("${cg.categoriesImage}"),
            // ),
          ),
          child: Image(
            height: 50,
            alignment: Alignment.center,
            fit: BoxFit.cover,
            image: AssetImage(
              "${cg.categoriesImage}",
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "${cg.categoriesName}",
          style: TextStyle(
            fontSize: 16,
            color: cg.txtcolor,
          ),
        ),
      ],
    );
  }
}
