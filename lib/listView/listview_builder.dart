import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  ListViewBuilderWidget({Key? key}) : super(key: key);

  final List bulan = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              bulan[index],
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        );
      },
      itemCount: bulan.length,
    );
  }
}
