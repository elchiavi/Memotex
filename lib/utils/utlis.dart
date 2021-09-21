import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void alertDialog(BuildContext context, String mensaje) {
  
  if ( Platform.isAndroid) {
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: Text('¡Juego Finalizado!') ,
          content: Text(mensaje),
          actions: <Widget> [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                        primary: Colors.indigo, // background
                        onPrimary: Colors.white, // foreground
              ),
              onPressed: () => Navigator.pushNamedAndRemoveUntil(context, 'selectTheme', (route) => false), 
              child: Text('Juegar de nuevo'))
          ],
        );
      });
  } else {
    showCupertinoDialog(
        context: context, 
        builder: ( _ ) {
          return CupertinoAlertDialog(
            title: Text('¡Juego Finalizado!') ,
            content: Text(mensaje),
            actions: <Widget> [
              CupertinoDialogAction(
                isDefaultAction: true,
                child: Text('Juegar de nuevo'),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(context, 'selectTheme', (route) => false), 
              ),
            ],
          );
        }
      );
  }
}