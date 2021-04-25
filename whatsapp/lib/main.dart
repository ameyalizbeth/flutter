import 'package:flutter/material.dart';

import 'package:whatsapp/whatsapphome.dart';

void main()=>runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
        title:"Whatsapp",
        theme: new ThemeData(
          primaryColor:Colors.green[900],
          accentColor: Colors.blueAccent[400],
        ),
        home: new WhatsappHome(),
    );
  }
}