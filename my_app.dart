import 'package:financy_app/widgets/home.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{

  final Color mainColor = Color(0xFF2531EC);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Financy",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: mainColor,
      ),
      home: new Home(),
    );
  }
}