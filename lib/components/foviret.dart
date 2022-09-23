import 'package:challenge_three/models/doctor.dart';
import 'package:flutter/material.dart';

class DoctorOnline extends StatelessWidget {
  const DoctorOnline({Key? key, required this.dr}) : super(key: key);
  final Doctors dr;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage("${dr.doctorImage}"),
        ),
        Positioned(
          top: 0,
          right: 5,
          left: 65,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1.95,
              ),
              shape: BoxShape.circle,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
