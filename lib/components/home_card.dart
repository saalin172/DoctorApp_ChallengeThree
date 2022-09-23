import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery
          .of(context)
          .size
          .width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Card(
          elevation: 0,
          //color: Colors.red,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage("images/b.jpg"),
          ),
        ),
      ),
    );
  }
}
