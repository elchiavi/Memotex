import 'package:flutter/material.dart';
import 'package:memotex/models/rankingModel.dart';
import 'package:memotex/providers/rankingProvider.dart';
import 'package:memotex/widgets/customCircularProgress.dart';
import 'package:memotex/widgets/listRanking.dart';
import 'package:memotex/widgets/sectionTitle.dart';

class RankingFruits extends StatelessWidget {

  final rankingProvider = new RankingProvider(title: 'Frutas');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [
          SectionTitle(title: 'Mejores tiempos'),
          Container(
            child: FutureBuilder(
              future: rankingProvider.getRanking(),
              builder: (BuildContext context, AsyncSnapshot<List<RankingModel>> snapshot) {
                if (snapshot.hasData) {
                  return ListRanking(ranking: snapshot.data);
                } else {
                  return Container(
                    height: 200.0,
                    child: Center(
                    child: CustomCircularProgressIndicator(),
                    ),
                  );
                }
              } ,
            ),
          ), 
        ],
      ),
    );
  }
}