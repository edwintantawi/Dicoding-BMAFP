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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      "${data.name} Course's",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ContainerPart(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 26),
                  child: Image.asset(
                    data.image,
                    height: 90,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 12),
                      child: Text(
                        data.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text(
                      data.description,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 30),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.people,
                                size: 32,
                                color: Colors.mainColor,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Members",
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      data.members,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 35,
                                color: Colors.amber,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Rating's",
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      data.ratings,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.book,
                                size: 32,
                                color: Colors.lightGreen,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Course's",
                                      style: TextStyle(
                                        fontSize: 11,
                                      ),
                                    ),
                                    Text(
                                      data.courses,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
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
                          color: Colors.orangeAccent,
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
                      return CheckoutScreen(
                        data: data,
                      );
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
