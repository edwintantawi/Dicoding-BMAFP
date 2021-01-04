import 'package:flutter/material.dart';
import 'package:kitabisakoding/courseCard.dart';
import 'package:kitabisakoding/data/courseData.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(color: Colors.mainColor),
        child: Column(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 70, bottom: 30, left: 26, right: 26),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFF002855),
                    Color(0xFF00206f),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/kitaBisaKoding.png',
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 3),
                    width: 2,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    ),
                  ),
                  Container(
                    child: Text(
                      'KitaBisaKoding',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // FRONTEND
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("FrontEnd Dev"),
                          Container(
                            height: 240,
                            margin: EdgeInsets.only(top: 6, bottom: 26),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: courseDataListFE.map((course) {
                                return CourseCard(
                                  data: course,
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                      // BECKEND
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("FrontEnd Dev"),
                          Container(
                            height: 240,
                            margin: EdgeInsets.only(top: 6, bottom: 26),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: courseDataListBE.map((course) {
                                return CourseCard(
                                  data: course,
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
