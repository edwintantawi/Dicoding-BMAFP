import 'package:flutter/material.dart';
import 'package:kitabisakoding/data/courseData.dart';
import 'package:kitabisakoding/parts/containerPart.dart';
import 'package:kitabisakoding/parts/heroPart.dart';
import 'package:kitabisakoding/parts/sectionPart.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        decoration: BoxDecoration(color: Colors.mainColor),
        child: Column(
          children: <Widget>[
            HeroPart(
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
            ContainerPart(
              children: <Widget>[
                SectionPart(
                  title: "FrontEnd Development",
                  data: courseDataListFE,
                ),
                SectionPart(
                  title: "BackEnd Development",
                  data: courseDataListBE,
                ),
                SectionPart(
                  title: "Mobile Development",
                  data: courseDataListMB,
                ),
                SectionPart(
                  title: "Database Development",
                  data: courseDataListDB,
                ),
                SectionPart(
                  title: "CMS Development",
                  data: courseDataListCMS,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
