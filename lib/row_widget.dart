import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          color: Colors.blueAccent,
          child: const FlutterLogo(
            size: 48,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: Colors.amberAccent,
          child: const FlutterLogo(
            size: 48,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: Colors.deepOrange,
          child: const FlutterLogo(
            size: 48,
          ),
        ),
      ],
    );
  }
}