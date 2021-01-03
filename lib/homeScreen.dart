import 'package:flutter/material.dart';

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
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(18),
                //   bottomRight: Radius.circular(18),
                // ),
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
                    margin: EdgeInsets.only(left: 5),
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
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: Colors.mainColor),
                        height: 120,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: Colors.mainColor),
                        height: 120,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: Colors.mainColor),
                        height: 120,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: Colors.mainColor),
                        height: 120,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: Colors.mainColor),
                        height: 120,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: Colors.mainColor),
                        height: 120,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        decoration: BoxDecoration(color: Colors.mainColor),
                        height: 120,
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
