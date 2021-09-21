import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:memotex/models/cardModel.dart';
import 'package:memotex/models/themeModel.dart';
import 'package:memotex/providers/indexCard.dart';
import 'package:memotex/widgets/templateCard.dart';
import 'package:memotex/utils/utlis.dart';

class MemotexCard extends StatefulWidget {
  const MemotexCard({
    Key key,
    @required this.theme,
    @required this.index,
    @required this.listCard,
    @required this.now
  }) : super(key: key);

  final ThemeModel theme;
  final int index;
  final List<CardModel> listCard;
  final DateTime now;

  @override
  _MemotexCardState createState() => _MemotexCardState();
}

class _MemotexCardState extends State<MemotexCard> {
  @override
  Widget build(BuildContext context) {
    final indexProvider = Provider.of<IndexCardProvider>(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (indexProvider.indexOfFaceUpCard != 99 && widget.listCard[indexProvider.indexOfFaceUpCard].isFaceUp && !widget.listCard[widget.index].isFaceUp){
            widget.listCard[widget.index].isFaceUp = true;
            if (widget.listCard[widget.index].content == widget.listCard[indexProvider.indexOfFaceUpCard].content && widget.index != indexProvider.indexOfFaceUpCard) {
              new Future.delayed(const Duration(milliseconds: 300), () {
                widget.listCard[widget.index].isMatched = true;
                widget.listCard[indexProvider.indexOfFaceUpCard].isMatched = true;
                indexProvider.indexOfFaceUpCard = 99;
                indexProvider.matchedUpCount = indexProvider.matchedUpCount + 2;
                if (indexProvider.matchedUpCount == widget.listCard.length) {
                  indexProvider.matchedUpCount = 0;
                  final gameTime = DateTime.now().difference(widget.now);
                  alertDialog(context, "Tu tiempo fue: " + gameTime.inSeconds.toString() + " segundos."); 
                  
              }});           
            } else {
              new Future.delayed(const Duration(milliseconds: 100), () {
              for (var item in widget.listCard) {
                if (!item.isMatched) {
                  item.isFaceUp = false;
                }                                
              }
              });
            }            
          } else {
            if (!widget.listCard[widget.index].isFaceUp && widget.index != indexProvider.indexOfFaceUpCard){
              widget.listCard[widget.index].isFaceUp = true;
              
            } else if (widget.listCard[widget.index].isFaceUp && widget.index != indexProvider.indexOfFaceUpCard){
              widget.listCard[widget.index].isFaceUp = false;
            }
            indexProvider.indexOfFaceUpCard = widget.index; 
          }          
        });
      },
      child: widget.listCard[widget.index].isFaceUp && widget.listCard[widget.index].isMatched 
      ? Container()
      : TemplateCard(theme: widget.theme, index: widget.index, listCard: widget.listCard),
    );
  }
}