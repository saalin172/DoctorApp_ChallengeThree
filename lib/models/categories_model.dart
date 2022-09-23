import 'dart:ui';

import 'package:flutter/material.dart';

class CategoriesList {
  final String? categoriesName;
  final String? categoriesImage;
  final Color? color;
  final Color? txtcolor;

  CategoriesList({
    this.txtcolor,
    this.color,
    this.categoriesName,
    this.categoriesImage,
  });
}

// Lists Of Doctors
var categoriesLists = [
  CategoriesList(
    categoriesName: "Heart",
    categoriesImage: "images/heart.png",
    color: Color(0xffF9E9ED),
    txtcolor: Colors.red.shade400,
  ),
  CategoriesList(
    categoriesName: "Dental",
    categoriesImage: "images/tooth.png",
    color: Color(0xffECF3FB),
    //(0xffFFE0F4)
    txtcolor: Colors.lightBlue,
  ),
  CategoriesList(
    categoriesName: "Ear",
    categoriesImage: "images/ear.png",
    color: Color(0xfff3f4fd),
    //FFE0F4
    txtcolor: Colors.blueAccent,
  ),
  CategoriesList(
    categoriesName: "Brain",
    categoriesImage: "images/brain.png",
    color: Color(0xffFFE0F4),
    txtcolor: Colors.red.shade400,
  ),
  CategoriesList(
    categoriesName: "Stomach",
    categoriesImage: "images/st.png",
    color: Color(0xffFFE0F4),
    txtcolor: Colors.red.shade400,
  ),
];
