import 'package:flutter/material.dart';

import 'package:memotex/models/cardModel.dart';
import 'package:memotex/models/themeModel.dart';

class TemplateCard extends StatelessWidget {
  const TemplateCard({
    Key key,
    @required this.theme,
    @required this.index,
    @required this.listCard,
  }) : super(key: key);

  final ThemeModel theme;
  final int index;
  final List<CardModel> listCard;

 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: listCard[index].isFaceUp
          ? Text(theme.emojis[index], style: TextStyle(fontSize: 50),)
          : RotationTransition(turns: AlwaysStoppedAnimation(320 / 360), 
            child: Text("Memotex", style: TextStyle(color: Colors.white)),
            
            )
          )
      ,
      padding: EdgeInsets.all(5),
      height: 130,
      width: 90,
      decoration: listCard[index].isFaceUp 
          ? BoxDecoration(
              color: Colors.white,
              border: Border.all(
              color: theme.color,
              width: 4,
              ),
              borderRadius: BorderRadius.circular(15),
          )
          : BoxDecoration(
            color: theme.color,
            border: Border.all(
              color: theme.color,
              width: 4,
            ),
        borderRadius: BorderRadius.circular(15),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, 5),
            blurRadius: 5
          )
        ]
      ),
    );
  }
}