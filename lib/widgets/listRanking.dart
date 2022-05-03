import 'package:flutter/material.dart';
import 'package:memotex/models/rankingModel.dart';

class ListRanking extends StatelessWidget {

  final List<RankingModel> ranking;

  const ListRanking({this.ranking});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.80,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: ranking.length,
        itemBuilder: (context, i) {
            return Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(ranking[i].position.toString() +'.', style: TextStyle(color: Colors.yellow[600], fontSize: 30)),
                  SizedBox(width: 5),
                  Text(ranking[i].player, style: TextStyle(fontSize: 20)),
                  SizedBox(width: 10),
                  Text(ranking[i].time.toString() + ' segundos', style: TextStyle(fontSize: 20)),
                ],
              ),
            );
        },
      ),
    );
  }

    
}