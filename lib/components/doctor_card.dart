import 'package:challenge_three/models/doctor.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({Key? key, required this.doctor}) : super(key: key);
  final Doctors doctor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 38,
                  backgroundImage: AssetImage("${doctor.doctorImage}"),
                ),
              ),
            ],
          ),
          Positioned(
            top: 30,
            // right: 230,
            bottom: 0,
            left: 75,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.95,
                ),
                color: Colors.lightGreen,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " ${doctor.doctorName}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "${doctor.doctorType}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  " ${doctor.doctorMassage} ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 10,
            child: Row(
              children: [
                Icon(Icons.remove_red_eye_outlined, color: Colors.grey),
                SizedBox(width: 3),
                Text(
                  "1 min ago",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
