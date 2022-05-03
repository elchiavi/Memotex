import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {

  final String title;

  const SectionTitle({
    @required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(left: 20 / 4) ,
            child: Text(this.title, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold) ,),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only( right: 20 / 4),
              height: 7,
              color: Colors.deepPurpleAccent.withOpacity(0.2),
            ),
          )

        ],
      ),
    );
  }
}