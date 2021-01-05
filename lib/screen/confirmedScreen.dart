import 'package:flutter/material.dart';
import 'package:kitabisakoding/screen/homeScreen.dart';

class ConfirmedScreen extends StatelessWidget {
  final String name;
  final String email;
  final String phoneNumber;

  ConfirmedScreen({Key key, this.name, this.email, this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                margin: EdgeInsets.only(top: 70, bottom: 32),
                child: Image.asset(
                  'images/illustration/confirmed.png',
                  width: 250,
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 30),
                child: Text(
                  "Checkout Success!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("Nama :"),
                    Container(
                      margin: EdgeInsets.only(top: 6, bottom: 10),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(name),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("Email :"),
                    Container(
                      margin: EdgeInsets.only(top: 6, bottom: 10),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(email),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text("Nomor Handphone :"),
                    Container(
                      margin: EdgeInsets.only(top: 6, bottom: 10),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(phoneNumber),
                    ),
                  ],
                ),
              ),
              FlatButton(
                child: Container(
                  margin: EdgeInsets.only(top: 16, bottom: 32),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.mainColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Text(
                    "Done",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context,
                      MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  }), ModalRoute.withName("/Home"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
