import 'package:flutter/material.dart';

class ItemRankingModel with ChangeNotifier {

  bool _seleccionado = true;
  String _title = 'Animales';

  String get title => this._title;

  set title( String title) {
    this._title = title;
    notifyListeners();
  }

  bool get seleccionado => this._seleccionado;

  set seleccionado( bool seleccionado) {
    this._seleccionado = seleccionado;
    notifyListeners();
  }

}