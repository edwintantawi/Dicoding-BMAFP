import 'package:flutter/material.dart';

class HeroPart extends StatelessWidget {
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  HeroPart({Key key, this.children, this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 70, bottom: 30, left: 12, right: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF002855),
              Color(0xFF00206f),
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          // mainAxisAlignment: mainAxisAlignment,
          children: children,
        ));
  }
}
