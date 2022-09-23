import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:jiffy/jiffy.dart';

import '../components/components.dart';
import '../models/categories_model.dart';
import '../models/doctor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, this.cgl, this.doc}) : super(key: key);
  final CategoriesList? cgl;
  final Doctors? doc;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  DateTime _dateTime = DateTime.now();

  _showDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<IconData> listOfIcons = [
      Icons.home,
      Icons.notifications_none_rounded,
      //IconlyLight.notification,
      IconlyLight.chat,
      IconlyLight.profile,
    ];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.width * .165,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (_) => Chatting()));
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0522,
                    left: size.width * .0522,
                    top: size.width * .022,
                    //422
                  ),
                  width: size.width * .135,
                  height: index == currentIndex ? size.width * .018 : 0,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Icon(
                  listOfIcons[index],
                  size: size.width * .076,
                  color: index == currentIndex ? Colors.black : Colors.black38,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          GestureDetector(
            onTap: () => _showDate(),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              padding: EdgeInsets.all(10),
              //height: 20,
              //width: 100,
              // color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey,
                  strokeAlign: StrokeAlign.outside,
                  width: 1.4,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.date_range,
                    color: Colors.grey,
                  ),
                  //_dateTime.toString() [2021, 1, 19]
                  Text(
                    "${Jiffy(_dateTime.toString()).format('d MMMM yyyy')} ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: "Hi,\n",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue,
                    ),
                    children: [
                      TextSpan(
                        text: "Let\s Find Your doctor",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: 15),
              SearchBar(),
              SizedBox(height: 15),
              // Categories Lists
              Container(
                height: 100,
                child: ListView.builder(
                    //shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categoriesLists.length,
                    itemBuilder: (_, index) {
                      return Categories(cg: categoriesLists[index]);
                    }),
              ),
              SizedBox(height: 15),
              HomeCard(),
              SizedBox(height: 15),
              // Popular Doctors
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Doctors",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView(
                  children: [
                    PopularDoctors(
                      img: "images/d1.jpg",
                      name: "Dr.Hanry",
                    ),
                    PopularDoctors(
                      img: "images/d2.jpg",
                      name: "Dr. Joseph Steven",
                    ),
                    PopularDoctors(
                      img: "images/d3.jpg",
                      name: "Dr. Divid",
                    ),
                    PopularDoctors(
                      img: "images/d4.jpg",
                      name: "Dr.Mathew",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
