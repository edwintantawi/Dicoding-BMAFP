import 'package:flutter/material.dart';
import 'package:kitabisakoding/screen/detailsScreen.dart';
import 'package:kitabisakoding/model/courseModel.dart';

class CourseCard extends StatelessWidget {
  final CourseData data;

  CourseCard({Key key, this.data});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      child: Container(
        width: 140,
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
              margin: EdgeInsets.only(
                bottom: 12,
              ),
              child: Image.asset(
                data.image,
                height: 65,
              ),
            ),
            Container(
              height: 110,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        data.name,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 3,
                        ),
                        child: Text(
                          data.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w200,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      data.price,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen(data: data);
        }));
      },
    );
  }
}
