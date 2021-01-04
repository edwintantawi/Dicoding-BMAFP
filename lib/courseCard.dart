import 'package:flutter/material.dart';
import 'package:kitabisakoding/detailsScreen.dart';
import 'package:kitabisakoding/model/courseModel.dart';

class CourseCard extends StatelessWidget {
  final CourseData data;

  CourseCard({Key key, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.only(
        top: 16,
      ),
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.mainColor,
        ),
        borderRadius: BorderRadius.all(Radius.circular(6)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Image.asset(
              data.image,
              height: 80,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            child: Text(
              data.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            child: FlatButton(
              color: Colors.mainColor,
              height: 50,
              child: Text(
                "ENROLL NOW",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                    data: data,
                  );
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}
