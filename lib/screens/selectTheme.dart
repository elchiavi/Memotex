import 'dart:math';
import 'package:flutter/material.dart';

import 'package:memotex/models/themeModel.dart';

class SelectTheme extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    List<ThemeModel> themes = [
      ThemeModel(name: "Animales", emojis: ["🦆","🦑","🦈","🐫","🦚","🦅","🐒","🦇","🕷","🦂","🐡","🐊","🦆","🦑","🦈","🐫","🦚","🦅","🐒","🦇","🕷","🦂","🐡","🐊"], numbersOfPairs: 12, id: 1, color: Colors.red),
      ThemeModel(name: "Banderas", emojis: ["🇬🇷","🏴󠁧󠁢󠁷󠁬󠁳󠁿","🇲🇦","🇦🇷","🇨🇦","🇿🇦","🇮🇱","🇧🇷","🇺🇸","🇪🇸","🇬🇷","🏴󠁧󠁢󠁷󠁬󠁳󠁿","🇲🇦","🇦🇷","🇨🇦","🇿🇦","🇮🇱","🇧🇷","🇺🇸","🇪🇸"], numbersOfPairs: 10, id: 2, color: Colors.blue),
      ThemeModel(name: "Caras", emojis: ["🤬","🤯","🥶","😱","🥺","🤮","🤒","🥴","🤪","🥳","😴","🤤","🤕","🤬","🤯","🥶","😱","🥺","🤮","🤒","🥴","🤪","🥳","😴","🤤","🤕"], numbersOfPairs: 13, id: 3, color: Colors.orange),      
      ThemeModel(name: "Frutas", emojis: ["🍏","🍎","🍊","🍋","🍌","🥝","🍇","🍐","🍓","🍒","🍉","🍏","🍎","🍊","🍋","🍌","🥝","🍇","🍐","🍓","🍒","🍉"], numbersOfPairs: 11, id: 4, color: Colors.green),      
      ThemeModel(name: "Vehículos", emojis: ["🚗","🏎","🚛","🚜","🚲","🛵","🏍","🚂","🛸","🚀","🚁","⛵️","🛶","🚤","🚗","🏎","🚛","🚜","🚲","🛵","🏍","🚂","🛸","🚀","🚁","⛵️","🛶","🚤"], numbersOfPairs: 14, id: 5, color: Colors.indigo)
    ];
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Memotex",style: TextStyle(fontSize: 25)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(
              icon: Icon(Icons.add, size: 25.0),
              onPressed: () {}
          ),
        ],
      ),
      body: ListView.builder(
              itemCount: themes.length,
              itemBuilder: (BuildContext context, int i) => _rowList(themes[i], context)
            )
    );
  }

  _rowList(ThemeModel theme, BuildContext context) {

    Random random = new Random();
    int randomNumber = random.nextInt(theme.emojis.length);

    return ListTile(
      title: Text(theme.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold )),
      subtitle: Text("Pares de Cartas: " + theme.numbersOfPairs.toString()),
      leading: Text(theme.emojis[randomNumber], style: TextStyle(fontSize: 40),),
      trailing: Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () {
        Navigator.pushReplacementNamed(context, 'memotexGame', arguments: theme);
      },
    );

  }
}