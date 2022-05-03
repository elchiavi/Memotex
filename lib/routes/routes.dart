import 'package:flutter/material.dart';
import 'package:memotex/screens/memotexGame.dart';
import 'package:memotex/screens/ranking.dart';
import 'package:memotex/screens/rankingAnimals.dart';
import 'package:memotex/screens/rankingFaces.dart';
import 'package:memotex/screens/rankingFlags.dart';
import 'package:memotex/screens/rankingVehicles.dart';
import 'package:memotex/screens/selectTheme.dart';




final Map<String, Widget Function(BuildContext)> appRoutes = {

  'selectTheme': ( _ ) => SelectTheme(),
  'memotexGame': ( _ ) => MemotexGame(),
  'ranking': ( _ ) => Ranking(),
  'rankingAnimals': ( _ ) => RankingAnimals(),
  'rankingFaces': ( _ ) => RankingFaces(),
  'rankingFlags': ( _ ) => RankingFlags(),
  'rankingVehicles': ( _ ) => RankingVehicles(),

};