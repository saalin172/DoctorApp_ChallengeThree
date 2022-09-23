import 'package:challenge_three/models/doctor.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({
    Key? key,
    required this.img,
    required this.name,
  }) : super(key: key);
  final String img;

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 4),
                        Text(
                          ' Cardiologist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              IconlyLight.location,
                              size: 18,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 3),
                            Text(
                              'United Hospital , Dhaka',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
              SizedBox(height: 5),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 15),
                  Icon(
                    IconlyLight.time_circle,
                    size: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '09:00am-01:00pm',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Clinic fee:\$100',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
