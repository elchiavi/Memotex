import 'package:flutter/material.dart';

import 'itemRanking.dart';

class ListItemRanking extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          ItemRanking(title: 'Animales'),
          ItemRanking(title: 'Banderas'),
          ItemRanking(title: 'Caras'),
          ItemRanking(title: 'Frutas'),
          ItemRanking(title: 'Vehículos'),
        ],
      ),
    );
  }
}