import 'package:flutter/material.dart';

class HeroPart extends StatelessWidget {
  final List<Widget> children;

  HeroPart({Key key, this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70, bottom: 30, left: 26, right: 26),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    );
  }
}
