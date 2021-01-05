import 'package:flutter/material.dart';
import 'package:kitabisakoding/model/courseModel.dart';
import 'package:kitabisakoding/parts/containerPart.dart';
import 'package:kitabisakoding/parts/heroPart.dart';
import 'package:kitabisakoding/screen/confirmedScreen.dart';
import 'package:splashscreen/splashscreen.dart';

class CheckoutScreen extends StatefulWidget {
  final CourseData data;
  CheckoutScreen({Key key, this.data}) : super(key: key);

  @override
  _CheckoutScreen createState() => _CheckoutScreen();
}

class _CheckoutScreen extends State<CheckoutScreen> {
  String name = '';
  String email = '';
  String phoneNumber = '';

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
                      "Checkout Course's",
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
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.mainColor,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        widget.data.image,
                        width: 50,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 16),
                          child: Container(
                            height: 50,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '${widget.data.name} Course\'s',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    widget.data.price,
                                    style: TextStyle(
                                        color: Colors.orangeAccent,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 38),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Checkout Form's"),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 6),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Nama Lengkap",
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.person_outline),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    name = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 6),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  prefixIcon: Icon(Icons.email),
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {
                                  setState(() {
                                    email = value;
                                  });
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 6),
                              child: Column(
                                children: <Widget>[
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: "Nomor Handphone",
                                        border: OutlineInputBorder(),
                                        prefixIcon: Icon(Icons.phone)),
                                    onChanged: (String value) {
                                      setState(() {
                                        phoneNumber = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "CHECKOUT",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  if (name != '' && email != '' && phoneNumber != '') {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoadingScreen(
                          name: name,
                          email: email,
                          phoneNumber: phoneNumber,
                        );
                      }),
                    );
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  final String name;
  final String email;
  final String phoneNumber;

  LoadingScreen({Key key, this.name, this.email, this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: ConfirmedScreen(
        name: name,
        email: email,
        phoneNumber: phoneNumber,
      ),
      backgroundColor: Colors.mainColor,
      title: Text(
        "Checking Out...",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.white),
      ),
      loaderColor: Colors.white,
    );
  }
}
