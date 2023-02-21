import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.blueAccent,
          child: FlutterLogo(
            size: 48,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.amberAccent,
          child: FlutterLogo(
            size: 48,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.deepOrange,
          child: FlutterLogo(
            size: 48,
          ),
        ),
      ],
    );
  }
}