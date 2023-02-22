import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/latihan_listview.dart';
import 'package:latihan_flutter/latihan/test_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myAppbar = AppBar(
      title: const Text(
        'Product List',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 80, 89, 133),
              Color.fromARGB(255, 118, 39, 237),
              Color.fromARGB(255, 0, 42, 255),
            ],
          ),
        ),
      ),
    );
    return MaterialApp(
      title: 'Latihan Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Quicksand',
      ),
      home: const Scaffold(
        body: TestListView(),
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello World',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          foreground: Paint()
            ..shader = const LinearGradient(
              colors: <Color>[
                Colors.pinkAccent,
                Colors.deepPurpleAccent,
                Colors.red
                //add more color here.
              ],
            ).createShader(
              const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0),
            ),
        ),
      ),
    );
  }
}
