import 'package:flutter/material.dart';

class smartphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text(
              "SMARTPHONE",
              style: TextStyle(fontSize: 30.0),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Icon(
              Icons.smartphone,
              size: 90.0,
            ),
          ],
        ),
      ),
    );
  }
}
