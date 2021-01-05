import 'package:flutter/material.dart';
import 'package:kitabisakoding/parts/containerPart.dart';
import 'package:kitabisakoding/parts/heroPart.dart';

class SecondaryBar extends StatelessWidget {
  final String title;

  SecondaryBar({Key key, this.title});

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
                      'Checkout ${title}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                ContainerPart(
                  children: <Widget>[
                    Text("ok"),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
