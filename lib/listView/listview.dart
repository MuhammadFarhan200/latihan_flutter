import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          child: const Text(
            'Flutter Widget: Penggunaan ListView Class',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: const Text(
            'Icing gummi bears topping soufflé candy canes fruitcake cotton candy. Jelly beans powder liquorice cupcake sesame snaps croissant gummies lollipop. Gingerbread gingerbread tiramisu pastry dragée. Gummi bears sweet roll soufflé gingerbread chocolate marshmallow halvah.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: const Text(
            'Apple pie bonbon macaroon cheesecake icing sesame snaps caramels cookie pastry. Jelly-o jelly lollipop sugar plum pastry chocolate tart. Donut soufflé halvah toffee candy chocolate cake dessert cheesecake chocolate bar. Dessert toffee marshmallow liquorice danish sweet roll pudding liquorice bear claw.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
