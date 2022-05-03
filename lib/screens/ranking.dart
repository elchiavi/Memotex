import 'package:flutter/material.dart';
import 'package:memotex/screens/rankingFruits.dart';
import 'package:provider/provider.dart';

import 'package:memotex/screens/rankingAnimals.dart';
import 'package:memotex/screens/rankingFaces.dart';
import 'package:memotex/screens/rankingFlags.dart';
import 'package:memotex/screens/rankingVehicles.dart';
import 'package:memotex/widgets/listItemRanking.dart';
import 'package:memotex/providers/uiProvider.dart';


class Ranking extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Memotex",style: TextStyle(fontSize: 25)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            ListItemRanking(),
            _HomeBodyPage(),
          ],
        ),
      ),
    );
  }
}

class _HomeBodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;

    switch (currentIndex) {
      case 0:
        return RankingAnimals();

      case 1:
        return RankingFlags();

      case 2:
        return RankingFaces();

      case 3: 
        return RankingFruits();

      case 4:
        return RankingVehicles();

      default:
        return RankingAnimals();
    }
  }
}