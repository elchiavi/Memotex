import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      backgroundColor: Colors.deepPurpleAccent,
      valueColor: new AlwaysStoppedAnimation<Color>(Colors.deepPurple),
    );
  }
}