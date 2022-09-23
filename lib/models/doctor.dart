import 'dart:ui';

import 'package:flutter/material.dart';

class Doctors {
  final String? doctorName;
  final String? doctorImage;
  final String? doctorType;
  final String? doctorMassage;

  Doctors({
    this.doctorType,
    this.doctorMassage,
    this.doctorName,
    this.doctorImage,
  });
}

// Lists Of Doctors
var doctorList = [
  Doctors(
      doctorName: "Dr.Hanry",
      doctorImage: "images/d1.jpg",
      doctorType: "Cardiologist",
      doctorMassage: "Hi , nice to meet you how can i help..."),
  Doctors(
      doctorName: "Dr.Joseph Steven",
      doctorImage: "images/d2.jpg",
      doctorType: "Cardiologist",
      doctorMassage: "Hi , nice to meet you how can i help..."),
  Doctors(
      doctorName: "Dr. Divid ",
      doctorImage: "images/d3.jpg",
      doctorType: "Cardiologist",
      doctorMassage: "Hi , nice to meet you how can i help..."),
  Doctors(
      doctorName: "Dr.Mathew",
      doctorImage: "images/d4.jpg",
      doctorType: "Cardiologist",
      doctorMassage: "Hi , nice to meet you how can i help..."),
  Doctors(
      doctorName: "Dr.Jaquline",
      doctorImage: "images/d5.jpg",
      doctorType: "Cardiologist",
      doctorMassage: "Hi , nice to meet you how can i help..."),
];
