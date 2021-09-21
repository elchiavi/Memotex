import 'package:flutter/material.dart';
import 'package:memotex/screens/memotexGame.dart';
import 'package:memotex/screens/selectTheme.dart';




final Map<String, Widget Function(BuildContext)> appRoutes = {

  'selectTheme': ( _ ) => SelectTheme(),
  'memotexGame': ( _ ) => MemotexGame(),

};