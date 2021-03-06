import 'package:flutter/material.dart';
import 'package:memotex/providers/indexCard.dart';
import 'package:memotex/providers/uiProvider.dart';
import 'package:memotex/routes/routes.dart';
import 'package:provider/provider.dart';

import 'models/itemRankingModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: ( _ ) => new IndexCardProvider() ),
        ChangeNotifierProvider(create: (_) => new UiProvider()),
        ChangeNotifierProvider(create: (_) => new ItemRankingModel()),
      ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat App',
        initialRoute: 'selectTheme',
        routes: appRoutes,
      ),
    );
  }
}