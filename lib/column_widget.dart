import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 80, 89, 133),
                Color.fromARGB(255, 118, 39, 237),
                Color.fromARGB(255, 0, 42, 255),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            "Nasi Goreng + Teh Jeruk Panas",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 80, 89, 133),
                Color.fromARGB(255, 118, 39, 237),
                Color.fromARGB(255, 0, 42, 255),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            "Mie Ayam +  Teh Lemon Panas",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 80, 89, 133),
                Color.fromARGB(255, 118, 39, 237),
                Color.fromARGB(255, 0, 42, 255),
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Text(
            "Vegetable Fried + Black Coffee",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
