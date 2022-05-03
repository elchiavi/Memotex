import 'package:flutter/material.dart';

class IndexCardProvider extends ChangeNotifier {

  int _indexOfFaceUpCard = 99;
  int _matchedUpCount = 0;

  int get indexOfFaceUpCard {
    return this._indexOfFaceUpCard;
  }

  int get matchedUpCount {
    return this._matchedUpCount;
  }

  set indexOfFaceUpCard( int i) {
    this._indexOfFaceUpCard = i;
    notifyListeners();
  }

  set matchedUpCount(int i) {
    this._matchedUpCount = i;
    notifyListeners(); 
  }

}