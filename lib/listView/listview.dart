import 'package:flutter/material.dart';
import 'package:latihan_flutter/latihan/latihan_listview.dart';
import 'package:latihan_flutter/listView/listview_builder.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListViewBuilderWidget(),
            ),
            LatihanListView()
          ],
        ),
      ),
    );
  }
}
