import 'package:flutter/material.dart';
import 'package:kitabisakoding/model/courseModel.dart';

class DetailScreen extends StatelessWidget {
  final CourseData data;
  DetailScreen({Key key, this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
      ),
      body: Text(
        data.name,
      ),
    );
  }
}
