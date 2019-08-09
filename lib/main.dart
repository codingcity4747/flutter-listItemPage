import 'package:flutter/material.dart';
import 'itemRoute.dart';
void main(){
  runApp(MyListApp());
}


class MyListApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: ItemRoute(),
    );
  }
}