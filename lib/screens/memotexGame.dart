import 'package:flutter/material.dart';


import 'package:memotex/widgets/memotexCard.dart';
import 'package:memotex/models/cardModel.dart';
import 'package:memotex/models/themeModel.dart';

class MemotexGame extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ThemeModel theme = ModalRoute.of(context).settings.arguments;
    theme.emojis.shuffle(); 
    final List<CardModel> listCard = [];
    final now = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Memotex", style: TextStyle(fontSize: 25)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: theme.color.withOpacity(0.7),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10, top: 5),
            child: Center(
              child: GestureDetector(
                child: Text("Juego Nuevo", style: TextStyle(fontSize: 15)),
                onTap: () => Navigator.pushReplacementNamed(context, 'selectTheme')
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(theme.numbersOfPairs*2, (index) {
            final card = new CardModel(content: theme.emojis[index]);
            listCard.add(card);
            theme.emojis.add(theme.emojis[index]);
            return MemotexCard(theme: theme, index: index, listCard: listCard, now: now);
           })
        )
      )
    );
  }
}