import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget{
  final String foto;

  LogoWidget(this.foto): super();

  @override
  Widget build(BuildContext context){
    return new Center(
      child: 
      Column(children: <Widget>[
        Image.asset(foto),
      ]),
      );
  }
}