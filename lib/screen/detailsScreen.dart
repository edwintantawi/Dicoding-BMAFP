import 'package:flutter/material.dart';
import 'package:kitabisakoding/model/courseModel.dart';
import 'package:kitabisakoding/parts/containerPart.dart';
import 'package:kitabisakoding/parts/heroPart.dart';
import 'package:kitabisakoding/screen/checkoutScreen.dart';

class DetailScreen extends StatelessWidget {
  final CourseData data;
  DetailScreen({Key key, this.data});
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
                  data.image,
                  height: 100,
                ),
              ],
            ),
            ContainerPart(
              children: <Widget>[
                Text(
                  '${data.name}\n${data.description}',
                ),
                Text(
                  '${data.name}\n${data.description}',
                ),
                Text(
                  '${data.name}\n${data.description}',
                ),
                Text(
                  '${data.name}\n${data.description}',
                ),
                Text(
                  '${data.name}\n${data.description}',
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(bottom: 16, top: 16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: FlatButton(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 26,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.mainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "ENROLL NOW",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        data.price,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return CheckoutScreen();
                    }),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
