import 'package:flutter/material.dart';
import 'package:memotex/models/itemRankingModel.dart';
import 'package:memotex/providers/uiProvider.dart';
import 'package:provider/provider.dart';

class ItemRanking extends StatelessWidget {

  final String title; 

  const ItemRanking({
    @required this.title, 
 
  });

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);
    final itemRankingModel = Provider.of<ItemRankingModel>(context);

    return GestureDetector(
      onTap: () {
        var itemRankingModel = Provider.of<ItemRankingModel>(context,listen: false);
        itemRankingModel.title = this.title;

        switch(this.title) {

          case "Animales":
            return uiProvider.selectedMenuOpt = 0;

          case "Banderas":
            return uiProvider.selectedMenuOpt = 1;

          case "Caras":
            return uiProvider.selectedMenuOpt = 2;

          case "Frutas":
            return uiProvider.selectedMenuOpt = 3;

          case "Vehiculos":
            return uiProvider.selectedMenuOpt = 4;

        }
        
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: <Widget> [
            Text(this.title, 
              style: (this.title == itemRankingModel.title)   
              ? TextStyle(
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.bold
                )
              : TextStyle(fontSize: 14)
            ),
            if (this.title == itemRankingModel.title)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
              )
          ],
        ),
      ),
    );
  }
}
