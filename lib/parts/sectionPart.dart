import 'package:flutter/material.dart';
import 'package:kitabisakoding/elements/courseCard.dart';

class SectionPart extends StatelessWidget {
  final String title;
  final List data;

  SectionPart({Key key, this.title, this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title),
        Container(
          height: 240,
          margin: EdgeInsets.only(top: 6, bottom: 26),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: data.map((course) {
              return CourseCard(
                data: course,
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
