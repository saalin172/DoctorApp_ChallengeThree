import 'package:challenge_three/components/components.dart';
import 'package:challenge_three/models/doctor.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Chatting extends StatefulWidget {
  const Chatting({Key? key, this.docto}) : super(key: key);
  final Doctors? docto;

  @override
  State<Chatting> createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
  int currentIndex = 0;

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
                  color: index == currentIndex
                      ? Colors.blueAccent
                      : Colors.black38,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),
      //backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Chat Room",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(),
            SizedBox(height: 15),
            Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: doctorList.length,
                  itemBuilder: (_, index) {
                    return DoctorOnline(
                      dr: doctorList[index],
                    );
                  }),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: doctorList.length,
                  itemBuilder: (_, index) {
                    return DoctorCard(
                      doctor: doctorList[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
