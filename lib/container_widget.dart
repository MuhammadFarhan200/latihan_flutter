import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      height: 200,
      width: 200,
      child: const Center(
        child: Text(
          'Ini adalah Container',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
